import 'dart:math' as math;

import '../enums.dart';
import 'calendar_arithmetic.dart';
import 'temporal_basis.dart';
import 'update_scheduling.dart';

MultiDecomposition decomposeMultiDuration(
  DurationBasis basis,
  List<TimeAgoUnit> units,
) {
  final components = <TimeAgoComponent>[];
  var remaining = basis.absoluteDuration.inMicroseconds;
  for (final unit in units) {
    final denominator = unit.fixedMultiMicroseconds;
    final amount = remaining ~/ denominator;
    if (amount > 0) {
      components.add(TimeAgoComponent(unit, amount));
      remaining -= amount * denominator;
    }
  }
  _ensureSmallestComponent(components, basis.duration, units);
  return MultiDecomposition(
    components,
    nextUpdate: null,
  );
}

MultiDecomposition decomposeMultiDateTime(
  DateTimeBasis basis,
  List<TimeAgoUnit> units,
) {
  final time = basis.time;
  final to = basis.to;
  final duration = basis.duration;
  if (duration == Duration.zero) {
    return const MultiDecomposition(
      <TimeAgoComponent>[],
      nextUpdate: Duration(microseconds: 1),
    );
  }
  final earlier = time.isBefore(to) ? time : to;
  final later = time.isBefore(to) ? to : time;
  var cursor = earlier;
  final components = <TimeAgoComponent>[];
  final pastBoundaries = <Duration>[];

  for (final unit in units) {
    final unitStart = cursor;
    final calendarMonths = calendarMonthsForUnit(unit);
    if (calendarMonths != null) {
      final count = calendarUnitCount(cursor, later, calendarMonths);
      // A larger calendar carry can occur before the smallest unit changes.
      if (!duration.isNegative) {
        pastBoundaries.add(
          addMonthsClamped(
            unitStart,
            (count + 1) * calendarMonths,
          ).difference(later),
        );
      }
      if (count > 0) {
        components.add(TimeAgoComponent(unit, count));
        cursor = addMonthsClamped(cursor, count * calendarMonths);
      }
      continue;
    }
    final denominator = unit.fixedMultiMicroseconds;
    final remaining = later.difference(cursor).inMicroseconds;
    final count = remaining ~/ denominator;
    if (!duration.isNegative) {
      pastBoundaries.add(
        unitStart
            .add(Duration(microseconds: (count + 1) * denominator))
            .difference(later),
      );
    }
    if (count > 0) {
      components.add(TimeAgoComponent(unit, count));
      cursor = cursor.add(Duration(microseconds: count * denominator));
    }
  }

  final remaining = later.difference(cursor);
  final promoted = components.isEmpty;
  final nextUpdate = duration.isNegative
      ? _nextFutureMultiDateTimeUpdate(
          basis,
          units,
          components,
          remaining,
          promoted: promoted,
        )
      : promoted
          ? advanceMultiUnit(earlier, units.last, 2).difference(later)
          : earliestDuration(pastBoundaries)!;
  _ensureSmallestComponent(components, duration, units);
  return MultiDecomposition(
    components,
    nextUpdate: nextUpdate,
  );
}

Duration _nextFutureMultiDateTimeUpdate(
  DateTimeBasis basis,
  List<TimeAgoUnit> units,
  List<TimeAgoComponent> components,
  Duration remaining, {
  required bool promoted,
}) {
  final time = basis.time;
  final to = basis.to;
  final untilCurrent = basis.absoluteDuration;
  if (promoted ||
      (components.length == 1 &&
          components.single.unit == units.last &&
          components.single.amount == 1)) {
    // Dropping from one smallest unit to zero is still displayed as one until
    // the interval reaches the localized current label.
    return untilCurrent;
  }

  final maximum = untilCurrent.inMicroseconds;
  var estimate = math.min(
    maximum,
    math.max(1, remaining.inMicroseconds + 1),
  );
  bool stillFits(int microseconds) {
    final candidate = to.add(Duration(microseconds: microseconds));
    return !_applyMultiComponents(candidate, components).isAfter(time);
  }

  // Month-end clamping can make a future component plan shift non-linearly.
  // Use the remaining interval as the fast-path estimate, then bracket and
  // locate the first microsecond at which that exact plan no longer fits.
  if (!stillFits(estimate)) {
    if (estimate == 1 || stillFits(estimate - 1)) {
      return Duration(microseconds: estimate);
    }
    return Duration(
      microseconds: _firstInvalidMicrosecond(
        stillFits,
        lower: 0,
        upper: estimate,
      ),
    );
  }

  var lower = estimate;
  var upper = estimate;
  while (stillFits(upper)) {
    lower = upper;
    if (upper == maximum) {
      break;
    }
    upper = upper <= maximum ~/ 2 ? upper * 2 : maximum;
  }
  return Duration(
    microseconds: _firstInvalidMicrosecond(
      stillFits,
      lower: lower,
      upper: upper,
    ),
  );
}

int _firstInvalidMicrosecond(
  bool Function(int microseconds) stillFits, {
  required int lower,
  required int upper,
}) {
  while (lower + 1 < upper) {
    final middle = lower + (upper - lower) ~/ 2;
    if (stillFits(middle)) {
      lower = middle;
    } else {
      upper = middle;
    }
  }
  return upper;
}

DateTime _applyMultiComponents(
  DateTime value,
  List<TimeAgoComponent> components,
) {
  var result = value;
  for (final component in components) {
    result = advanceMultiUnit(result, component.unit, component.amount);
  }
  return result;
}

void _ensureSmallestComponent(
  List<TimeAgoComponent> components,
  Duration duration,
  List<TimeAgoUnit> units,
) {
  if (components.isEmpty && duration != Duration.zero) {
    components.add(TimeAgoComponent(units.last, 1));
  }
}

class TimeAgoComponent {
  const TimeAgoComponent(this.unit, this.amount);

  final TimeAgoUnit unit;
  final int amount;
}

class MultiDecomposition {
  const MultiDecomposition(
    this.components, {
    required this.nextUpdate,
  });

  final List<TimeAgoComponent> components;
  final Duration? nextUpdate;
}
