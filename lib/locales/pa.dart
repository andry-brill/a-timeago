import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'pa'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ਬੀਤਿਆ ਕੱਲ੍ਹ',
    today: 'ਅੱਜ',
    tomorrow: 'ਭਲਕੇ',
    dateTime: '{1} {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 ਸਕਿੰਟ ਪਹਿਲਾਂ',
    current: 'ਹੁਣ',
    future: '1 ਸਕਿੰਟ ਵਿੱਚ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'pa';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ਹੁਣ',
        past: TimeAgoPluralLabels.same('{0} ਸਕਿੰਟ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਸਕਿੰਟ ਵਿੱਚ', other: '{0} ਸਕਿੰਟਾਂ ਵਿੱਚ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ਇਸ ਮਿੰਟ',
        past: TimeAgoPluralLabels.same('{0} ਮਿੰਟ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਮਿੰਟ ਵਿੱਚ', other: '{0} ਮਿੰਟਾਂ ਵਿੱਚ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ਇਸ ਘੰਟੇ',
        past: TimeAgoPluralLabels(
            one: '{0} ਘੰਟਾ ਪਹਿਲਾਂ', other: '{0} ਘੰਟੇ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਘੰਟੇ ਵਿੱਚ', other: '{0} ਘੰਟਿਆਂ ਵਿੱਚ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ਅੱਜ',
        past: TimeAgoPluralLabels.same('{0} ਦਿਨ ਪਹਿਲਾਂ'),
        future:
            TimeAgoPluralLabels(one: '{0} ਦਿਨ ਵਿੱਚ', other: '{0} ਦਿਨਾਂ ਵਿੱਚ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ਇਹ ਹਫ਼ਤਾ',
        past: TimeAgoPluralLabels(
            one: '{0} ਹਫ਼ਤਾ ਪਹਿਲਾਂ', other: '{0} ਹਫ਼ਤੇ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਹਫ਼ਤੇ ਵਿੱਚ', other: '{0} ਹਫ਼ਤਿਆਂ ਵਿੱਚ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ਇਹ ਮਹੀਨਾ',
        past: TimeAgoPluralLabels(
            one: '{0} ਮਹੀਨਾ ਪਹਿਲਾਂ', other: '{0} ਮਹੀਨੇ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਮਹੀਨੇ ਵਿੱਚ', other: '{0} ਮਹੀਨਿਆਂ ਵਿੱਚ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ਇਸ ਤਿਮਾਹੀ',
        past: TimeAgoPluralLabels(
            one: '{0} ਤਿਮਾਹੀ ਪਹਿਲਾਂ', other: '{0} ਤਿਮਾਹੀਆਂ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਤਿਮਾਹੀ ਵਿੱਚ', other: '{0} ਤਿਮਾਹੀਆਂ ਵਿੱਚ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ਇਹ ਸਾਲ',
        past: TimeAgoPluralLabels.same('{0} ਸਾਲ ਪਹਿਲਾਂ'),
        future:
            TimeAgoPluralLabels(one: '{0} ਸਾਲ ਵਿੱਚ', other: '{0} ਸਾਲਾਂ ਵਿੱਚ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ਸਕਿੰਟ', other: '{0} ਸਕਿੰਟ'),
    minute: TimeAgoPluralLabels(one: '{0} ਮਿੰਟ', other: '{0} ਮਿੰਟ'),
    hour: TimeAgoPluralLabels(one: '{0} ਘੰਟ', other: '{0} ਘੰਟ'),
    day: TimeAgoPluralLabels(one: '{0} ਦਿਨ', other: '{0} ਦਿਨ'),
    week: TimeAgoPluralLabels(one: '{0} ਹਫ਼ਤ', other: '{0} ਹਫ਼ਤ'),
    month: TimeAgoPluralLabels(one: '{0} ਮਹੀਨ', other: '{0} ਮਹੀਨ'),
    quarter: TimeAgoPluralLabels(one: '{0} ਤਿਮਾਹੀ', other: '{0} ਤਿਮਾਹੀਆਂ'),
    year: TimeAgoPluralLabels(one: '{0} ਸਾਲ', other: '{0} ਸਾਲ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ਪਹਿਲਾਂ',
    future: '{0}ਾਂ ਵਿੱਚ',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ਹੁਣ',
        past: TimeAgoPluralLabels.same('{0} ਸਕਿੰਟ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਸਕਿੰਟ ਵਿੱਚ', other: '{0} ਸਕਿੰਟਾਂ ਵਿੱਚ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ਇਸ ਮਿੰਟ',
        past: TimeAgoPluralLabels.same('{0} ਮਿੰਟ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਮਿੰਟ ਵਿੱਚ', other: '{0} ਮਿੰਟਾਂ ਵਿੱਚ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ਇਸ ਘੰਟੇ',
        past: TimeAgoPluralLabels(
            one: '{0} ਘੰਟਾ ਪਹਿਲਾਂ', other: '{0} ਘੰਟੇ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਘੰਟੇ ਵਿੱਚ', other: '{0} ਘੰਟਿਆਂ ਵਿੱਚ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ਅੱਜ',
        past: TimeAgoPluralLabels.same('{0} ਦਿਨ ਪਹਿਲਾਂ'),
        future:
            TimeAgoPluralLabels(one: '{0} ਦਿਨ ਵਿੱਚ', other: '{0} ਦਿਨਾਂ ਵਿੱਚ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ਇਹ ਹਫ਼ਤਾ',
        past: TimeAgoPluralLabels(
            one: '{0} ਹਫ਼ਤਾ ਪਹਿਲਾਂ', other: '{0} ਹਫ਼ਤੇ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਹਫ਼ਤੇ ਵਿੱਚ', other: '{0} ਹਫ਼ਤਿਆਂ ਵਿੱਚ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ਇਹ ਮਹੀਨਾ',
        past: TimeAgoPluralLabels(
            one: '{0} ਮਹੀਨਾ ਪਹਿਲਾਂ', other: '{0} ਮਹੀਨੇ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਮਹੀਨੇ ਵਿੱਚ', other: '{0} ਮਹੀਨਿਆਂ ਵਿੱਚ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ਇਹ ਤਿਮਾਹੀ',
        past: TimeAgoPluralLabels(
            one: '{0} ਤਿਮਾਹੀ ਪਹਿਲਾਂ', other: '{0} ਤਿਮਾਹੀਆਂ ਪਹਿਲਾਂ'),
        future: TimeAgoPluralLabels(
            one: '{0} ਤਿਮਾਹੀ ਵਿੱਚ', other: '{0} ਤਿਮਾਹੀਆਂ ਵਿੱਚ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ਇਹ ਸਾਲ',
        past: TimeAgoPluralLabels.same('{0} ਸਾਲ ਪਹਿਲਾਂ'),
        future:
            TimeAgoPluralLabels(one: '{0} ਸਾਲ ਵਿੱਚ', other: '{0} ਸਾਲਾਂ ਵਿੱਚ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ਸਕਿੰਟ', other: '{0} ਸਕਿੰਟ'),
    minute: TimeAgoPluralLabels(one: '{0} ਮਿੰਟ', other: '{0} ਮਿੰਟ'),
    hour: TimeAgoPluralLabels(one: '{0} ਘੰਟ', other: '{0} ਘੰਟ'),
    day: TimeAgoPluralLabels(one: '{0} ਦਿਨ', other: '{0} ਦਿਨ'),
    week: TimeAgoPluralLabels(one: '{0} ਹਫ਼ਤ', other: '{0} ਹਫ਼ਤ'),
    month: TimeAgoPluralLabels(one: '{0} ਮਹੀਨ', other: '{0} ਮਹੀਨ'),
    quarter: TimeAgoPluralLabels(one: '{0} ਤਿਮਾਹੀ', other: '{0} ਤਿਮਾਹੀਆਂ'),
    year: TimeAgoPluralLabels(one: '{0} ਸਾਲ', other: '{0} ਸਾਲ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ਪਹਿਲਾਂ',
    future: '{0}ਾਂ ਵਿੱਚ',
  ),
);
