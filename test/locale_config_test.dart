import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('public label primitives', () {
    test('plural labels resolve every category and fall back to other', () {
      const complete = TimeAgoPluralLabels(
        zero: 'zero',
        one: 'one',
        two: 'two',
        few: 'few',
        many: 'many',
        other: 'other',
      );
      final expected = <TimeAgoPluralCategory, String>{
        TimeAgoPluralCategory.zero: 'zero',
        TimeAgoPluralCategory.one: 'one',
        TimeAgoPluralCategory.two: 'two',
        TimeAgoPluralCategory.few: 'few',
        TimeAgoPluralCategory.many: 'many',
        TimeAgoPluralCategory.other: 'other',
      };
      for (final category in TimeAgoPluralCategory.values) {
        expect(complete.resolve(category), expected[category]);
      }

      const sparse = TimeAgoPluralLabels.same('fallback');
      for (final category in TimeAgoPluralCategory.values) {
        expect(sparse.resolve(category), 'fallback');
      }
    });

    test('list patterns join zero through four values', () {
      const patterns = TimeAgoListPatterns(
        pair: '<{0}+{1}>',
        start: '[{0}+{1}]',
        middle: '{{0}|{1}}',
        end: '({0}&{1})',
      );

      expect(patterns.join(const <String>[]), '');
      expect(patterns.join(const <String>['a']), 'a');
      expect(patterns.join(const <String>['a', 'b']), '<a+b>');
      expect(patterns.join(const <String>['a', 'b', 'c']), '([a+b]&c)');
      expect(
        patterns.join(const <String>['a', 'b', 'c', 'd']),
        '({[a+b]|c}&d)',
      );
    });

    test('direction patterns wrap complete past and future values', () {
      const patterns = TimeAgoDirectionPatterns(
        past: '{0} before',
        future: 'after {0}',
      );

      expect(patterns.wrap('two days', isPast: true), 'two days before');
      expect(patterns.wrap('two days', isPast: false), 'after two days');
    });

    test('calendar labels combine fixed and relative dates with clocks', () {
      const labels = TimeAgoCalendarLabels(
        yesterday: 'previous day',
        today: 'current day',
        tomorrow: 'next day',
        dateTime: '<{1}|{0}>',
        relativeDateTime: '[{1}|{0}]',
      );

      expect(
        labels.combineDateAndTime('20 Jul', '09:05'),
        '<20 Jul|09:05>',
      );
      expect(
        labels.combineDateAndTime('current day', '09:05', relative: true),
        '[current day|09:05]',
      );

      final updated = labels.copyWith(
        tomorrow: 'following day',
        relativeDateTime: '{1} @ {0}',
      );
      expect(updated.yesterday, labels.yesterday);
      expect(updated.today, labels.today);
      expect(updated.tomorrow, 'following day');
      expect(
        updated.combineDateAndTime('following day', '10:00', relative: true),
        'following day @ 10:00',
      );
    });

    test('relative and unit lookups reject the now pseudo-unit', () {
      final matcher = throwsA(
        isA<ArgumentError>()
            .having((error) => error.name, 'name', 'unit')
            .having(
              (error) => error.message,
              'message',
              contains('now unit'),
            ),
      );

      expect(
        () => en.locale.long.relative.forUnit(TimeAgoUnit.now),
        matcher,
      );
      expect(() => en.locale.long.units.forUnit(TimeAgoUnit.now), matcher);
    });
  });

  group('nested copyWith', () {
    test('preserves and overrides unit, list, and direction labels', () {
      const customPlural = TimeAgoPluralLabels.oneOther(
        one: '{0} custom minute',
        other: '{0} custom minutes',
      );
      final relativeMinute = en.locale.long.relative.minute.copyWith(
        past: customPlural,
      );
      final relative = en.locale.long.relative.copyWith(
        minute: relativeMinute,
      );
      final units = en.locale.long.units.copyWith(minute: customPlural);
      final list = en.locale.long.list.copyWith(pair: '{0} plus {1}');
      final direction = en.locale.long.direction.copyWith(
        future: 'later: {0}',
      );

      expect(relative.minute, same(relativeMinute));
      expect(relative.hour, same(en.locale.long.relative.hour));
      expect(relativeMinute.past, same(customPlural));
      expect(
        relativeMinute.future.resolve(TimeAgoPluralCategory.other),
        en.locale.long.relative.minute.future
            .resolve(TimeAgoPluralCategory.other),
      );
      expect(units.minute, same(customPlural));
      expect(units.hour, same(en.locale.long.units.hour));
      expect(list.pair, '{0} plus {1}');
      expect(list.start, en.locale.long.list.start);
      expect(direction.future, 'later: {0}');
      expect(direction.past, en.locale.long.direction.past);
    });

    test('preserves and overrides complete format labels', () {
      final relative = en.locale.long.relative.copyWith();
      final units = en.locale.long.units.copyWith();
      final list = en.locale.long.list.copyWith(pair: '{0} + {1}');
      final direction = en.locale.long.direction.copyWith(past: 'past {0}');
      final updated = en.locale.long.copyWith(
        relative: relative,
        units: units,
        list: list,
        direction: direction,
        cutoffResolver: _customCutoff,
        now: 'right now',
      );

      expect(updated.relative, same(relative));
      expect(updated.units, same(units));
      expect(updated.list, same(list));
      expect(updated.direction, same(direction));
      expect(updated.now, 'right now');
      expect(
        updated.cutoffResolver(4),
        (
          plural: TimeAgoPluralCategory.other,
          pattern: 'at least {0}',
        ),
      );
    });

    test('format sets preserve, override, remove, and resolve widths', () {
      const requiredOnly = TimeAgoFormatSet<String>(
        long: 'long',
        short: 'short',
      );
      expect(requiredOnly.exact(TimeAgoFormat.narrow), isNull);
      expect(requiredOnly.resolve(TimeAgoFormat.narrow), 'short');
      expect(requiredOnly.resolve(TimeAgoFormat.mini), 'short');

      final replacement = en.locale.long.copyWith(now: 'replacement');
      final updated = en.locale.formats.copyWith(long: replacement);

      expect(updated.long, same(replacement));
      expect(updated.short, same(en.locale.short));
      expect(updated.narrow, same(en.locale.narrow));
      expect(updated.mini, same(en.locale.mini));
      expect(updated.resolve(TimeAgoFormat.mini), same(en.locale.mini));

      final withoutMini = updated.copyWith(clearMini: true);
      expect(withoutMini.exact(TimeAgoFormat.mini), isNull);
      expect(withoutMini.resolve(TimeAgoFormat.mini), same(en.locale.narrow!));
      expect(withoutMini.supports(TimeAgoFormat.mini), isFalse);

      final withoutNarrow = withoutMini.copyWith(clearNarrow: true);
      expect(withoutNarrow.exact(TimeAgoFormat.narrow), isNull);
      expect(
          withoutNarrow.resolve(TimeAgoFormat.narrow), same(en.locale.short));
      expect(withoutNarrow.resolve(TimeAgoFormat.mini), same(en.locale.short));
      expect(withoutNarrow.supports(TimeAgoFormat.narrow), isFalse);
    });

    test('locale configuration preserves defaults and accepts overrides', () {
      const functions = _MarkerFunctions();
      final long = en.locale.long.copyWith(now: 'format now');
      final now = en.locale.now.copyWith(
        past: 'recently',
        current: 'currently',
        future: 'soon',
      );
      final calendar = en.locale.calendar.copyWith(today: 'this day');
      final updated = en.locale.copyWith(
        locale: const Locale('x', 'TEST'),
        long: long,
        now: now,
        calendar: calendar,
        functions: functions,
      );

      expect(updated.locale, const Locale('x', 'TEST'));
      expect(updated.long, same(long));
      expect(updated.short, same(en.locale.short));
      expect(updated.narrow, same(en.locale.narrow));
      expect(updated.mini, same(en.locale.mini));
      expect(updated.now, same(now));
      expect(updated.calendar, same(calendar));
      expect(updated.functions, same(functions));
      expect(updated.labelsFor(TimeAgoFormat.long), same(long));

      final withoutMini = updated.copyWith(clearMini: true);
      expect(withoutMini.mini, isNull);
      expect(withoutMini.labelsFor(TimeAgoFormat.mini), same(updated.narrow!));

      final withoutNarrow = withoutMini.copyWith(clearNarrow: true);
      expect(withoutNarrow.narrow, isNull);
      expect(
        withoutNarrow.labelsFor(TimeAgoFormat.narrow),
        same(updated.short),
      );
      expect(withoutNarrow.supportsFormat(TimeAgoFormat.narrow), isFalse);
    });
  });
}

TimeAgoCutoffFormat _customCutoff(int amount) {
  return (
    plural: TimeAgoPluralCategory.other,
    pattern: 'at least {0}',
  );
}

final class _MarkerFunctions extends EnTimeAgoLocaleFunctions {
  const _MarkerFunctions();
}
