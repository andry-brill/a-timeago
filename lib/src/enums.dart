enum TimeAgoFormat {
  /// Full localized wording.
  long,

  /// Official localized abbreviations.
  short,

  /// Unicode CLDR narrow relative-time labels. Falls back to [short].
  narrow,

  /// The shortest available labels. Falls back to [narrow], then [short].
  mini,
}

/// Units supported by single-step and multi-unit formatting.
enum TimeAgoUnit {
  /// A localized current/past/future "now" label. Single-unit steps only.
  now(Duration.microsecondsPerSecond),

  second(Duration.microsecondsPerSecond),
  minute(Duration.microsecondsPerMinute),
  hour(Duration.microsecondsPerHour),
  day(Duration.microsecondsPerDay),
  week(Duration.microsecondsPerDay * 7),
  month(2630016000000, Duration.microsecondsPerDay * 30),
  quarter(2630016000000 * 3, Duration.microsecondsPerDay * 90),
  year(31556952000000, Duration.microsecondsPerDay * 360);

  const TimeAgoUnit(this.microseconds, [int? fixedMultiMicroseconds])
      : fixedMultiMicroseconds = fixedMultiMicroseconds ?? microseconds;

  /// Approximate length of this unit in microseconds.
  ///
  /// Single-unit formatting uses this value to infer step thresholds and
  /// calculate rounded amounts. Months use 30.44 days and years use 365.2425
  /// days; [now] uses one second when a numeric duration is required.
  final int microseconds;

  /// Fixed length used to split a [Duration] into multiple units.
  ///
  /// Date-based multi-unit formatting uses calendar arithmetic instead.
  final int fixedMultiMicroseconds;

  static const defaults = <TimeAgoUnit>[
    TimeAgoUnit.year,
    TimeAgoUnit.month,
    TimeAgoUnit.day,
    TimeAgoUnit.hour,
    TimeAgoUnit.minute,
    TimeAgoUnit.second,
  ];
}

/// Numeric rounding for a single [TimeAgoStep].
enum TimeAgoRounding {
  /// Select the nearest integer.
  round,

  /// Select completed units only.
  floor,
}

/// Unicode plural categories available to locale definitions.
enum TimeAgoPluralCategory {
  zero,
  one,
  two,
  few,
  many,
  other,
}
