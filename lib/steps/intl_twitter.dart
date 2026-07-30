import '../src/enums.dart';
import '../src/time_ago_context.dart';
import '../src/time_ago_step.dart';
import '../src/time_ago_update.dart';

const _minute = Duration(minutes: 1);

/// Twitter-style steps: seconds, minutes, hours, then localized dates.
const steps = <TimeAgoStep>[
  TimeAgoStep.unit(TimeAgoUnit.second),
  TimeAgoStep.unit(TimeAgoUnit.minute),
  TimeAgoStep.unit(TimeAgoUnit.hour),
  TimeAgoStep.custom(
    minTimeResolver: _monthDayMin,
    formatter: _monthDay,
  ),
  TimeAgoStep.custom(
    minTimeResolver: _yearMonthDayMin,
    formatter: _yearMonthDay,
    nextUpdate: _dateNeverUpdates,
  ),
];

/// [steps] prefixed by the locale's `now` step.
const stepsNow = <TimeAgoStep>[
  TimeAgoStep.unit(TimeAgoUnit.now),
  ...steps,
];

/// Twitter-style steps starting at relative minutes.
const stepsFromMinute = <TimeAgoStep>[
  TimeAgoStep.unit(TimeAgoUnit.minute),
  TimeAgoStep.unit(TimeAgoUnit.hour),
  TimeAgoStep.custom(
    minTimeResolver: _monthDayMin,
    formatter: _monthDay,
  ),
  TimeAgoStep.custom(
    minTimeResolver: _yearMonthDayMin,
    formatter: _yearMonthDay,
    nextUpdate: _dateNeverUpdates,
  ),
];

/// [stepsFromMinute] prefixed by the locale's `now` step.
const stepsFromMinuteNow = <TimeAgoStep>[
  TimeAgoStep.unit(TimeAgoUnit.now),
  ...stepsFromMinute,
];

/// Twitter-style steps that produce no output before one minute.
const stepsFirstMinute = <TimeAgoStep>[
  TimeAgoStep.unit(TimeAgoUnit.minute, minTime: _minute),
  TimeAgoStep.unit(TimeAgoUnit.hour),
  TimeAgoStep.custom(
    minTimeResolver: _monthDayMin,
    formatter: _monthDay,
  ),
  TimeAgoStep.custom(
    minTimeResolver: _yearMonthDayMin,
    formatter: _yearMonthDay,
    nextUpdate: _dateNeverUpdates,
  ),
];

Duration _monthDayMin(TimeAgoMinTimeContext context) {
  return context.inferredMinTimeFor(TimeAgoUnit.day);
}

Duration _yearMonthDayMin(TimeAgoMinTimeContext context) {
  final time = context.time;
  if (time == null) {
    return const Duration(days: 365);
  }
  if (context.isFuture) {
    final startOfYear = DateTime(time.year, 1);
    return time
        .difference(startOfYear.subtract(const Duration(microseconds: 1)));
  }
  final startOfNextYear = DateTime(time.year + 1, 1);
  return startOfNextYear.difference(time);
}

String _monthDay(TimeAgoStepContext context) {
  final time = context.time;
  return time == null ? '' : context.resolvedFunctions.formatMonthDay(time);
}

String _yearMonthDay(TimeAgoStepContext context) {
  final time = context.time;
  return time == null ? '' : context.resolvedFunctions.formatYearMonthDay(time);
}

TimeAgoUpdate _dateNeverUpdates(TimeAgoStepContext context) {
  return const TimeAgoUpdate.never();
}
