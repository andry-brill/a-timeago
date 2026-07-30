import '../src/enums.dart';
import '../src/time_ago_step.dart';

const _second = Duration(seconds: 1);

/// Immutable, reusable relative-time step presets without date formatting.
///
/// This module is exported by `package:any_timeago/any_timeago.dart`.
/// Date-formatting presets are opt-in modules under `package:any_timeago/steps`.
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
}
