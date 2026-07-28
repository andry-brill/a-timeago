import 'enums.dart';
import 'time_ago_context.dart';
import 'time_ago_update.dart';

typedef TimeAgoMinTimeResolver = Duration Function(
  TimeAgoMinTimeContext context,
);
typedef TimeAgoStepFormatter = String Function(TimeAgoStepContext context);
typedef TimeAgoNextUpdateResolver = TimeAgoUpdate Function(
  TimeAgoStepContext context,
);

/// Contract for an application- or locale-defined time unit.
///
/// Implementations describe their numeric basis and own their formatting.
/// Use [TimeAgoStep.customUnit] to turn a const implementation into a const
/// step. `TimeAgoCustomUnitTranslation` is the standard label-based
/// implementation for most locales.
abstract interface class TimeAgoCustomUnit {
  /// The built-in numeric unit used for thresholds and amount calculation.
  TimeAgoUnit get unit;

  /// The number of [unit] values represented by one custom unit.
  int get unitMultiplier;

  /// Formats the calculated custom-unit amount.
  String format(TimeAgoStepContext context);
}

/// A threshold and numeric policy in a single-unit formatting step.
///
/// [TimeAgoUnitStep] uses the locale's built-in labels.
/// [TimeAgoCustomStep] delegates its output to a callback, while
/// [TimeAgoCustomUnitStep] delegates to a reusable [TimeAgoCustomUnit].
/// The redirecting factories preserve the compact construction API while the
/// sealed variants enforce their invariants.
sealed class TimeAgoStep {
  const TimeAgoStep._({
    required this.minTime,
    required this.minTimeResolver,
    required this.rounding,
    required this.granularity,
    required this.cutoffAmount,
    required this.nextUpdate,
  });

  const factory TimeAgoStep.unit(
    TimeAgoUnit unit, {
    Duration? minTime,
    TimeAgoMinTimeResolver? minTimeResolver,
    TimeAgoRounding rounding,
    int? granularity,
    int? cutoffAmount,
    TimeAgoNextUpdateResolver? nextUpdate,
  }) = TimeAgoUnitStep;

  const factory TimeAgoStep.custom({
    TimeAgoUnit? unit,
    int unitMultiplier,
    Duration? minTime,
    TimeAgoMinTimeResolver? minTimeResolver,
    TimeAgoRounding rounding,
    int? granularity,
    int? cutoffAmount,
    required TimeAgoStepFormatter formatter,
    TimeAgoNextUpdateResolver? nextUpdate,
  }) = TimeAgoCustomStep;

  /// Creates a const-capable step from a reusable custom-unit definition.
  const factory TimeAgoStep.customUnit(
    TimeAgoCustomUnit customUnit, {
    Duration? minTime,
    TimeAgoMinTimeResolver? minTimeResolver,
    TimeAgoRounding rounding,
    int? granularity,
    int? cutoffAmount,
    TimeAgoNextUpdateResolver? nextUpdate,
  }) = TimeAgoCustomUnitStep;

  /// The unit used for thresholds and amount calculation.
  ///
  /// A custom step may be unitless when it supplies an explicit threshold.
  TimeAgoUnit? get unit;

  /// The number of base [unit] values represented by one formatted unit.
  ///
  /// Unit-backed locale steps always use one. Custom steps can use values such
  /// as two weeks for a fortnight or ten years for a decade.
  int get unitMultiplier;

  /// The minimum absolute interval at which this step becomes eligible.
  ///
  /// This fixed threshold takes precedence over [minTimeResolver] and the
  /// threshold inferred from [unit].
  final Duration? minTime;

  /// Calculates a dynamic minimum absolute interval for this step.
  ///
  /// It is called only when [minTime] is null and takes precedence over the
  /// threshold inferred from [unit]. The context can use the interval's
  /// endpoints and direction for calendar-dependent thresholds.
  final TimeAgoMinTimeResolver? minTimeResolver;

  /// Determines how the interval is converted to a whole numeric amount.
  ///
  /// Rounding also affects an inferred transition from the preceding step.
  /// See [TimeAgoRounding.round] and [TimeAgoRounding.floor].
  final TimeAgoRounding rounding;

  /// Groups the calculated amount into multiples of this positive value.
  ///
  /// Granularity is applied after [unitMultiplier]. For a minute step with
  /// `granularity: 5`, 13 minutes becomes 15 with
  /// [TimeAgoRounding.round], or 10 with [TimeAgoRounding.floor]. A fortnight
  /// step with `unitMultiplier: 2` and `granularity: 5` similarly produces
  /// amounts in five-fortnight increments.
  final int? granularity;

  /// The largest amount rendered by this step before cutoff formatting.
  ///
  /// A cutoff is strict: an interval exactly equal to this amount remains
  /// uncapped. Cutoff-bearing steps must define a numeric [unit].
  final int? cutoffAmount;

  /// The custom formatter, or null for a locale-backed unit step.
  TimeAgoStepFormatter? get formatter;

  /// Determines when a live formatter should evaluate this step again.
  ///
  /// The requested update is combined with mandatory step and cutoff
  /// transitions, so those structural boundaries cannot be skipped. When a
  /// custom step omits this callback, live widgets use unknown-update polling.
  final TimeAgoNextUpdateResolver? nextUpdate;
}

/// A locale-backed step with a required numeric or `now` unit.
final class TimeAgoUnitStep extends TimeAgoStep {
  const TimeAgoUnitStep(
    this.unit, {
    super.minTime,
    super.minTimeResolver,
    super.rounding = TimeAgoRounding.round,
    super.granularity,
    super.cutoffAmount,
    super.nextUpdate,
  }) : super._();

  @override
  final TimeAgoUnit unit;

  @override
  int get unitMultiplier => 1;

  @override
  TimeAgoStepFormatter? get formatter => null;
}

/// A step whose text is produced by a required custom formatter.
///
/// Its [unit] is optional when [minTime] or [minTimeResolver] supplies the
/// selection threshold. Cutoff-enabled custom steps must still have a unit.
final class TimeAgoCustomStep extends TimeAgoStep {
  const TimeAgoCustomStep({
    this.unit,
    this.unitMultiplier = 1,
    super.minTime,
    super.minTimeResolver,
    super.rounding = TimeAgoRounding.round,
    super.granularity,
    super.cutoffAmount,
    required this.formatter,
    super.nextUpdate,
  }) : super._();

  @override
  final TimeAgoUnit? unit;

  @override
  final int unitMultiplier;

  @override
  final TimeAgoStepFormatter formatter;
}

/// A const-capable custom step backed by a reusable unit definition.
///
/// Unlike [TimeAgoCustomStep], this variant stores the formatter together with
/// the unit and multiplier. This allows locale libraries to export const
/// custom steps without top-level formatter wrapper functions.
final class TimeAgoCustomUnitStep extends TimeAgoStep {
  const TimeAgoCustomUnitStep(
    this.customUnit, {
    super.minTime,
    super.minTimeResolver,
    super.rounding = TimeAgoRounding.round,
    super.granularity,
    super.cutoffAmount,
    super.nextUpdate,
  }) : super._();

  /// The reusable unit definition used by this step.
  final TimeAgoCustomUnit customUnit;

  @override
  TimeAgoUnit get unit => customUnit.unit;

  @override
  int get unitMultiplier => customUnit.unitMultiplier;

  @override
  TimeAgoStepFormatter get formatter => customUnit.format;
}
