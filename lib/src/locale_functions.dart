import 'package:intl/intl.dart';

import 'enums.dart';

/// Plural, number, and date operations used by `LocaleConfig`.
abstract class TimeAgoLocaleFunctions {
  const TimeAgoLocaleFunctions();

  TimeAgoPluralCategory resolvePlural(num value);

  String formatNumber(num value);

  String formatMonthDay(DateTime value);

  String formatYearMonthDay(DateTime value);
}

/// Const, non-Intl British English locale operations.
///
/// Extend this class to override selected fallback behavior while retaining
/// the remaining British English operations.
class EnTimeAgoLocaleFunctions extends TimeAgoLocaleFunctions {
  const EnTimeAgoLocaleFunctions();

  static const _englishMonths = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  @override
  TimeAgoPluralCategory resolvePlural(num value) {
    return value == 1 ? TimeAgoPluralCategory.one : TimeAgoPluralCategory.other;
  }

  @override
  String formatNumber(num value) => value.toString();

  @override
  String formatMonthDay(DateTime value) {
    return '${value.day} ${_englishMonths[value.month - 1]}';
  }

  @override
  String formatYearMonthDay(DateTime value) {
    return '${formatMonthDay(value)} ${value.year}';
  }
}

/// Const British English operations used as the default non-Intl fallback.
const englishTimeAgoLocaleFunctions = EnTimeAgoLocaleFunctions();

/// Const, non-Intl US English locale operations.
///
/// Use this as [fallbackFunctions] with the `en-US` locale when Intl date
/// symbols may not have been initialized.
class EnUsTimeAgoLocaleFunctions extends EnTimeAgoLocaleFunctions {
  const EnUsTimeAgoLocaleFunctions();

  @override
  String formatMonthDay(DateTime value) {
    return '${EnTimeAgoLocaleFunctions._englishMonths[value.month - 1]} '
        '${value.day}';
  }

  @override
  String formatYearMonthDay(DateTime value) {
    return '${formatMonthDay(value)}, ${value.year}';
  }
}

/// Const US English operations for use as a non-Intl fallback.
const enUsTimeAgoLocaleFunctions = EnUsTimeAgoLocaleFunctions();

/// An error raised when an operation cannot be completed by `package:intl`.
///
/// Formatting entry points catch only this error before invoking their
/// configured fallback functions. Errors from custom functions remain visible.
final class TimeAgoIntlException implements Exception {
  const TimeAgoIntlException({
    required this.localeName,
    required this.operation,
    required this.cause,
  });

  final String localeName;
  final String operation;
  final Object cause;

  @override
  String toString() {
    return 'TimeAgoIntlException: Intl $operation failed for '
        '"$localeName": $cause';
  }
}

/// Resolves locale operations through [fallback] when Intl is unavailable.
///
/// Used internally by the formatting pipeline.
TimeAgoLocaleFunctions resolveLocaleFunctionsWithFallback(
  TimeAgoLocaleFunctions primary,
  TimeAgoLocaleFunctions fallback,
) {
  return _FallbackTimeAgoLocaleFunctions(primary, fallback);
}

final class _FallbackTimeAgoLocaleFunctions extends TimeAgoLocaleFunctions {
  const _FallbackTimeAgoLocaleFunctions(this.primary, this.fallback);

  final TimeAgoLocaleFunctions primary;
  final TimeAgoLocaleFunctions fallback;

  T _resolve<T>(T Function(TimeAgoLocaleFunctions functions) operation) {
    try {
      return operation(primary);
    } on TimeAgoIntlException {
      return operation(fallback);
    }
  }

  @override
  TimeAgoPluralCategory resolvePlural(num value) {
    return _resolve((functions) => functions.resolvePlural(value));
  }

  @override
  String formatNumber(num value) {
    return _resolve((functions) => functions.formatNumber(value));
  }

  @override
  String formatMonthDay(DateTime value) {
    return _resolve((functions) => functions.formatMonthDay(value));
  }

  @override
  String formatYearMonthDay(DateTime value) {
    return _resolve((functions) => functions.formatYearMonthDay(value));
  }
}

final _numberFormats = <String, NumberFormat>{};
final _monthDayFormats = <String, DateFormat>{};
final _yearMonthDayFormats = <String, DateFormat>{};

/// Locale operations backed by `package:intl`.
///
/// Successful formatter construction is cached. Failures are not cached, so
/// date formatting can recover after Intl date symbols are initialized.
final class IntlTimeAgoLocaleFunctions extends TimeAgoLocaleFunctions {
  const IntlTimeAgoLocaleFunctions(this.localeName);

  final String localeName;

  static void clearCache() {
    _numberFormats.clear();
    _monthDayFormats.clear();
    _yearMonthDayFormats.clear();
  }

  @override
  TimeAgoPluralCategory resolvePlural(num value) {
    final category = _runIntl<String>(
      localeName,
      'plural resolution',
      () => Intl.pluralLogic<String>(
        value,
        zero: 'zero',
        one: 'one',
        two: 'two',
        few: 'few',
        many: 'many',
        other: 'other',
        locale: localeName,
        useExplicitNumberCases: false,
      ),
    );
    return switch (category) {
      'zero' => TimeAgoPluralCategory.zero,
      'one' => TimeAgoPluralCategory.one,
      'two' => TimeAgoPluralCategory.two,
      'few' => TimeAgoPluralCategory.few,
      'many' => TimeAgoPluralCategory.many,
      _ => TimeAgoPluralCategory.other,
    };
  }

  @override
  String formatNumber(num value) {
    return _runIntl<String>(
      localeName,
      'number formatting',
      () {
        final formatter = _numberFormats[localeName] ??=
            NumberFormat.decimalPattern(localeName);
        return formatter.format(value);
      },
    );
  }

  @override
  String formatMonthDay(DateTime value) {
    return _runIntl<String>(
      localeName,
      'month-day formatting',
      () {
        final formatter =
            _monthDayFormats[localeName] ??= DateFormat.MMMd(localeName);
        return formatter.format(value);
      },
    );
  }

  @override
  String formatYearMonthDay(DateTime value) {
    return _runIntl<String>(
      localeName,
      'year-month-day formatting',
      () {
        final formatter =
            _yearMonthDayFormats[localeName] ??= DateFormat.yMMMd(localeName);
        return formatter.format(value);
      },
    );
  }

  static T _runIntl<T>(
    String localeName,
    String operation,
    T Function() callback,
  ) {
    try {
      return callback();
    } on ArgumentError catch (error, stackTrace) {
      Error.throwWithStackTrace(
        TimeAgoIntlException(
          localeName: localeName,
          operation: operation,
          cause: error,
        ),
        stackTrace,
      );
    } on Exception catch (error, stackTrace) {
      Error.throwWithStackTrace(
        TimeAgoIntlException(
          localeName: localeName,
          operation: operation,
          cause: error,
        ),
        stackTrace,
      );
    }
  }
}
