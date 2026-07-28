/// A concrete calendar interval used for calendar-aware calculations.
typedef DateTimeRange = ({DateTime time, DateTime to});

sealed class TemporalBasis {
  TemporalBasis({
    required this.duration,
    required this.time,
    required this.to,
    required this.calendarRange,
    required this.canUpdate,
  }) : absoluteDuration = duration.abs();

  final Duration duration;
  final Duration absoluteDuration;
  final DateTime time;
  final DateTime to;
  final DateTimeRange? calendarRange;
  final bool canUpdate;
}

final class DateTimeBasis extends TemporalBasis {
  DateTimeBasis(
    DateTime time,
    DateTime to, {
    required super.canUpdate,
  }) : super(
          duration: to.difference(time),
          time: time,
          to: to,
          calendarRange: (time: time, to: to),
        );
}

final class DurationBasis extends TemporalBasis {
  factory DurationBasis(Duration duration) {
    final anchor = DateTime.now();
    return DurationBasis._(duration, anchor);
  }

  DurationBasis._(Duration duration, DateTime anchor)
      : super(
          duration: duration,
          time: anchor.subtract(duration),
          to: anchor,
          calendarRange: null,
          canUpdate: false,
        );
}
