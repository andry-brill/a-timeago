import 'dart:math' as math;

import '../enums.dart';

int? calendarMonthsForUnit(TimeAgoUnit unit) {
  return switch (unit) {
    TimeAgoUnit.year => 12,
    TimeAgoUnit.quarter => 3,
    TimeAgoUnit.month => 1,
    _ => null,
  };
}

int calendarUnitCount(DateTime from, DateTime to, int monthsPerUnit) {
  final totalMonths = (to.year - from.year) * 12 + to.month - from.month;
  var count = math.max(0, totalMonths ~/ monthsPerUnit);
  while (
      count > 0 && addMonthsClamped(from, count * monthsPerUnit).isAfter(to)) {
    count--;
  }
  while (!addMonthsClamped(from, (count + 1) * monthsPerUnit).isAfter(to)) {
    count++;
  }
  return count;
}

DateTime addMonthsClamped(DateTime value, int months) {
  final zeroBased = value.month - 1 + months;
  final year = value.year + zeroBased ~/ 12;
  final month = zeroBased % 12 + 1;
  final lastDay = (value.isUtc
          ? DateTime.utc(year, month + 1, 0)
          : DateTime(year, month + 1, 0))
      .day;
  final arguments = <int>[
    year,
    month,
    math.min(value.day, lastDay),
    value.hour,
    value.minute,
    value.second,
    value.millisecond,
    value.microsecond,
  ];
  return value.isUtc
      ? DateTime.utc(
          arguments[0],
          arguments[1],
          arguments[2],
          arguments[3],
          arguments[4],
          arguments[5],
          arguments[6],
          arguments[7],
        )
      : DateTime(
          arguments[0],
          arguments[1],
          arguments[2],
          arguments[3],
          arguments[4],
          arguments[5],
          arguments[6],
          arguments[7],
        );
}

DateTime advanceMultiUnit(
  DateTime value,
  TimeAgoUnit unit,
  int amount,
) {
  final calendarMonths = calendarMonthsForUnit(unit);
  return calendarMonths == null
      ? value.add(
          Duration(
            microseconds: amount * unit.fixedMultiMicroseconds,
          ),
        )
      : addMonthsClamped(value, amount * calendarMonths);
}
