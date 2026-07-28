import 'enums.dart';
import 'time_ago_context.dart';
import 'time_ago_step.dart';
import 'time_ago_update.dart';

const _second = Duration(seconds: 1);
const _minute = Duration(minutes: 1);

/// Immutable, reusable single-unit step presets.
abstract final class TimeAgoSteps {
  static const precise = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.second),
    TimeAgoStep.unit(TimeAgoUnit.minute),
    TimeAgoStep.unit(TimeAgoUnit.hour),
    TimeAgoStep.unit(TimeAgoUnit.day),
    TimeAgoStep.unit(TimeAgoUnit.week),
    TimeAgoStep.unit(TimeAgoUnit.month),
    TimeAgoStep.unit(TimeAgoUnit.year),
  ];

  static const preciseNow = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.now),
    ...precise,
  ];

  static const fromMinute = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.minute),
    TimeAgoStep.unit(TimeAgoUnit.hour),
    TimeAgoStep.unit(TimeAgoUnit.day),
    TimeAgoStep.unit(TimeAgoUnit.week),
    TimeAgoStep.unit(TimeAgoUnit.month),
    TimeAgoStep.unit(TimeAgoUnit.year),
  ];

  static const fromMinuteNow = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.now),
    ...fromMinute,
  ];

  /// Fuzzy thresholds compatible with the intent of JavaScript
  /// `approximate`: moment, minute, five-minute increments, half-hour,
  /// hour, day, week, month, and year.
  static const approximate = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.now),
    TimeAgoStep.unit(TimeAgoUnit.second, minTime: _second),
    TimeAgoStep.unit(
      TimeAgoUnit.minute,
      minTime: Duration(microseconds: 45500000),
    ),
    TimeAgoStep.unit(
      TimeAgoUnit.minute,
      minTime: Duration(seconds: 150),
      granularity: 5,
    ),
    TimeAgoStep.unit(
      TimeAgoUnit.minute,
      minTime: Duration(seconds: 1350),
      granularity: 30,
    ),
    TimeAgoStep.unit(
      TimeAgoUnit.hour,
      minTime: Duration(seconds: 2550),
    ),
    TimeAgoStep.unit(
      TimeAgoUnit.day,
      minTime: Duration(seconds: 73800),
    ),
    TimeAgoStep.unit(
      TimeAgoUnit.week,
      minTime: Duration(seconds: 475200),
    ),
    TimeAgoStep.unit(
      TimeAgoUnit.month,
      minTime: Duration(seconds: 2116800),
    ),
    TimeAgoStep.unit(
      TimeAgoUnit.year,
      minTime: Duration(seconds: 27609120),
    ),
  ];

  static const twitter = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.second),
    TimeAgoStep.unit(TimeAgoUnit.minute),
    TimeAgoStep.unit(TimeAgoUnit.hour),
    TimeAgoStep.custom(
      minTimeResolver: _twitterMonthDayMin,
      formatter: _twitterMonthDay,
    ),
    TimeAgoStep.custom(
      minTimeResolver: _twitterYearMonthDayMin,
      formatter: _twitterYearMonthDay,
      nextUpdate: _twitterDateNeverUpdates,
    ),
  ];

  static const twitterNow = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.now),
    ...twitter,
  ];

  static const twitterFromMinute = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.minute),
    TimeAgoStep.unit(TimeAgoUnit.hour),
    TimeAgoStep.custom(
      minTimeResolver: _twitterMonthDayMin,
      formatter: _twitterMonthDay,
    ),
    TimeAgoStep.custom(
      minTimeResolver: _twitterYearMonthDayMin,
      formatter: _twitterYearMonthDay,
      nextUpdate: _twitterDateNeverUpdates,
    ),
  ];

  static const twitterFromMinuteNow = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.now),
    ...twitterFromMinute,
  ];

  static const twitterFirstMinute = <TimeAgoStep>[
    TimeAgoStep.unit(TimeAgoUnit.minute, minTime: _minute),
    TimeAgoStep.unit(TimeAgoUnit.hour),
    TimeAgoStep.custom(
      minTimeResolver: _twitterMonthDayMin,
      formatter: _twitterMonthDay,
    ),
    TimeAgoStep.custom(
      minTimeResolver: _twitterYearMonthDayMin,
      formatter: _twitterYearMonthDay,
      nextUpdate: _twitterDateNeverUpdates,
    ),
  ];
}

Duration _twitterMonthDayMin(TimeAgoMinTimeContext context) {
  return context.inferredMinTimeFor(TimeAgoUnit.day);
}

Duration _twitterYearMonthDayMin(TimeAgoMinTimeContext context) {
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

String _twitterMonthDay(TimeAgoStepContext context) {
  final time = context.time;
  return time == null ? '' : context.resolvedFunctions.formatMonthDay(time);
}

String _twitterYearMonthDay(TimeAgoStepContext context) {
  final time = context.time;
  return time == null ? '' : context.resolvedFunctions.formatYearMonthDay(time);
}

TimeAgoUpdate _twitterDateNeverUpdates(TimeAgoStepContext context) {
  return const TimeAgoUpdate.never();
}
