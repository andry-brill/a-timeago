import 'package:flutter/widgets.dart';

import 'enums.dart';
import 'formatter.dart';
import 'locale_config.dart';
import 'locale_functions.dart';
import 'provider.dart';
import 'scheduler.dart';
import 'time_ago_step.dart';
import 'time_ago_update.dart';

typedef TimeAgoWidgetBuilder = Widget Function(
  BuildContext context,
  String value,
);

typedef TimeAgoResultResolver = TimeAgoResult Function(BuildContext context);
typedef TimeAgoResultBuilder = Widget Function(
  BuildContext context,
  TimeAgoResult result,
);

/// Evaluates a time-ago result and rebuilds at its requested update times.
///
/// The nearest [TimeAgoProvider] supplies the shared scheduler. Without a
/// provider, the renderer owns a scheduler for its own subscription. A
/// [TimeAgoUpdateNever] result disconnects the active subscription.
class TimeAgoRenderer extends StatefulWidget {
  const TimeAgoRenderer({
    super.key,
    required this.timeAgo,
    required this.builder,
  });

  /// Produces the current result whenever the renderer is evaluated.
  final TimeAgoResultResolver timeAgo;

  /// Builds a widget from the complete formatted result.
  final TimeAgoResultBuilder builder;

  @override
  State<TimeAgoRenderer> createState() => _TimeAgoRendererState();
}

class _TimeAgoRendererState extends State<TimeAgoRenderer> {
  TimeAgoScheduler? _ownedScheduler;
  TimeAgoScheduler? _scheduler;
  TimeAgoSubscription? _subscription;

  @override
  Widget build(BuildContext context) {
    final result = widget.timeAgo(context);
    _schedule(context, result.nextUpdate);
    return widget.builder(context, result);
  }

  @override
  void dispose() {
    _disconnect();
    _ownedScheduler?.dispose();
    super.dispose();
  }

  void _schedule(BuildContext context, TimeAgoUpdate update) {
    if (update is TimeAgoUpdateNever) {
      _disconnect();
      return;
    }
    final nextScheduler = TimeAgoProvider.maybeOf(context)?.scheduler ??
        (_ownedScheduler ??= TimeAgoScheduler());
    if (!identical(_scheduler, nextScheduler)) {
      _disconnect();
      _scheduler = nextScheduler;
      _subscription = nextScheduler.subscribe(_handleUpdate);
    }
    _subscription!.schedule(update);
  }

  void _disconnect() {
    _subscription?.dispose();
    _subscription = null;
    _scheduler = null;
  }

  void _handleUpdate() {
    if (mounted) {
      setState(() {});
    }
  }
}

/// Resolves time-ago configuration and delegates live updates to
/// [TimeAgoRenderer].
class TimeAgoBuilder extends StatelessWidget {
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
  Widget build(BuildContext context) {
    _validateModeArguments();
    if (locale == null && TimeAgoProvider.maybeOf(context) == null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('TimeAgoBuilder has no locale.'),
        ErrorDescription(
          'Pass locale explicitly or add TimeAgoProvider above the widget.',
        ),
      ]);
    }
    final canUpdate = duration == null && autoUpdate && to == null;
    return TimeAgoRenderer(
      timeAgo: (context) {
        final result = _resolveResult(context);
        return canUpdate ? result : _withoutUpdates(result);
      },
      builder: (context, result) => builder(context, result.text),
    );
  }

  TimeAgoResult _resolveResult(BuildContext context) {
    if (duration case final duration?) {
      return multi
          ? context.durationAgoMultiResult(
              duration,
              locale: locale,
              format: format,
              directional: directional,
              future: future,
              units: units,
              cutoffStep: cutoffStep,
              fallbackFunctions: fallbackFunctions,
            )
          : context.durationAgoResult(
              duration,
              locale: locale,
              format: format,
              directional: directional,
              future: future,
              steps: steps,
              cutoffStep: cutoffStep,
              fallbackFunctions: fallbackFunctions,
            );
    }
    return multi
        ? context.timeAgoMultiResult(
            time!,
            to: to,
            locale: locale,
            format: format,
            directional: directional,
            future: future,
            units: units,
            cutoffStep: cutoffStep,
            fallbackFunctions: fallbackFunctions,
          )
        : context.timeAgoResult(
            time!,
            to: to,
            locale: locale,
            format: format,
            directional: directional,
            future: future,
            steps: steps,
            cutoffStep: cutoffStep,
            fallbackFunctions: fallbackFunctions,
          );
  }

  void _validateModeArguments() {
    if (multi && steps != null) {
      throw ArgumentError(
        'steps is only valid when multi is false. Use units to configure '
        'multi-unit decomposition.',
      );
    }
    if (!multi && units != null) {
      throw ArgumentError(
        'units is only valid when multi is true. Use steps to configure '
        'single-unit thresholds.',
      );
    }
  }
}

TimeAgoResult _withoutUpdates(TimeAgoResult result) {
  if (result.nextUpdate is TimeAgoUpdateNever) {
    return result;
  }
  return TimeAgoResult(
    result.text,
    const TimeAgoUpdate.never(),
    result.values,
  );
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
