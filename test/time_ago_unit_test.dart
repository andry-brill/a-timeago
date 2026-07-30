import 'package:any_timeago/any_timeago.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimeAgoUnit.upperBound', () {
    test('uses the default formatting unit relationships', () {
      expect(TimeAgoUnit.second.upperBound(), 60);
      expect(TimeAgoUnit.minute.upperBound(), 60);
      expect(TimeAgoUnit.hour.upperBound(), 24);
      expect(TimeAgoUnit.day.upperBound(), 31);
      expect(TimeAgoUnit.week.upperBound(), 5);
      expect(TimeAgoUnit.month.upperBound(), 12);
      expect(TimeAgoUnit.quarter.upperBound(), 4);
      expect(TimeAgoUnit.year.upperBound(), isNull);
      expect(TimeAgoUnit.now.upperBound(), isNull);
    });

    test('accepts partial next-unit overrides', () {
      const nextUnits = <TimeAgoUnit, TimeAgoUnit>{
        TimeAgoUnit.day: TimeAgoUnit.week,
      };

      expect(TimeAgoUnit.day.upperBound(nextUnits: nextUnits), 7);
      expect(TimeAgoUnit.hour.upperBound(nextUnits: nextUnits), 24);
      expect(TimeAgoUnit.day.upperBound(nextUnits: const {}), 31);
    });

    test('rounds calendar-scale conversions up', () {
      expect(
        TimeAgoUnit.day.upperBound(
          nextUnits: const {
            TimeAgoUnit.day: TimeAgoUnit.quarter,
          },
        ),
        92,
      );
    });

    test('uses a cutoff before the next-unit relationship', () {
      expect(
        TimeAgoUnit.hour.upperBound(
          nextUnits: const {
            TimeAgoUnit.hour: TimeAgoUnit.minute,
          },
          cutoff: 3,
        ),
        3,
      );
      expect(TimeAgoUnit.year.upperBound(cutoff: 2), 2);
    });

    test('rejects non-positive cutoffs', () {
      for (final cutoff in <int>[0, -1]) {
        expect(
          () => TimeAgoUnit.hour.upperBound(cutoff: cutoff),
          throwsArgumentError,
        );
      }
    });

    test('rejects non-increasing and non-numeric transitions', () {
      expect(
        () => TimeAgoUnit.hour.upperBound(
          nextUnits: const {
            TimeAgoUnit.hour: TimeAgoUnit.minute,
          },
        ),
        throwsArgumentError,
      );
      expect(
        () => TimeAgoUnit.now.upperBound(
          nextUnits: const {
            TimeAgoUnit.now: TimeAgoUnit.minute,
          },
        ),
        throwsArgumentError,
      );
    });
  });
}
