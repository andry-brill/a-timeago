import 'dart:math' as math;

import '../enums.dart';
import '../time_ago_step.dart';

int? effectiveUnitMicroseconds(TimeAgoStep step) {
  final unit = step.unit;
  return unit == null ? null : unit.microseconds * step.unitMultiplier;
}

Duration inferredThreshold(
  int unitMicroseconds,
  int? previousUnitMicroseconds, {
  required bool previousIsNow,
  required TimeAgoRounding rounding,
}) {
  final from = previousUnitMicroseconds == null || previousIsNow
      ? unitMicroseconds
      : previousUnitMicroseconds;
  final microseconds = rounding == TimeAgoRounding.floor
      ? unitMicroseconds
      : unitMicroseconds - (from / 2).round();
  return Duration(microseconds: math.max(0, microseconds));
}

int amountForStep(TimeAgoStep step, Duration absolute) {
  if (step.unit == TimeAgoUnit.now) {
    return 0;
  }
  final denominator =
      effectiveUnitMicroseconds(step) ?? TimeAgoUnit.second.microseconds;
  final raw = absolute.inMicroseconds / denominator;
  final granularity = step.granularity ?? 1;
  final buckets = raw / granularity;
  final rounded = step.rounding == TimeAgoRounding.floor
      ? buckets.floor()
      : buckets.round();
  return rounded * granularity;
}
