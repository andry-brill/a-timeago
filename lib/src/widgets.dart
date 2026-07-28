import 'package:flutter/widgets.dart';

import 'enums.dart';
import 'formatter.dart';
import 'locale_config.dart';
import 'locale_functions.dart';
import 'provider.dart';
import 'scheduler.dart';
import 'time_ago_step.dart';

typedef TimeAgoWidgetBuilder = Widget Function(
  BuildContext context,
  String value,
);

/// Rebuilds [builder] only when its formatted value may change.
class TimeAgoBuilder extends StatefulWidget {
  const TimeAgoBuilder({
    super.key,
    required DateTime this.time,
    this.to,
    this.locale,
    this.format,
    this.directional,
    this.future,
    this.multi = false,
    this.steps,
    this.units,
    this.cutoffStep,
    this.fallbackFunctions,
    this.autoUpdate = true,
    required this.builder,
  }) : duration = null;

  const TimeAgoBuilder.duration({
    super.key,
    required Duration this.duration,
    this.locale,
    this.format,
    this.directional,
    this.future,
    this.multi = false,
    this.steps,
    this.units,
    this.cutoffStep,
    this.fallbackFunctions,
    required this.builder,
  })  : time = null,
        to = null,
        autoUpdate = false;

  final DateTime? time;
  final DateTime? to;
  final Duration? duration;
  final LocaleConfig? locale;
  final TimeAgoFormat? format;
  final bool? directional;

  /// Overrides the provider's future-grammar setting when non-null.
  final bool? future;
  final bool multi;
  final List<TimeAgoStep>? steps;
  final List<TimeAgoUnit>? units;

  /// Overrides the provider's standalone cutoff when non-null.
  final TimeAgoStep? cutoffStep;

  /// Overrides the provider's fallback locale operations when non-null.
  final TimeAgoLocaleFunctions? fallbackFunctions;
  final bool autoUpdate;
  final TimeAgoWidgetBuilder builder;

  @override
  State<TimeAgoBuilder> createState() => _TimeAgoBuilderState();
}

class _TimeAgoBuilderState extends State<TimeAgoBuilder> {
  TimeAgoScheduler? _ownedScheduler;
  TimeAgoScheduler? _scheduler;
  TimeAgoSubscription? _subscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _connectScheduler();
  }

  @override
  void didUpdateWidget(TimeAgoBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.autoUpdate != oldWidget.autoUpdate) {
      _connectScheduler();
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = TimeAgoProvider.maybeOf(context);
    final locale = widget.locale ?? provider?.locale;
    if (locale == null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('TimeAgoBuilder has no locale.'),
        ErrorDescription(
          'Pass locale explicitly or add TimeAgoProvider above the widget.',
        ),
      ]);
    }
    final format = widget.format ?? provider?.format ?? TimeAgoFormat.long;
    final directional = widget.directional ??
        provider?.directional ??
        format != TimeAgoFormat.mini;
    final future = widget.future ?? provider?.future ?? false;
    _validateModeArguments();
    final steps = widget.steps ?? provider?.steps;
    final units = widget.units ?? provider?.multiUnits;
    final cutoffStep = widget.cutoffStep ?? provider?.cutoffStep;
    final fallbackFunctions = widget.fallbackFunctions ??
        provider?.fallbackFunctions ??
        englishTimeAgoLocaleFunctions;

    final TimeAgoResult result;
    if (widget.duration case final duration?) {
      result = widget.multi
          ? formatMultiDurationAgoResult(
              duration,
              locale: locale,
              format: format,
              directional: directional,
              future: future,
              units: units,
              cutoffStep: cutoffStep,
              fallbackFunctions: fallbackFunctions,
            )
          : formatSingleDurationAgoResult(
              duration,
              locale: locale,
              format: format,
              directional: directional,
              future: future,
              steps: steps,
              cutoffStep: cutoffStep,
              fallbackFunctions: fallbackFunctions,
            );
    } else {
      final to = widget.to ?? _scheduler?.now ?? DateTime.now();
      final canUpdate = widget.autoUpdate && widget.to == null;
      result = widget.multi
          ? formatMultiTimeAgoResult(
              widget.time!,
              to: to,
              locale: locale,
              format: format,
              directional: directional,
              future: future,
              units: units,
              cutoffStep: cutoffStep,
              fallbackFunctions: fallbackFunctions,
              canUpdate: canUpdate,
            )
          : formatSingleTimeAgoResult(
              widget.time!,
              to: to,
              locale: locale,
              format: format,
              directional: directional,
              future: future,
              steps: steps,
              cutoffStep: cutoffStep,
              fallbackFunctions: fallbackFunctions,
              canUpdate: canUpdate,
            );
    }
    _subscription?.schedule(result.nextUpdate);
    return widget.builder(context, result.text);
  }

  void _validateModeArguments() {
    if (widget.multi && widget.steps != null) {
      throw ArgumentError(
        'steps is only valid when multi is false. Use units to configure '
        'multi-unit decomposition.',
      );
    }
    if (!widget.multi && widget.units != null) {
      throw ArgumentError(
        'units is only valid when multi is true. Use steps to configure '
        'single-unit thresholds.',
      );
    }
  }

  @override
  void dispose() {
    _subscription?.dispose();
    _ownedScheduler?.dispose();
    super.dispose();
  }

  void _connectScheduler() {
    final provider = TimeAgoProvider.maybeOf(context);
    final nextScheduler = widget.autoUpdate
        ? provider?.scheduler ?? (_ownedScheduler ??= TimeAgoScheduler())
        : null;
    if (identical(_scheduler, nextScheduler)) {
      return;
    }
    _subscription?.dispose();
    _scheduler = nextScheduler;
    _subscription = nextScheduler?.subscribe(_handleUpdate);
  }

  void _handleUpdate() {
    if (mounted) {
      setState(() {});
    }
  }
}

/// A [Text] widget backed by [TimeAgoBuilder].
class TimeAgoText extends StatelessWidget {
  const TimeAgoText({
    super.key,
    required DateTime this.time,
    this.to,
    this.locale,
    this.format,
    this.directional,
    this.future,
    this.multi = false,
    this.steps,
    this.units,
    this.cutoffStep,
    this.fallbackFunctions,
    this.autoUpdate = true,
    this.style,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.maxLines,
  }) : duration = null;

  const TimeAgoText.duration({
    super.key,
    required Duration this.duration,
    this.locale,
    this.format,
    this.directional,
    this.future,
    this.multi = false,
    this.steps,
    this.units,
    this.cutoffStep,
    this.fallbackFunctions,
    this.style,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.maxLines,
  })  : time = null,
        to = null,
        autoUpdate = false;

  final DateTime? time;
  final DateTime? to;
  final Duration? duration;
  final LocaleConfig? locale;
  final TimeAgoFormat? format;
  final bool? directional;

  /// Overrides the provider's future-grammar setting when non-null.
  final bool? future;
  final bool multi;
  final List<TimeAgoStep>? steps;
  final List<TimeAgoUnit>? units;

  /// Overrides the provider's standalone cutoff when non-null.
  final TimeAgoStep? cutoffStep;

  /// Overrides the provider's fallback locale operations when non-null.
  final TimeAgoLocaleFunctions? fallbackFunctions;
  final bool autoUpdate;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    Widget builder(BuildContext context, String value) => Text(
          value,
          style: style,
          textAlign: textAlign,
          textDirection: textDirection,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
        );
    if (duration case final duration?) {
      return TimeAgoBuilder.duration(
        duration: duration,
        locale: locale,
        format: format,
        directional: directional,
        future: future,
        multi: multi,
        steps: steps,
        units: units,
        cutoffStep: cutoffStep,
        fallbackFunctions: fallbackFunctions,
        builder: builder,
      );
    }
    return TimeAgoBuilder(
      time: time!,
      to: to,
      locale: locale,
      format: format,
      directional: directional,
      future: future,
      multi: multi,
      steps: steps,
      units: units,
      cutoffStep: cutoffStep,
      fallbackFunctions: fallbackFunctions,
      autoUpdate: autoUpdate,
      builder: builder,
    );
  }
}
