import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/de.dart' as de;
import 'package:any_timeago/locales/en.dart' as en;
import 'package:any_timeago/locales/en_us.dart' as en_us;
import 'package:any_timeago/steps/intl_calendar.dart' as calendar;
import 'package:any_timeago/steps/intl_twitter.dart' as twitter;
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  test('English functions support selective subclass overrides', () {
    const customized = _TestEnTimeAgoLocaleFunctions(
      numberPrefix: 'number:',
    );

    expect(customized.resolvePlural(1), TimeAgoPluralCategory.one);
    expect(customized.resolvePlural(2), TimeAgoPluralCategory.other);
    expect(customized.formatNumber(2), 'number:2');
    expect(customized.formatMonthDay(DateTime(2026, 7, 20)), '20 Jul');
    expect(
      customized.formatYearMonthDay(DateTime(2026, 7, 20)),
      '20 Jul 2026',
    );
    expect(customized.formatTime(DateTime(2026, 7, 20, 9, 5)), '09:05');
    expect(
      customized.formatTime(
        DateTime(2026, 7, 20, 9, 5, 7),
        includeSeconds: true,
      ),
      '09:05:07',
    );
  });

  test('English defaults to British locale and date formatting', () {
    final date = DateTime(2001);

    expect(en.locale.locale.languageCode, 'en');
    expect(en.locale.locale.countryCode, 'GB');
    expect(englishTimeAgoLocaleFunctions.formatMonthDay(date), '1 Jan');
    expect(
      englishTimeAgoLocaleFunctions.formatYearMonthDay(date),
      '1 Jan 2001',
    );
  });

  test('US English exposes its regional locale and fallback date formatting',
      () {
    final date = DateTime(2001);

    expect(en_us.locale.locale.languageCode, 'en');
    expect(en_us.locale.locale.countryCode, 'US');
    expect(enUsTimeAgoLocaleFunctions.formatMonthDay(date), 'Jan 1');
    expect(
      enUsTimeAgoLocaleFunctions.formatYearMonthDay(date),
      'Jan 1, 2001',
    );
    expect(
      enUsTimeAgoLocaleFunctions.formatTime(DateTime(2001, 1, 1, 9, 5)),
      '9:05 AM',
    );
    expect(
      enUsTimeAgoLocaleFunctions.formatTime(
        DateTime(2001, 1, 1, 21, 5, 7),
        includeSeconds: true,
      ),
      '9:05:07 PM',
    );
    expect(
      timeAgo(
        date,
        to: DateTime(2001, 1, 5),
        locale: en_us.locale,
        steps: twitter.steps,
        fallbackFunctions: enUsTimeAgoLocaleFunctions,
      ),
      'Jan 1',
    );
  });

  test('Intl date fallback recovers after opt-in initialization', () async {
    final date = DateTime(2026, 7, 20);
    const fallback = _TestEnTimeAgoLocaleFunctions(
      numberPrefix: 'fallback:',
      monthDayValue: 'fallback month-day',
      yearMonthDayValue: 'fallback full date',
    );

    expect(
      de.locale.functions.formatNumber(1234),
      NumberFormat.decimalPattern('de').format(1234),
    );
    expect(
      timeAgo(
        date,
        to: DateTime(2026, 7, 24),
        locale: de.locale,
        steps: twitter.steps,
        fallbackFunctions: fallback,
      ),
      'fallback month-day',
    );
    expect(
      timeAgo(
        DateTime(2025, 12, 20),
        to: DateTime(2026, 7, 24),
        locale: de.locale,
        steps: twitter.steps,
        fallbackFunctions: fallback,
      ),
      'fallback full date',
    );

    await initializeTimeAgoDateFormatting();

    expect(en.locale.functions.formatMonthDay(date), '20 Jul');
    expect(
      en.locale.functions.formatYearMonthDay(date),
      '20 Jul 2026',
    );
    expect(en_us.locale.functions.formatMonthDay(date), 'Jul 20');
    expect(
      en_us.locale.functions.formatYearMonthDay(date),
      'Jul 20, 2026',
    );
    expect(
      en.locale.functions.formatTime(DateTime(2026, 7, 20, 9, 5, 7)),
      DateFormat.jm('en_GB').format(DateTime(2026, 7, 20, 9, 5, 7)),
    );
    expect(
      en_us.locale.functions.formatTime(
        DateTime(2026, 7, 20, 9, 5, 7),
        includeSeconds: true,
      ),
      DateFormat.jms('en_US').format(DateTime(2026, 7, 20, 9, 5, 7)),
    );
    expect(
      timeAgo(
        date,
        to: DateTime(2026, 7, 24),
        locale: de.locale,
        steps: twitter.steps,
        fallbackFunctions: fallback,
      ),
      DateFormat.MMMd('de').format(date),
    );
    expect(
      timeAgo(
        DateTime(2025, 12, 20),
        to: DateTime(2026, 7, 24),
        locale: de.locale,
        steps: twitter.steps,
        fallbackFunctions: fallback,
      ),
      DateFormat.yMMMd('de').format(DateTime(2025, 12, 20)),
    );
  });

  test('unsupported Intl operations use the configured fallback', () {
    final locale = en.locale.copyWith(
      functions: const IntlTimeAgoLocaleFunctions('zz_ZZ'),
    );
    const fallback = _TestEnTimeAgoLocaleFunctions(
      numberPrefix: 'N',
      monthDayValue: 'fallback date',
      timeValue: 'fallback time',
    );

    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: locale,
        fallbackFunctions: fallback,
      ),
      'N2 minutes ago',
    );
    expect(
      timeAgo(
        DateTime(2026, 7, 20),
        to: DateTime(2026, 7, 24),
        locale: locale,
        steps: twitter.steps,
        fallbackFunctions: fallback,
      ),
      'fallback date',
    );
    expect(
      timeAgo(
        DateTime(2026, 7, 20),
        to: DateTime(2026, 7, 24),
        locale: locale,
        steps: twitter.steps,
      ),
      '20 Jul',
    );
    expect(
      timeAgo(
        DateTime(2026, 7, 24, 9, 5),
        to: DateTime(2026, 7, 24, 12),
        locale: locale,
        steps: calendar.steps,
        fallbackFunctions: fallback,
      ),
      'today at fallback time',
    );
    expect(
      () => locale.functions.formatMonthDay(DateTime(2026, 7, 20)),
      throwsA(isA<TimeAgoIntlException>()),
    );
  });

  test('plural failure falls back without replacing number or date functions',
      () {
    final locale = en.locale.copyWith(
      functions: const _PluralFailingTimeAgoLocaleFunctions(),
    );
    const fallback = _PluralFallbackTimeAgoLocaleFunctions();

    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: locale,
        fallbackFunctions: fallback,
      ),
      'primary:2 minute ago',
    );
    expect(
      timeAgo(
        DateTime(2026, 7, 20),
        to: DateTime(2026, 7, 24),
        locale: locale,
        steps: twitter.steps,
        fallbackFunctions: fallback,
      ),
      'primary month-day',
    );
  });

  test('custom function errors are not swallowed by fallback', () {
    final locale = en.locale.copyWith(
      functions: const _FailingNumberTimeAgoLocaleFunctions(),
    );

    expect(
      () => durationAgo(
        const Duration(minutes: 2),
        locale: locale,
      ),
      throwsStateError,
    );
  });

  test('custom steps receive fallback-aware resolved functions', () {
    final locale = en.locale.copyWith(
      functions: const IntlTimeAgoLocaleFunctions('zz_ZZ'),
    );
    const fallback = _TestEnTimeAgoLocaleFunctions(
      monthDayValue: 'resolved fallback',
    );

    expect(
      timeAgo(
        DateTime(2026, 7, 20),
        to: DateTime(2026, 7, 24),
        locale: locale,
        steps: <TimeAgoStep>[
          TimeAgoStep.custom(
            formatter: (context) {
              return context.resolvedFunctions.formatMonthDay(context.time!);
            },
          ),
        ],
        fallbackFunctions: fallback,
      ),
      'resolved fallback',
    );
  });
}

final class _TestEnTimeAgoLocaleFunctions extends EnTimeAgoLocaleFunctions {
  const _TestEnTimeAgoLocaleFunctions({
    this.numberPrefix,
    this.monthDayValue,
    this.yearMonthDayValue,
    this.timeValue,
  });

  final String? numberPrefix;
  final String? monthDayValue;
  final String? yearMonthDayValue;
  final String? timeValue;

  @override
  String formatNumber(num value) {
    return numberPrefix == null
        ? super.formatNumber(value)
        : '$numberPrefix$value';
  }

  @override
  String formatMonthDay(DateTime value) {
    return monthDayValue ?? super.formatMonthDay(value);
  }

  @override
  String formatYearMonthDay(DateTime value) {
    return yearMonthDayValue ?? super.formatYearMonthDay(value);
  }

  @override
  String formatTime(
    DateTime value, {
    bool includeSeconds = false,
  }) {
    return timeValue ?? super.formatTime(value, includeSeconds: includeSeconds);
  }
}

final class _FailingNumberTimeAgoLocaleFunctions
    extends EnTimeAgoLocaleFunctions {
  const _FailingNumberTimeAgoLocaleFunctions();

  @override
  String formatNumber(num value) {
    throw StateError('custom failure');
  }
}

final class _PluralFailingTimeAgoLocaleFunctions
    extends TimeAgoLocaleFunctions {
  const _PluralFailingTimeAgoLocaleFunctions();

  @override
  TimeAgoPluralCategory resolvePlural(num value) {
    throw const TimeAgoIntlException(
      localeName: 'test',
      operation: 'plural resolution',
      cause: 'unavailable',
    );
  }

  @override
  String formatNumber(num value) => 'primary:$value';

  @override
  String formatMonthDay(DateTime value) => 'primary month-day';

  @override
  String formatYearMonthDay(DateTime value) => 'primary full date';
}

final class _PluralFallbackTimeAgoLocaleFunctions
    extends TimeAgoLocaleFunctions {
  const _PluralFallbackTimeAgoLocaleFunctions();

  @override
  TimeAgoPluralCategory resolvePlural(num value) => TimeAgoPluralCategory.one;

  @override
  String formatNumber(num value) => 'fallback:$value';

  @override
  String formatMonthDay(DateTime value) => 'fallback month-day';

  @override
  String formatYearMonthDay(DateTime value) => 'fallback full date';
}
