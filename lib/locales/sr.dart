import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sr'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'јуче',
    today: 'данас',
    tomorrow: 'сутра',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'пре 1 секунде',
    current: 'сада',
    future: 'за 1 секунду',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sr';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'сада',
        past: TimeAgoPluralLabels(
            one: 'пре {0} секунде',
            few: 'пре {0} секунде',
            other: 'пре {0} секунди'),
        future: TimeAgoPluralLabels(
            one: 'за {0} секунду',
            few: 'за {0} секунде',
            other: 'за {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'овог минута',
        past: TimeAgoPluralLabels.same('пре {0} минута'),
        future:
            TimeAgoPluralLabels(one: 'за {0} минут', other: 'за {0} минута')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овог сата',
        past: TimeAgoPluralLabels(
            one: 'пре {0} сата', few: 'пре {0} сата', other: 'пре {0} сати'),
        future: TimeAgoPluralLabels(
            one: 'за {0} сат', few: 'за {0} сата', other: 'за {0} сати')),
    day: TimeAgoRelativeUnitLabels(
        current: 'данас',
        past: TimeAgoPluralLabels.same('пре {0} дана'),
        future: TimeAgoPluralLabels(one: 'за {0} дан', other: 'за {0} дана')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ове недеље',
        past: TimeAgoPluralLabels(
            one: 'пре {0} недеље',
            few: 'пре {0} недеље',
            other: 'пре {0} недеља'),
        future: TimeAgoPluralLabels(
            one: 'за {0} недељу',
            few: 'за {0} недеље',
            other: 'за {0} недеља')),
    month: TimeAgoRelativeUnitLabels(
        current: 'овог месеца',
        past: TimeAgoPluralLabels(
            one: 'пре {0} месеца',
            few: 'пре {0} месеца',
            other: 'пре {0} месеци'),
        future: TimeAgoPluralLabels(
            one: 'за {0} месец', few: 'за {0} месеца', other: 'за {0} месеци')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'овог квартала',
        past: TimeAgoPluralLabels.same('пре {0} квартала'),
        future: TimeAgoPluralLabels(
            one: 'за {0} квартал', other: 'за {0} квартала')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ове године',
        past: TimeAgoPluralLabels(
            one: 'пре {0} године',
            few: 'пре {0} године',
            other: 'пре {0} година'),
        future: TimeAgoPluralLabels(
            one: 'за {0} годину',
            few: 'за {0} године',
            other: 'за {0} година')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} секунд', few: '{0} секунде', other: '{0} секунди'),
    minute: TimeAgoPluralLabels(one: '{0} минут', other: '{0} минута'),
    hour:
        TimeAgoPluralLabels(one: '{0} сат', few: '{0} сата', other: '{0} сати'),
    day: TimeAgoPluralLabels(one: '{0} дан', other: '{0} дана'),
    week: TimeAgoPluralLabels(
        one: '{0} недељ', few: '{0} недеље', other: '{0} недеља'),
    month: TimeAgoPluralLabels(
        one: '{0} месец', few: '{0} месеца', other: '{0} месеци'),
    quarter: TimeAgoPluralLabels(one: '{0} квартал', other: '{0} квартала'),
    year: TimeAgoPluralLabels(
        one: '{0} годин', few: '{0} године', other: '{0} година'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'пре {0}',
    future: 'за {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сада', past: 'пре {0} сек.', future: 'за {0} сек.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'овог минута', past: 'пре {0} мин.', future: 'за {0} мин.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'овог сата', past: 'пре {0} ч.', future: 'за {0} ч.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'данас', past: 'пре {0} д.', future: 'за {0} д.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ове нед.', past: 'пре {0} нед.', future: 'за {0} нед.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'овог мес.', past: 'пре {0} мес.', future: 'за {0} мес.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'овог квартала', past: 'пре {0} кв.', future: 'за {0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ове год.', past: 'пре {0} год.', future: 'за {0} год.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} ч.'),
    day: TimeAgoPluralLabels.same('{0} д.'),
    week: TimeAgoPluralLabels.same('{0} нед.'),
    month: TimeAgoPluralLabels.same('{0} мес.'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels.same('{0} год.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'пре {0}',
    future: 'за {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сада', past: 'пре {0} с.', future: 'за {0} с.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'овог минута', past: 'пре {0} мин.', future: 'за {0} мин.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'овог сата', past: 'пре {0} ч.', future: 'за {0} ч.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'данас', past: 'пре {0} д.', future: 'за {0} д.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ове н.', past: 'пре {0} н.', future: 'за {0} н.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'овог мес.', past: 'пре {0} м.', future: 'за {0} м.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'овог квартала', past: 'пре {0} кв.', future: 'за {0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ове г.', past: 'пре {0} г.', future: 'за {0} г.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} с.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} ч.'),
    day: TimeAgoPluralLabels.same('{0} д.'),
    week: TimeAgoPluralLabels.same('{0} н.'),
    month: TimeAgoPluralLabels.same('{0} м.'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels.same('{0} г.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'пре {0}',
    future: 'за {0}',
  ),
);
