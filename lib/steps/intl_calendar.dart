import '../src/enums.dart';
import '../src/time_ago_context.dart';
import '../src/time_ago_step.dart';
import '../src/time_ago_update.dart';

const _afterOneMinute = Duration(minutes: 1, microseconds: 1);
const _afterThirtyMinutes = Duration(minutes: 30, microseconds: 1);

/// Intl calendar-oriented steps for activity feeds and message lists.
///
/// Values through one minute render the locale's current `now` label. Values
/// through 30 minutes use localized relative minutes. Older values render the
/// locale's named yesterday, today, or tomorrow, a localized month-day in the
/// current year, or a localized year-month-day in other years, combined with a
/// localized clock without seconds.
const steps = <TimeAgoStep>[
  TimeAgoStep.custom(
    unit: TimeAgoUnit.now,
    formatter: _now,
    nextUpdate: _neverUpdates,
  ),
  TimeAgoStep.unit(
    TimeAgoUnit.minute,
    minTime: _afterOneMinute,
  ),
  TimeAgoStep.custom(
    minTime: _afterThirtyMinutes,
    formatter: _dateTime,
    nextUpdate: _nextUpdate,
  ),
];

/// The same behavior as [steps], with seconds in the localized clock.
const stepsWithSeconds = <TimeAgoStep>[
  TimeAgoStep.custom(
    unit: TimeAgoUnit.now,
    formatter: _now,
    nextUpdate: _neverUpdates,
  ),
  TimeAgoStep.unit(
    TimeAgoUnit.minute,
    minTime: _afterOneMinute,
  ),
  TimeAgoStep.custom(
    minTime: _afterThirtyMinutes,
    formatter: _dateTimeWithSeconds,
    nextUpdate: _nextUpdate,
  ),
];

String _now(TimeAgoStepContext context) {
  return context.locale.now.current;
}

String _dateTime(TimeAgoStepContext context) {
  return _formatDateTime(context, includeSeconds: false);
}

String _dateTimeWithSeconds(TimeAgoStepContext context) {
  return _formatDateTime(context, includeSeconds: true);
}

String _formatDateTime(
  TimeAgoStepContext context, {
  required bool includeSeconds,
}) {
  final time = context.time;
  final to = context.to;
  if (time == null || to == null) {
    return '';
  }

  final dayDifference = _calendarDayDifference(time, to);
  final calendar = context.locale.calendar;
  final (date, relative) = switch (dayDifference) {
    1 => (calendar.yesterday, true),
    0 => (calendar.today, true),
    -1 => (calendar.tomorrow, true),
    _ when time.year == to.year => (
        context.resolvedFunctions.formatMonthDay(time),
        false,
      ),
    _ => (
        context.resolvedFunctions.formatYearMonthDay(time),
        false,
      ),
  };
  final clock = context.resolvedFunctions.formatTime(
    time,
    includeSeconds: includeSeconds,
  );
  return calendar.combineDateAndTime(date, clock, relative: relative);
}

int _calendarDayDifference(DateTime time, DateTime to) {
  final timeDate = DateTime.utc(time.year, time.month, time.day);
  final toDate = DateTime.utc(to.year, to.month, to.day);
  return toDate.difference(timeDate).inDays;
}

TimeAgoUpdate _neverUpdates(TimeAgoStepContext context) {
  return const TimeAgoUpdate.never();
}

TimeAgoUpdate _nextUpdate(TimeAgoStepContext context) {
  final time = context.time;
  final to = context.to;
  if (time == null || to == null) {
    return const TimeAgoUpdate.never();
  }

  final dayDifference = _calendarDayDifference(time, to);
  if (!context.duration.isNegative) {
    if (dayDifference == 0 || dayDifference == 1) {
      return TimeAgoUpdate.after(_startOfNextDay(to).difference(to));
    }
    if (time.year == to.year) {
      return TimeAgoUpdate.after(_startOfNextYear(to).difference(to));
    }
    return const TimeAgoUpdate.never();
  }

  final transitions = <DateTime>[
    if (time.year > to.year) _startOfYear(time.year, like: to),
    if (dayDifference == -1) _startOfDay(time, like: to),
    if (dayDifference < -1) _startOfPreviousDay(time, like: to),
  ].where((transition) => transition.isAfter(to));
  DateTime? earliest;
  for (final transition in transitions) {
    if (earliest == null || transition.isBefore(earliest)) {
      earliest = transition;
    }
  }
  return earliest == null
      ? const TimeAgoUpdate.never()
      : TimeAgoUpdate.after(earliest.difference(to));
}

DateTime _startOfDay(DateTime value, {DateTime? like}) {
  final basis = like ?? value;
  return basis.isUtc
      ? DateTime.utc(value.year, value.month, value.day)
      : DateTime(value.year, value.month, value.day);
}

DateTime _startOfPreviousDay(DateTime value, {required DateTime like}) {
  return like.isUtc
      ? DateTime.utc(value.year, value.month, value.day - 1)
      : DateTime(value.year, value.month, value.day - 1);
}

DateTime _startOfNextDay(DateTime value) {
  return value.isUtc
      ? DateTime.utc(value.year, value.month, value.day + 1)
      : DateTime(value.year, value.month, value.day + 1);
}

DateTime _startOfYear(int year, {required DateTime like}) {
  return like.isUtc ? DateTime.utc(year) : DateTime(year);
}

DateTime _startOfNextYear(DateTime value) {
  return _startOfYear(value.year + 1, like: value);
}
