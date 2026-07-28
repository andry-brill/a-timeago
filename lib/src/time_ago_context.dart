import 'enums.dart';
import 'locale_config.dart';
import 'locale_functions.dart';

/// Shared, immutable input for time-ago resolution callbacks.
///
/// A formatting call has two callback stages:
///
/// 1. [TimeAgoMinTimeContext] is used while determining which step applies.
/// 2. [TimeAgoStepContext] is used after a step or cutoff has been selected.
///
/// This base class contains only the signed interval, its endpoints, and its
/// grammatical direction. Stage-specific calculation and presentation data
/// live on the two subclasses.
abstract class TimeAgoContext {
  const TimeAgoContext({
    required this.duration,
    required this.absoluteDuration,
    required this.time,
    required this.to,
    this.future,
  });

  /// The signed interval being formatted.
  ///
  /// Positive values represent the past and negative values the future.
  final Duration duration;

  /// The non-negative magnitude of [duration].
  final Duration absoluteDuration;

  /// The value being described, when a date-time endpoint is available.
  ///
  /// For `timeAgo()` this is the caller's date. `durationAgo()` supplies a
  /// synthetic endpoint around its internal anchor.
  final DateTime? time;

  /// The reference endpoint, when available.
  ///
  /// For `timeAgo()` this is the comparison date. `durationAgo()` supplies its
  /// internal anchor.
  final DateTime? to;

  /// Overrides grammatical direction when non-null.
  ///
  /// This affects wording only; it does not change [duration], threshold
  /// selection, or cutoff comparisons.
  final bool? future;

  /// Whether past grammatical forms should be used.
  bool get isPast => !isFuture;

  /// Whether future grammatical forms should be used.
  bool get isFuture => future ?? duration.isNegative;

  /// Whether the signed interval is exactly zero.
  bool get isCurrent => duration == Duration.zero;
}

/// Input used to resolve a step's dynamic minimum threshold.
///
/// This context is created during step selection, before a final step, numeric
/// amount, output format, or locale label has been chosen. A minimum-time
/// resolver should use it only to calculate the minimum absolute duration at
/// which its owning step becomes eligible.
///
/// Use [inferredMinTimeFor] to retain the library's normal transition logic
/// while making a threshold depend on dates, direction, or other interval
/// details.
class TimeAgoMinTimeContext extends TimeAgoContext {
  const TimeAgoMinTimeContext({
    required super.duration,
    required super.absoluteDuration,
    required super.time,
    required super.to,
    required this.rounding,
    required this.inferredMinTimeFor,
    this.unitMultiplier = 1,
    super.future,
  });

  /// The rounding policy of the step whose threshold is being resolved.
  final TimeAgoRounding rounding;

  /// The number of base units represented by the step being resolved.
  final int unitMultiplier;

  /// Calculates the library's inferred threshold for [unit] at this position.
  ///
  /// The result accounts for the preceding unit and [rounding] policy.
  final Duration Function(TimeAgoUnit unit) inferredMinTimeFor;
}

/// Input used after a step or standalone cutoff has been selected.
///
/// Unlike [TimeAgoMinTimeContext], this context represents a final formatting
/// decision. It contains the resolved numeric amount, unit, presentation
/// format, locale data, and fallback-aware locale operations. The same context
/// is passed to the custom formatter and its next-update resolver.
///
/// For normal output [amount] is the rounded and granularized step amount. For
/// cutoff output it is the configured cutoff amount and [isCutoff] is true.
class TimeAgoStepContext extends TimeAgoContext {
  const TimeAgoStepContext({
    required super.duration,
    required super.absoluteDuration,
    required this.amount,
    required this.unit,
    required this.format,
    required this.directional,
    required this.locale,
    required this.resolvedFunctions,
    required super.time,
    required super.to,
    this.isCutoff = false,
    this.unitMultiplier = 1,
    super.future,
  });

  /// The resolved amount to display or pass to a custom formatter.
  final int amount;

  /// The selected unit, or null for a unitless custom step.
  final TimeAgoUnit? unit;

  /// The number of base [unit] values represented by one formatted unit.
  ///
  /// [amount] is expressed in these multiplied units.
  final int unitMultiplier;

  /// The requested presentation width.
  final TimeAgoFormat format;

  /// Whether the output should include past or future direction.
  final bool directional;

  /// The locale configuration selected for this formatting call.
  final LocaleConfig locale;

  /// Fallback-aware operations resolved for this formatting call.
  final TimeAgoLocaleFunctions resolvedFunctions;

  /// Whether cutoff formatting is active for this formatting call.
  ///
  /// This is runtime state, not merely whether the selected step defines a
  /// cutoff. When true, [amount] is the configured cutoff amount. Custom
  /// formatters can use the active [TimeAgoFormatLabels.cutoffResolver] to
  /// format it.
  final bool isCutoff;
}
