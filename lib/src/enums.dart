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

  /// Default unit transitions used by [upperBound].
  ///
  /// The main path mirrors [defaults]. Optional week and quarter units connect
  /// to the next larger unit on that path.
  static const defaultNextUnits = <TimeAgoUnit, TimeAgoUnit>{
    TimeAgoUnit.second: TimeAgoUnit.minute,
    TimeAgoUnit.minute: TimeAgoUnit.hour,
    TimeAgoUnit.hour: TimeAgoUnit.day,
    TimeAgoUnit.day: TimeAgoUnit.month,
    TimeAgoUnit.week: TimeAgoUnit.month,
    TimeAgoUnit.month: TimeAgoUnit.year,
    TimeAgoUnit.quarter: TimeAgoUnit.year,
  };

  /// Returns the bound at which this unit reaches its next larger unit.
  ///
  /// For example, a minute has an upper bound of 60 when its next unit is an
  /// hour. Calendar-scale bounds are rounded up, so a day has an upper bound
  /// of 31 when its next unit is a month, or 7 when [nextUnits] overrides that
  /// transition with [TimeAgoUnit.week].
  ///
  /// [nextUnits] is treated as a set of overrides for [defaultNextUnits].
  /// [cutoff] takes precedence over unit conversion. Returns null when neither
  /// a cutoff nor a next unit is available, as for [TimeAgoUnit.year].
  int? upperBound({
    Map<TimeAgoUnit, TimeAgoUnit>? nextUnits,
    int? cutoff,
  }) {
    if (cutoff != null) {
      if (cutoff <= 0) {
        throw ArgumentError.value(
          cutoff,
          'cutoff',
          'Cutoff must be greater than zero.',
        );
      }
      return cutoff;
    }

    final nextUnit = nextUnits?[this] ?? defaultNextUnits[this];
    if (nextUnit == null) {
      return null;
    }
    if (this == TimeAgoUnit.now ||
        nextUnit == TimeAgoUnit.now ||
        nextUnit.microseconds <= microseconds) {
      throw ArgumentError.value(
        nextUnit,
        'nextUnits[$name]',
        'The next unit must be a larger numeric unit.',
      );
    }
    return (nextUnit.microseconds + microseconds - 1) ~/ microseconds;
  }
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
