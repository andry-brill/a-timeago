import 'enums.dart';
import 'formatting/formatter_validation.dart';
import 'formatting/step_arithmetic.dart';
import 'formatting/time_ago_rendering.dart';
import 'locale_config.dart';
import 'locale_functions.dart';
import 'steps.dart';
import 'temporal/cutoff_resolution.dart';
import 'temporal/multi_decomposition.dart';
import 'temporal/temporal_basis.dart';
import 'temporal/update_scheduling.dart';
import 'time_ago_context.dart';
import 'time_ago_step.dart';
import 'time_ago_update.dart';

/// Formats [time] relative to [to], or relative to the current clock.
///
/// Set [future] to force future grammar, including for an exact-zero
/// difference. An exceeded [cutoffStep] replaces the normal result with its
/// capped amount. [fallbackFunctions] are used per operation only when the
/// locale's Intl-backed functions are unavailable.
String timeAgo(
  DateTime time, {
  DateTime? to,
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoStep>? steps,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return formatSingleTimeAgoResult(
    time,
    to: to ?? DateTime.now(),
    locale: locale,
    format: format,
    directional: directional ?? format != TimeAgoFormat.mini,
    future: future,
    steps: steps,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
    canUpdate: false,
  ).text;
}

/// Formats [time] as a localized list of relative-time components.
String timeAgoMulti(
  DateTime time, {
  DateTime? to,
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoUnit>? units,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return formatMultiTimeAgoResult(
    time,
    to: to ?? DateTime.now(),
    locale: locale,
    format: format,
    directional: directional ?? format != TimeAgoFormat.mini,
    future: future,
    units: units,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
    canUpdate: false,
  ).text;
}

/// Formats a signed duration. Positive durations are in the past and negative
/// durations are in the future.
///
/// Set [future] to force future grammar regardless of the duration's sign.
/// An exceeded [cutoffStep] replaces the normal result with its capped amount.
/// [fallbackFunctions] are used per operation only when the locale's
/// Intl-backed functions are unavailable.
String durationAgo(
  Duration duration, {
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoStep>? steps,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return durationAgoResult(
    duration,
    locale: locale,
    format: format,
    directional: directional,
    future: future,
    steps: steps,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
  ).text;
}

/// Formats a signed duration as a localized list of components.
String durationAgoMulti(
  Duration duration, {
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoUnit>? units,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return durationAgoMultiResult(
    duration,
    locale: locale,
    format: format,
    directional: directional,
    future: future,
    units: units,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
  ).text;
}

/// Formatted text together with the instruction for its next evaluation.
///
/// Date-based result functions return a scheduling instruction for consumers
/// such as live widgets. Duration-based results are stable and return
/// [TimeAgoUpdate.never].
class TimeAgoResult {
  const TimeAgoResult(this.text, this.nextUpdate);

  final String text;
  final TimeAgoUpdate nextUpdate;
}

/// Formats one selected step and returns its text and next update deadline.
TimeAgoResult timeAgoResult(
  DateTime time, {
  DateTime? to,
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoStep>? steps,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return formatSingleTimeAgoResult(
    time,
    to: to ?? DateTime.now(),
    locale: locale,
    format: format,
    directional: directional ?? format != TimeAgoFormat.mini,
    future: future,
    steps: steps,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
    canUpdate: true,
  );
}

/// Decomposes [time] into multiple units and returns the text and next update.
TimeAgoResult timeAgoMultiResult(
  DateTime time, {
  DateTime? to,
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoUnit>? units,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return formatMultiTimeAgoResult(
    time,
    to: to ?? DateTime.now(),
    locale: locale,
    format: format,
    directional: directional ?? format != TimeAgoFormat.mini,
    future: future,
    units: units,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
    canUpdate: true,
  );
}

/// Formats one selected duration step and returns text with a stable deadline.
TimeAgoResult durationAgoResult(
  Duration duration, {
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoStep>? steps,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return formatSingleDurationAgoResult(
    duration,
    locale: locale,
    format: format,
    directional: directional ?? format != TimeAgoFormat.mini,
    future: future,
    steps: steps,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
  );
}

/// Decomposes a duration into multiple units and returns its stable result.
TimeAgoResult durationAgoMultiResult(
  Duration duration, {
  required LocaleConfig locale,
  TimeAgoFormat format = TimeAgoFormat.long,
  bool? directional,
  bool future = false,
  List<TimeAgoUnit>? units,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return formatMultiDurationAgoResult(
    duration,
    locale: locale,
    format: format,
    directional: directional ?? format != TimeAgoFormat.mini,
    future: future,
    units: units,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
  );
}

/// Internal single-step entry point used by live widgets.
TimeAgoResult formatSingleTimeAgoResult(
  DateTime time, {
  required DateTime to,
  required LocaleConfig locale,
  required TimeAgoFormat format,
  required bool directional,
  bool future = false,
  List<TimeAgoStep>? steps,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
  required bool canUpdate,
}) {
  return _formatDateTimeResult(
    time,
    to,
    _SingleMode(steps),
    locale: locale,
    format: format,
    directional: directional,
    future: future,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
    canUpdate: canUpdate,
  );
}

/// Internal multi-unit entry point used by live widgets.
TimeAgoResult formatMultiTimeAgoResult(
  DateTime time, {
  required DateTime to,
  required LocaleConfig locale,
  required TimeAgoFormat format,
  required bool directional,
  bool future = false,
  List<TimeAgoUnit>? units,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
  required bool canUpdate,
}) {
  return _formatDateTimeResult(
    time,
    to,
    _MultiMode(units),
    locale: locale,
    format: format,
    directional: directional,
    future: future,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
    canUpdate: canUpdate,
  );
}

/// Internal single-step duration entry point used by live widgets.
TimeAgoResult formatSingleDurationAgoResult(
  Duration duration, {
  required LocaleConfig locale,
  required TimeAgoFormat format,
  required bool directional,
  bool future = false,
  List<TimeAgoStep>? steps,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return _formatDurationResult(
    duration,
    _SingleMode(steps),
    locale: locale,
    format: format,
    directional: directional,
    future: future,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
  );
}

/// Internal multi-unit duration entry point used by live widgets.
TimeAgoResult formatMultiDurationAgoResult(
  Duration duration, {
  required LocaleConfig locale,
  required TimeAgoFormat format,
  required bool directional,
  bool future = false,
  List<TimeAgoUnit>? units,
  TimeAgoStep? cutoffStep,
  TimeAgoLocaleFunctions fallbackFunctions = englishTimeAgoLocaleFunctions,
}) {
  return _formatDurationResult(
    duration,
    _MultiMode(units),
    locale: locale,
    format: format,
    directional: directional,
    future: future,
    cutoffStep: cutoffStep,
    fallbackFunctions: fallbackFunctions,
  );
}

TimeAgoResult _formatDateTimeResult(
  DateTime time,
  DateTime to,
  _FormatMode mode, {
  required LocaleConfig locale,
  required TimeAgoFormat format,
  required bool directional,
  required bool future,
  required TimeAgoStep? cutoffStep,
  required TimeAgoLocaleFunctions fallbackFunctions,
  required bool canUpdate,
}) {
  return _formatResult(
    _FormatRequest(
      basis: DateTimeBasis(time, to, canUpdate: canUpdate),
      mode: mode,
      configuration: _FormatConfiguration(
        locale: locale,
        format: format,
        directional: directional,
        future: future,
        cutoffStep: cutoffStep,
        fallbackFunctions: fallbackFunctions,
      ),
    ),
  );
}

TimeAgoResult _formatDurationResult(
  Duration duration,
  _FormatMode mode, {
  required LocaleConfig locale,
  required TimeAgoFormat format,
  required bool directional,
  required bool future,
  required TimeAgoStep? cutoffStep,
  required TimeAgoLocaleFunctions fallbackFunctions,
}) {
  return _formatResult(
    _FormatRequest(
      basis: DurationBasis(duration),
      mode: mode,
      configuration: _FormatConfiguration(
        locale: locale,
        format: format,
        directional: directional,
        future: future,
        cutoffStep: cutoffStep,
        fallbackFunctions: fallbackFunctions,
      ),
    ),
  );
}

TimeAgoResult _formatResult(_FormatRequest request) {
  final basis = request.basis;
  final configuration = request.configuration;
  validateStandaloneCutoff(configuration.cutoffStep);
  final standaloneCutoff = configuration.cutoffStep == null
      ? null
      : resolveCutoff(
          configuration.cutoffStep!,
          basis,
          minimumBoundary: Duration.zero,
          standalone: true,
        );

  return switch (request.mode) {
    _SingleMode(:final steps) => _formatSingleMode(
        request,
        steps,
        standaloneCutoff,
      ),
    _MultiMode(:final units) => _formatMultiMode(
        request,
        units,
        standaloneCutoff,
      ),
  };
}

TimeAgoResult _formatSingleMode(
  _FormatRequest request,
  List<TimeAgoStep> steps,
  ResolvedCutoff? standaloneCutoff,
) {
  validateSteps(steps);
  return _formatSingle(
    request,
    steps,
    standaloneCutoff: standaloneCutoff,
  );
}

TimeAgoResult _formatMultiMode(
  _FormatRequest request,
  List<TimeAgoUnit> units,
  ResolvedCutoff? standaloneCutoff,
) {
  validateMultiUnits(units);
  if (standaloneCutoff?.exceeded ?? false) {
    return _formatCutoff(standaloneCutoff!, request);
  }
  return _formatMulti(
    request,
    units,
    nextCutoffUpdate: standaloneCutoff?.nextTransition,
  );
}

TimeAgoResult _formatSingle(
  _FormatRequest request,
  List<TimeAgoStep> steps, {
  required ResolvedCutoff? standaloneCutoff,
}) {
  final basis = request.basis;
  final duration = basis.duration;
  final absolute = basis.absoluteDuration;
  final thresholds = _resolveThresholds(steps, request);
  final cutoffs = <ResolvedCutoff>[
    if (standaloneCutoff != null) standaloneCutoff,
    ...resolveStepCutoffs(
      steps,
      thresholds,
      basis,
    ),
  ];
  final exceededCutoff = earliestExceededCutoff(cutoffs);
  if (exceededCutoff != null) {
    return _formatCutoff(exceededCutoff, request);
  }
  final nextCutoffUpdate = basis.canUpdate
      ? earliestDuration(
          cutoffs.map((cutoff) => cutoff.nextTransition).whereType<Duration>(),
        )
      : null;

  var selectedIndex = -1;
  for (var index = 0; index < thresholds.length; index++) {
    if (absolute >= thresholds[index]) {
      selectedIndex = index;
    } else {
      break;
    }
  }
  if (selectedIndex < 0) {
    final wait = thresholds.first - absolute;
    return TimeAgoResult(
      '',
      basis.canUpdate
          ? withRequiredUpdate(TimeAgoUpdate.after(wait), nextCutoffUpdate)
          : const TimeAgoUpdate.never(),
    );
  }

  final step = steps[selectedIndex];
  final amount = amountForStep(step, absolute);
  final context = _createStepContext(
    request,
    step,
    amount: amount,
    isCutoff: false,
  );
  final text = renderSelectedStep(step, context);

  if (!basis.canUpdate) {
    return TimeAgoResult(text, const TimeAgoUpdate.never());
  }
  final stepUpdate = timeUntilStepBoundary(
    duration,
    absolute,
    thresholds[selectedIndex],
    selectedIndex + 1 < thresholds.length
        ? thresholds[selectedIndex + 1]
        : null,
  );
  final structuralUpdate = earliestDuration(<Duration>[
    if (stepUpdate != null) stepUpdate,
    if (nextCutoffUpdate != null) nextCutoffUpdate,
  ]);
  final requestedUpdate = step.nextUpdate?.call(context);
  if (requestedUpdate != null) {
    return TimeAgoResult(
      text,
      withRequiredUpdate(requestedUpdate, structuralUpdate),
    );
  }
  if (step is! TimeAgoUnitStep) {
    return TimeAgoResult(
      text,
      withRequiredUpdate(
        const TimeAgoUpdate.unknown(),
        structuralUpdate,
      ),
    );
  }

  final amountUpdate = timeUntilAmountChange(duration, absolute, step);
  final nextUpdate = earliestDuration(<Duration>[
    if (amountUpdate != null) amountUpdate,
    if (structuralUpdate != null) structuralUpdate,
  ]);
  if (nextUpdate == null) {
    return TimeAgoResult(text, const TimeAgoUpdate.never());
  }
  return TimeAgoResult(text, TimeAgoUpdate.after(nextUpdate));
}

List<Duration> _resolveThresholds(
  List<TimeAgoStep> steps,
  _FormatRequest request,
) {
  final basis = request.basis;
  final result = <Duration>[];
  int? previousUnitMicroseconds;
  var previousIsNow = false;
  for (var index = 0; index < steps.length; index++) {
    final step = steps[index];
    Duration inferred(TimeAgoUnit unit) {
      return inferredThreshold(
        unit.microseconds,
        previousUnitMicroseconds,
        previousIsNow: previousIsNow,
        rounding: step.rounding,
      );
    }

    final threshold = step.minTime ??
        step.minTimeResolver?.call(
          TimeAgoMinTimeContext(
            duration: basis.duration,
            absoluteDuration: basis.absoluteDuration,
            time: basis.time,
            to: basis.to,
            rounding: step.rounding,
            inferredMinTimeFor: inferred,
            unitMultiplier: step.unitMultiplier,
            future: request.isFuture,
          ),
        ) ??
        (index == 0
            ? Duration.zero
            : _inferredThresholdForStep(
                step,
                index,
                previousUnitMicroseconds,
                previousIsNow: previousIsNow,
              ));
    if (threshold.isNegative) {
      throw ArgumentError.value(
        threshold,
        'steps[$index].minTime',
        'Step thresholds cannot be negative.',
      );
    }
    result.add(threshold);
    if (step.unit != null) {
      previousUnitMicroseconds = effectiveUnitMicroseconds(step);
      previousIsNow = step.unit == TimeAgoUnit.now;
    }
    if (basis.absoluteDuration < threshold) {
      break;
    }
  }
  return result;
}

Duration _inferredThresholdForStep(
  TimeAgoStep step,
  int index,
  int? previousUnitMicroseconds, {
  required bool previousIsNow,
}) {
  return switch (step) {
    TimeAgoUnitStep() => inferredThreshold(
        effectiveUnitMicroseconds(step)!,
        previousUnitMicroseconds,
        previousIsNow: previousIsNow,
        rounding: step.rounding,
      ),
    TimeAgoCustomStep(:final unit) => unit == null
        ? throw ArgumentError(
            'Custom step at index $index must define minTime or '
            'minTimeResolver.',
          )
        : inferredThreshold(
            effectiveUnitMicroseconds(step)!,
            previousUnitMicroseconds,
            previousIsNow: previousIsNow,
            rounding: step.rounding,
          ),
    TimeAgoCustomUnitStep() => inferredThreshold(
        effectiveUnitMicroseconds(step)!,
        previousUnitMicroseconds,
        previousIsNow: previousIsNow,
        rounding: step.rounding,
      ),
  };
}

TimeAgoResult _formatCutoff(
  ResolvedCutoff cutoff,
  _FormatRequest request,
) {
  final step = cutoff.step;
  final context = _createStepContext(
    request,
    step,
    amount: step.cutoffAmount!,
    isCutoff: true,
  );
  final text = renderSelectedStep(step, context);
  if (!request.basis.canUpdate) {
    return TimeAgoResult(text, const TimeAgoUpdate.never());
  }
  final requestedUpdate = step.nextUpdate?.call(context) ??
      (step is! TimeAgoUnitStep
          ? const TimeAgoUpdate.unknown()
          : const TimeAgoUpdate.never());
  final update = withRequiredUpdate(requestedUpdate, cutoff.nextTransition);
  return TimeAgoResult(text, update);
}

TimeAgoStepContext _createStepContext(
  _FormatRequest request,
  TimeAgoStep step, {
  required int amount,
  required bool isCutoff,
}) {
  final basis = request.basis;
  final configuration = request.configuration;
  return TimeAgoStepContext(
    duration: basis.duration,
    absoluteDuration: basis.absoluteDuration,
    amount: amount,
    unit: step.unit,
    unitMultiplier: step.unitMultiplier,
    format: configuration.format,
    directional: configuration.directional,
    locale: configuration.locale,
    resolvedFunctions: request.resolvedFunctions,
    time: basis.time,
    to: basis.to,
    isCutoff: isCutoff,
    future: request.isFuture,
  );
}

TimeAgoResult _formatMulti(
  _FormatRequest request,
  List<TimeAgoUnit> units, {
  required Duration? nextCutoffUpdate,
}) {
  final basis = request.basis;
  final decomposition = switch (basis) {
    DateTimeBasis() => decomposeMultiDateTime(basis, units),
    DurationBasis() => decomposeMultiDuration(basis, units),
  };
  final configuration = request.configuration;
  final text = renderComponents(
    decomposition.components,
    duration: basis.duration,
    locale: configuration.locale,
    format: configuration.format,
    directional: configuration.directional,
    isFuture: request.isFuture,
    functions: request.resolvedFunctions,
  );
  if (!basis.canUpdate) {
    return TimeAgoResult(text, const TimeAgoUpdate.never());
  }
  final nextUpdate = earliestDuration(<Duration>[
    if (decomposition.nextUpdate != null) decomposition.nextUpdate!,
    if (nextCutoffUpdate != null) nextCutoffUpdate,
  ]);
  return TimeAgoResult(
    text,
    nextUpdate == null
        ? const TimeAgoUpdate.never()
        : TimeAgoUpdate.after(nextUpdate),
  );
}

sealed class _FormatMode {
  const _FormatMode();
}

final class _SingleMode extends _FormatMode {
  _SingleMode(List<TimeAgoStep>? steps)
      : steps = steps ?? TimeAgoSteps.fromMinuteNow;

  final List<TimeAgoStep> steps;
}

final class _MultiMode extends _FormatMode {
  _MultiMode(List<TimeAgoUnit>? units) : units = units ?? TimeAgoUnit.defaults;

  final List<TimeAgoUnit> units;
}

final class _FormatConfiguration {
  const _FormatConfiguration({
    required this.locale,
    required this.format,
    required this.directional,
    required this.future,
    required this.cutoffStep,
    required this.fallbackFunctions,
  });

  final LocaleConfig locale;
  final TimeAgoFormat format;
  final bool directional;
  final bool future;
  final TimeAgoStep? cutoffStep;
  final TimeAgoLocaleFunctions fallbackFunctions;
}

final class _FormatRequest {
  _FormatRequest({
    required this.basis,
    required this.mode,
    required this.configuration,
  })  : isFuture = configuration.future || basis.duration.isNegative,
        resolvedFunctions = resolveLocaleFunctionsWithFallback(
          configuration.locale.functions,
          configuration.fallbackFunctions,
        );

  final TemporalBasis basis;
  final _FormatMode mode;
  final _FormatConfiguration configuration;
  final bool isFuture;
  final TimeAgoLocaleFunctions resolvedFunctions;
}
