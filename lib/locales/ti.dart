import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ti'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ትማሊ',
    today: 'ሎሚ',
    tomorrow: 'ጽባሕ',
    dateTime: '{1} ሰዓት {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'ቅድሚ 1 ካልኢት',
    current: 'ሕጂ',
    future: 'ኣብ 1 ካልኢት',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ti';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ሕጂ', past: 'ቅድሚ {0} ካልኢት', future: 'ኣብ {0} ካልኢት'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ኣብዚ ደቒቕ', past: 'ቅድሚ {0} ደቒቕ', future: 'ኣብ {0} ደቒቕ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ኣብዚ ሰዓት', past: 'ቅድሚ {0} ሰዓት', future: 'ኣብ {0} ሰዓት'),
    day: TimeAgoRelativeUnitLabels(
        current: 'ሎሚ',
        past: TimeAgoPluralLabels(one: 'ቅድሚ {0} መዓልቲ', other: 'ኣብ {0} መዓልቲ'),
        future: TimeAgoPluralLabels.same('ኣብ {0} መዓልቲ')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ሰሙን', past: 'ቅድሚ {0} ሰሙን', future: 'ኣብ {0} ሰሙን'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ወርሒ', past: 'ቅድሚ {0} ወርሒ', future: 'ኣብ {0} ወርሒ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ርብዒ', past: 'ቅድሚ {0} ርብዒ', future: 'ኣብ {0} ርብዒ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ሎሚ ዓመት', past: 'ቅድሚ {0} ዓ', future: 'ኣብ {0} ዓ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ካልኢት'),
    minute: TimeAgoPluralLabels.same('{0} ደቒቕ'),
    hour: TimeAgoPluralLabels.same('{0} ሰዓት'),
    day: TimeAgoPluralLabels(one: '{0} መዓልቲ', other: '{0} መዓልቲ'),
    week: TimeAgoPluralLabels.same('{0} ሰሙን'),
    month: TimeAgoPluralLabels.same('{0} ወርሒ'),
    quarter: TimeAgoPluralLabels.same('{0} ርብዒ'),
    year: TimeAgoPluralLabels.same('{0} ዓ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ቅድሚ {0}',
    future: 'ኣብ {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ሕጂ', past: 'ቅድሚ {0} ካልኢት', future: 'ኣብ {0} ካልኢት'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ኣብዚ ደቒቕ', past: 'ቅድሚ {0} ደቒቕ', future: 'ኣብ {0} ደቒቕ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ኣብዚ ሰዓት', past: 'ቅድሚ {0} ሰዓት', future: 'ኣብ {0} ሰዓት'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ሎሚ', past: 'ቅድሚ {0} መዓልቲ', future: 'ኣብ {0} መዓልቲ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ሰሙን', past: 'ቅድሚ {0} ሰሙን', future: 'ኣብ {0} ሰሙን'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ወርሒ', past: 'ቅድሚ {0} ወርሒ', future: 'ኣብ {0} ወርሒ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ርብዒ', past: 'ቅድሚ {0} ርብዒ', future: 'ኣብ {0} ርብዒ'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ሎሚ ዓመት',
        past: TimeAgoPluralLabels(one: 'ቅድሚ -{0} ዓ', other: 'ቅድሚ {0} ዓ'),
        future: TimeAgoPluralLabels.same('ኣብ {0} ዓ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ካልኢት'),
    minute: TimeAgoPluralLabels.same('{0} ደቒቕ'),
    hour: TimeAgoPluralLabels.same('{0} ሰዓት'),
    day: TimeAgoPluralLabels.same('{0} መዓልቲ'),
    week: TimeAgoPluralLabels.same('{0} ሰሙን'),
    month: TimeAgoPluralLabels.same('{0} ወርሒ'),
    quarter: TimeAgoPluralLabels.same('{0} ርብዒ'),
    year: TimeAgoPluralLabels(one: '{0} ዓ', other: '{0} ዓ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ቅድሚ {0}',
    future: 'ኣብ {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ሕጂ', past: 'ቅድሚ {0} ካልኢት', future: 'ኣብ {0} ካልኢት'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ኣብዚ ደቒቕ', past: 'ቅድሚ {0} ደቒቕ', future: 'ኣብ {0} ደቒቕ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ኣብዚ ሰዓት', past: 'ቅድሚ {0} ሰዓት', future: 'ኣብ {0} ሰዓት'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ሎሚ', past: 'ቅድሚ {0} መዓልቲ', future: 'ኣብ {0} መዓልቲ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ሰሙን', past: 'ቅድሚ {0} ሰሙን', future: 'ኣብ {0} ሰሙን'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ወርሒ', past: 'ቅድሚ {0} ወርሒ', future: 'ኣብ {0} ወርሒ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ህሉው ርብዒ', past: 'ቅድሚ {0} ርብዒ', future: 'ኣብ {0} ርብዒ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ሎሚ ዓመት', past: 'ቅድሚ {0} ዓ', future: 'ኣብ {0} ዓ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ካልኢት'),
    minute: TimeAgoPluralLabels.same('{0} ደቒቕ'),
    hour: TimeAgoPluralLabels.same('{0} ሰዓት'),
    day: TimeAgoPluralLabels.same('{0} መዓልቲ'),
    week: TimeAgoPluralLabels.same('{0} ሰሙን'),
    month: TimeAgoPluralLabels.same('{0} ወርሒ'),
    quarter: TimeAgoPluralLabels.same('{0} ርብዒ'),
    year: TimeAgoPluralLabels.same('{0} ዓ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ቅድሚ {0}',
    future: 'ኣብ {0}',
  ),
);
