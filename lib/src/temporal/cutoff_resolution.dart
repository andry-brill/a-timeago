import 'dart:math' as math;

import '../formatting/step_arithmetic.dart';
import '../time_ago_step.dart';
import 'calendar_arithmetic.dart';
import 'temporal_basis.dart';
import 'update_scheduling.dart';

List<ResolvedCutoff> resolveStepCutoffs(
  List<TimeAgoStep> steps,
  List<Duration> thresholds,
  TemporalBasis basis,
) {
  final result = <ResolvedCutoff>[];
  for (var index = 0; index < thresholds.length; index++) {
    final step = steps[index];
    if (step.cutoffAmount == null) {
      continue;
    }
    result.add(
      resolveCutoff(
        step,
        basis,
        minimumBoundary: thresholds[index],
        standalone: false,
      ),
    );
  }
  return result;
}

ResolvedCutoff resolveCutoff(
  TimeAgoStep step,
  TemporalBasis basis, {
  required Duration minimumBoundary,
  required bool standalone,
}) {
  final calendarRange = basis.calendarRange;
  final monthsPerUnit =
      calendarRange == null ? null : _calendarMonthsPerUnit(step);
  if (monthsPerUnit == null) {
    return _resolveFixedCutoff(
      step,
      basis,
      minimumBoundary: minimumBoundary,
      standalone: standalone,
    );
  }
  return _resolveCalendarCutoff(
    step,
    basis,
    minimumBoundary: minimumBoundary,
    calendarRange: calendarRange!,
    monthsPerUnit: monthsPerUnit,
    standalone: standalone,
  );
}

ResolvedCutoff _resolveFixedCutoff(
  TimeAgoStep step,
  TemporalBasis basis, {
  required Duration minimumBoundary,
  required bool standalone,
}) {
  final duration = basis.duration;
  final absolute = basis.absoluteDuration;
  final cutoffBoundary = _fixedCutoffBoundary(step);
  final triggerMicroseconds = math.max(
    minimumBoundary.inMicroseconds,
    cutoffBoundary.inMicroseconds + 1,
  );
  final exceeded = absolute.inMicroseconds >= triggerMicroseconds;
  Duration? nextTransition;
  if (basis.canUpdate) {
    if (duration.isNegative && exceeded) {
      nextTransition = Duration(
        microseconds: absolute.inMicroseconds - triggerMicroseconds + 1,
      );
    } else if (!duration.isNegative && !exceeded) {
      nextTransition = Duration(
        microseconds: triggerMicroseconds - absolute.inMicroseconds,
      );
    }
  }
  return ResolvedCutoff(
    step: step,
    triggerBoundary: Duration(microseconds: triggerMicroseconds),
    exceeded: exceeded,
    nextTransition: nextTransition,
    standalone: standalone,
  );
}

ResolvedCutoff _resolveCalendarCutoff(
  TimeAgoStep step,
  TemporalBasis basis, {
  required Duration minimumBoundary,
  required DateTimeRange calendarRange,
  required int monthsPerUnit,
  required bool standalone,
}) {
  final duration = basis.duration;
  final time = calendarRange.time;
  final to = calendarRange.to;
  final months = monthsPerUnit * step.cutoffAmount!;
  final earlier = time.isBefore(to) ? time : to;
  final later = time.isBefore(to) ? to : time;
  final boundaryDate = addMonthsClamped(earlier, months);
  final strictCalendarBoundary =
      boundaryDate.difference(earlier) + const Duration(microseconds: 1);
  final triggerMicroseconds = math.max(
    minimumBoundary.inMicroseconds,
    strictCalendarBoundary.inMicroseconds,
  );
  final absoluteMicroseconds = basis.absoluteDuration.inMicroseconds;
  final exceeded = later.isAfter(boundaryDate) &&
      absoluteMicroseconds >= minimumBoundary.inMicroseconds;
  Duration? nextTransition;
  if (basis.canUpdate) {
    if (duration.isNegative && exceeded) {
      final thresholdExit = Duration(
        microseconds: absoluteMicroseconds - minimumBoundary.inMicroseconds + 1,
      );
      nextTransition = earliestDuration(<Duration>[
        _timeUntilFutureCalendarCutoffExit(to, time, months),
        thresholdExit,
      ]);
    } else if (!duration.isNegative && !exceeded) {
      final thresholdEntry =
          minimumBoundary.inMicroseconds - absoluteMicroseconds;
      final calendarEntry = boundaryDate.difference(to).inMicroseconds + 1;
      nextTransition = Duration(
        microseconds: math.max(1, math.max(thresholdEntry, calendarEntry)),
      );
    }
  }
  return ResolvedCutoff(
    step: step,
    triggerBoundary: Duration(microseconds: triggerMicroseconds),
    exceeded: exceeded,
    nextTransition: nextTransition,
    standalone: standalone,
  );
}

int? _calendarMonthsPerUnit(TimeAgoStep step) {
  final baseMonthsPerUnit = calendarMonthsForUnit(step.unit!);
  return baseMonthsPerUnit == null
      ? null
      : baseMonthsPerUnit * step.unitMultiplier;
}

Duration _timeUntilFutureCalendarCutoffExit(
  DateTime to,
  DateTime time,
  int months,
) {
  var lower = 0;
  var upper = time.difference(to).inMicroseconds;
  while (lower < upper) {
    final middle = lower + (upper - lower) ~/ 2;
    final candidate = to.add(Duration(microseconds: middle));
    if (time.isAfter(addMonthsClamped(candidate, months))) {
      lower = middle + 1;
    } else {
      upper = middle;
    }
  }
  return Duration(microseconds: math.max(1, lower));
}

Duration _fixedCutoffBoundary(TimeAgoStep step) {
  return Duration(
    microseconds: effectiveUnitMicroseconds(step)! * step.cutoffAmount!,
  );
}

ResolvedCutoff? earliestExceededCutoff(
  Iterable<ResolvedCutoff> cutoffs,
) {
  ResolvedCutoff? earliest;
  for (final cutoff in cutoffs) {
    if (!cutoff.exceeded) {
      continue;
    }
    final comparison = earliest == null
        ? -1
        : cutoff.triggerBoundary.compareTo(earliest.triggerBoundary);
    if (earliest == null ||
        comparison < 0 ||
        (comparison == 0 && cutoff.standalone && !earliest.standalone)) {
      earliest = cutoff;
    }
  }
  return earliest;
}

class ResolvedCutoff {
  const ResolvedCutoff({
    required this.step,
    required this.triggerBoundary,
    required this.exceeded,
    required this.nextTransition,
    required this.standalone,
  });

  final TimeAgoStep step;
  final Duration triggerBoundary;
  final bool exceeded;
  final Duration? nextTransition;
  final bool standalone;
}
