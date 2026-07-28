import 'dart:math' as math;

import '../enums.dart';
import '../formatting/step_arithmetic.dart';
import '../time_ago_step.dart';
import '../time_ago_update.dart';

Duration? timeUntilAmountChange(
  Duration duration,
  Duration absoluteDuration,
  TimeAgoStep step,
) {
  final unit = step.unit;
  if (unit == null) {
    return null;
  }
  if (unit == TimeAgoUnit.now) {
    if (duration.isNegative) {
      return absoluteDuration + const Duration(microseconds: 1);
    }
    return duration == Duration.zero ? const Duration(microseconds: 1) : null;
  }
  final denominator = effectiveUnitMicroseconds(step)!;
  final absolute = absoluteDuration.inMicroseconds;
  final granularity = step.granularity ?? 1;
  final raw = absolute / denominator;
  final bucket = raw / granularity;
  if (!duration.isNegative) {
    final boundaryBucket = step.rounding == TimeAgoRounding.floor
        ? bucket.floor() + 1
        : bucket.round() + 0.5;
    final boundary = (boundaryBucket * granularity * denominator).round();
    return Duration(microseconds: math.max(1, boundary - absolute));
  }
  final currentBucket =
      step.rounding == TimeAgoRounding.floor ? bucket.floor() : bucket.round();
  if (currentBucket <= 0) {
    return Duration(microseconds: absolute + 1);
  }
  final boundaryBucket = step.rounding == TimeAgoRounding.floor
      ? currentBucket.toDouble()
      : currentBucket - 0.5;
  final boundary = (boundaryBucket * granularity * denominator).round();
  return Duration(microseconds: math.max(1, absolute - boundary + 1));
}

Duration? timeUntilStepBoundary(
  Duration duration,
  Duration absolute,
  Duration currentMin,
  Duration? nextMin,
) {
  if (!duration.isNegative) {
    if (nextMin == null) {
      return null;
    }
    return nextMin > absolute
        ? nextMin - absolute
        : const Duration(microseconds: 1);
  }
  if (absolute == Duration.zero) {
    return null;
  }
  if (absolute > currentMin) {
    return absolute - currentMin + const Duration(microseconds: 1);
  }
  return absolute + const Duration(microseconds: 1);
}

Duration? earliestDuration(Iterable<Duration> durations) {
  Duration? earliest;
  for (final duration in durations) {
    if (earliest == null || duration < earliest) {
      earliest = duration;
    }
  }
  return earliest;
}

TimeAgoUpdate withRequiredUpdate(
  TimeAgoUpdate preferred,
  Duration? requiredUpdate,
) {
  if (requiredUpdate == null) {
    return preferred;
  }
  return switch (preferred) {
    TimeAgoUpdateAfter(:final duration) => TimeAgoUpdate.after(
        duration < requiredUpdate ? duration : requiredUpdate,
      ),
    TimeAgoUpdateUnknown(:final maximumDelay) => TimeAgoUpdate.unknown(
        maximumDelay: maximumDelay == null || requiredUpdate < maximumDelay
            ? requiredUpdate
            : maximumDelay,
      ),
    TimeAgoUpdateNever() => TimeAgoUpdate.after(requiredUpdate),
  };
}
