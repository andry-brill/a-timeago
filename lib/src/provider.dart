import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'enums.dart';
import 'formatter.dart' as formatter;
import 'formatter.dart' show TimeAgoResult;
import 'locale_config.dart';
import 'locale_functions.dart';
import 'scheduler.dart';
import 'steps.dart';
import 'time_ago_step.dart';

/// Resolved inherited configuration.
class TimeAgoProviderData {
  const TimeAgoProviderData({
    required this.locale,
    required this.format,
    required this.directional,
    required this.steps,
    required this.multiUnits,
    required this.fallbackFunctions,
    required this.scheduler,
    this.cutoffStep,
    this.future,
  });

  final LocaleConfig locale;
  final TimeAgoFormat format;
  final bool? directional;

  /// Whether descendants should force future grammatical forms.
  final bool? future;
  final List<TimeAgoStep> steps;
  final List<TimeAgoUnit> multiUnits;

  /// The inherited standalone cutoff, or null when cutoff is disabled.
  final TimeAgoStep? cutoffStep;
  final TimeAgoLocaleFunctions fallbackFunctions;
  final TimeAgoScheduler scheduler;

  DateTime get now => scheduler.now;
}

/// Supplies nested, non-global defaults and a shared update scheduler.
class TimeAgoProvider extends StatefulWidget {
  const TimeAgoProvider({
    super.key,
    required this.locale,
    this.format = TimeAgoFormat.long,
    this.directional,
    this.future,
    this.steps = TimeAgoSteps.fromMinuteNow,
    this.multiUnits = TimeAgoUnit.defaults,
    this.cutoffStep,
    this.fallbackFunctions,
    this.scheduler,
    this.frozenAt,
    this.unknownUpdateInterval = const Duration(minutes: 1),
    required this.child,
  });

  final LocaleConfig locale;
  final TimeAgoFormat format;
  final bool? directional;

  /// Forces future grammar for descendant extensions and widgets when true.
  final bool? future;
  final List<TimeAgoStep> steps;
  final List<TimeAgoUnit> multiUnits;

  /// The standalone cutoff supplied to descendant formatting calls.
  final TimeAgoStep? cutoffStep;

  /// Non-Intl operations used when this locale's Intl data is unavailable.
  ///
  /// A nested provider inherits its parent's fallback when this is null.
  final TimeAgoLocaleFunctions? fallbackFunctions;
  final TimeAgoScheduler? scheduler;
  final DateTime? frozenAt;
  final Duration unknownUpdateInterval;
  final Widget child;

  static TimeAgoProviderData of(BuildContext context) {
    final result = maybeOf(context);
    if (result == null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No TimeAgoProvider found.'),
        ErrorDescription(
          'Add TimeAgoProvider above this context or pass LocaleConfig '
          'explicitly.',
        ),
      ]);
    }
    return result;
  }

  static TimeAgoProviderData? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_TimeAgoInherited>()
        ?.data;
  }

  @override
  State<TimeAgoProvider> createState() => _TimeAgoProviderState();
}

class _TimeAgoProviderState extends State<TimeAgoProvider> {
  late TimeAgoScheduler _ownedScheduler;

  @override
  void initState() {
    super.initState();
    _ownedScheduler = _createScheduler();
  }

  @override
  void didUpdateWidget(TimeAgoProvider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.unknownUpdateInterval != oldWidget.unknownUpdateInterval) {
      _ownedScheduler.dispose();
      _ownedScheduler = _createScheduler();
    } else {
      _ownedScheduler.setFrozenAt(widget.frozenAt);
    }
    if (widget.scheduler == oldWidget.scheduler &&
        widget.scheduler != null &&
        widget.frozenAt != oldWidget.frozenAt) {
      widget.scheduler!.setFrozenAt(widget.frozenAt);
    }
  }

  @override
  Widget build(BuildContext context) {
    final parent = TimeAgoProvider.maybeOf(context);
    final scheduler = widget.scheduler ??
        (widget.frozenAt == null ? parent?.scheduler : null) ??
        _ownedScheduler;
    if (widget.scheduler != null && widget.frozenAt != null) {
      widget.scheduler!.setFrozenAt(widget.frozenAt);
    }
    return _TimeAgoInherited(
      data: TimeAgoProviderData(
        locale: widget.locale,
        format: widget.format,
        directional: widget.directional,
        future: widget.future,
        steps: widget.steps,
        multiUnits: widget.multiUnits,
        cutoffStep: widget.cutoffStep,
        fallbackFunctions: widget.fallbackFunctions ??
            parent?.fallbackFunctions ??
            englishTimeAgoLocaleFunctions,
        scheduler: scheduler,
      ),
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _ownedScheduler.dispose();
    super.dispose();
  }

  TimeAgoScheduler _createScheduler() {
    return TimeAgoScheduler(
      unknownUpdateInterval: widget.unknownUpdateInterval,
      frozenAt: widget.frozenAt,
    );
  }
}

class _TimeAgoInherited extends InheritedWidget {
  const _TimeAgoInherited({
    required this.data,
    required super.child,
  });

  final TimeAgoProviderData data;

  @override
  bool updateShouldNotify(_TimeAgoInherited oldWidget) {
    return data.locale != oldWidget.data.locale ||
        data.format != oldWidget.data.format ||
        data.directional != oldWidget.data.directional ||
        data.future != oldWidget.data.future ||
        !listEquals(data.steps, oldWidget.data.steps) ||
        !listEquals(data.multiUnits, oldWidget.data.multiUnits) ||
        data.cutoffStep != oldWidget.data.cutoffStep ||
        data.fallbackFunctions != oldWidget.data.fallbackFunctions ||
        data.scheduler != oldWidget.data.scheduler;
  }
}

/// One-shot formatting that resolves omitted values from [TimeAgoProvider].
extension TimeAgoExtension on BuildContext {
  String timeAgo(
    DateTime time, {
    DateTime? to,
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoStep>? steps,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.timeAgo()',
    );
    return formatter.timeAgo(
      time,
      to: to ?? provider?.now,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      steps: steps ?? provider?.steps,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  String timeAgoMulti(
    DateTime time, {
    DateTime? to,
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoUnit>? units,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.timeAgoMulti()',
    );
    return formatter.timeAgoMulti(
      time,
      to: to ?? provider?.now,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      units: units ?? provider?.multiUnits,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  TimeAgoResult timeAgoResult(
    DateTime time, {
    DateTime? to,
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoStep>? steps,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.timeAgoResult()',
    );
    return formatter.timeAgoResult(
      time,
      to: to ?? provider?.now,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      steps: steps ?? provider?.steps,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  TimeAgoResult timeAgoMultiResult(
    DateTime time, {
    DateTime? to,
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoUnit>? units,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.timeAgoMultiResult()',
    );
    return formatter.timeAgoMultiResult(
      time,
      to: to ?? provider?.now,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      units: units ?? provider?.multiUnits,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  String durationAgo(
    Duration duration, {
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoStep>? steps,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.durationAgo()',
    );
    return formatter.durationAgo(
      duration,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      steps: steps ?? provider?.steps,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  String durationAgoMulti(
    Duration duration, {
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoUnit>? units,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.durationAgoMulti()',
    );
    return formatter.durationAgoMulti(
      duration,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      units: units ?? provider?.multiUnits,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  TimeAgoResult durationAgoResult(
    Duration duration, {
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoStep>? steps,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.durationAgoResult()',
    );
    return formatter.durationAgoResult(
      duration,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      steps: steps ?? provider?.steps,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  TimeAgoResult durationAgoMultiResult(
    Duration duration, {
    LocaleConfig? locale,
    TimeAgoFormat? format,
    bool? directional,
    bool? future,
    List<TimeAgoUnit>? units,
    TimeAgoStep? cutoffStep,
    TimeAgoLocaleFunctions? fallbackFunctions,
  }) {
    final (provider, resolvedLocale) = _resolveConfiguration(
      locale,
      'context.durationAgoMultiResult()',
    );
    return formatter.durationAgoMultiResult(
      duration,
      locale: resolvedLocale,
      format: format ?? provider?.format ?? TimeAgoFormat.long,
      directional: directional ?? provider?.directional,
      future: future ?? provider?.future ?? false,
      units: units ?? provider?.multiUnits,
      cutoffStep: cutoffStep ?? provider?.cutoffStep,
      fallbackFunctions: fallbackFunctions ??
          provider?.fallbackFunctions ??
          englishTimeAgoLocaleFunctions,
    );
  }

  (TimeAgoProviderData?, LocaleConfig) _resolveConfiguration(
    LocaleConfig? locale,
    String caller,
  ) {
    final provider = TimeAgoProvider.maybeOf(this);
    final resolvedLocale = locale ?? provider?.locale;
    if (resolvedLocale == null) {
      throw FlutterError(
        '$caller needs a locale argument or a TimeAgoProvider.',
      );
    }
    return (provider, resolvedLocale);
  }
}
