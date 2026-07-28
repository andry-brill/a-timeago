import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(
      languageCode: 'sr', scriptCode: 'Cyrl', countryCode: 'BA'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'прије 1 секунде',
    current: 'сада',
    future: 'за 1 секунду',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sr_Cyrl_BA';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'сада',
        past: TimeAgoPluralLabels(
            one: 'прије {0} секунде',
            few: 'прије {0} секунде',
            other: 'прије {0} секунди'),
        future: TimeAgoPluralLabels(
            one: 'за {0} секунду',
            few: 'за {0} секунде',
            other: 'за {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'овог минута',
        past: TimeAgoPluralLabels.same('прије {0} минута'),
        future:
            TimeAgoPluralLabels(one: 'за {0} минут', other: 'за {0} минута')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овог сата',
        past: TimeAgoPluralLabels(
            one: 'прије {0} сата',
            few: 'прије {0} сата',
            other: 'прије {0} сати'),
        future: TimeAgoPluralLabels(
            one: 'за {0} сат', few: 'за {0} сата', other: 'за {0} сати')),
    day: TimeAgoRelativeUnitLabels(
        current: 'данас',
        past: TimeAgoPluralLabels.same('прије {0} дана'),
        future: TimeAgoPluralLabels(one: 'за {0} дан', other: 'за {0} дана')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ове седмице',
        past: TimeAgoPluralLabels(
            one: 'прије {0} седмице',
            few: 'прије {0} седмице',
            other: 'прије {0} седмица'),
        future: TimeAgoPluralLabels(
            one: 'за {0} седмицу',
            few: 'за {0} седмице',
            other: 'за {0} седмица')),
    month: TimeAgoRelativeUnitLabels(
        current: 'овог мјесеца',
        past: TimeAgoPluralLabels(
            one: 'прије {0} мјесеца',
            few: 'прије {0} мјесеца',
            other: 'прије {0} мјесеци'),
        future: TimeAgoPluralLabels(
            one: 'за {0} мјесец',
            few: 'за {0} мјесеца',
            other: 'за {0} мјесеци')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'овог квартала',
        past: TimeAgoPluralLabels.same('прије {0} квартала'),
        future: TimeAgoPluralLabels(
            one: 'за {0} квартал', other: 'за {0} квартала')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ове године',
        past: TimeAgoPluralLabels(
            one: 'прије {0} године',
            few: 'прије {0} године',
            other: 'прије {0} година'),
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
        one: '{0} седмиц', few: '{0} седмице', other: '{0} седмица'),
    month: TimeAgoPluralLabels(
        one: '{0} мјесец', few: '{0} мјесеца', other: '{0} мјесеци'),
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
    past: 'прије {0}',
    future: 'за {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сада', past: 'прије {0} сек.', future: 'за {0} сек.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'овог минута', past: 'прије {0} мин.', future: 'за {0} мин.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'овог сата', past: 'прије {0} ч.', future: 'за {0} ч.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'данас', past: 'прије {0} д.', future: 'за {0} д.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ове седм.', past: 'прије {0} седм.', future: 'за {0} седм.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'овог мјес.', past: 'прије {0} мјес.', future: 'за {0} мјес.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'овог квартала', past: 'прије {0} кв.', future: 'за {0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ове год.', past: 'прије {0} год.', future: 'за {0} год.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} ч.'),
    day: TimeAgoPluralLabels.same('{0} д.'),
    week: TimeAgoPluralLabels.same('{0} седм.'),
    month: TimeAgoPluralLabels.same('{0} мјес.'),
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
    past: 'прије {0}',
    future: 'за {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сада', past: 'прије {0} с.', future: 'за {0} с.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'овог минута', past: 'прије {0} мин.', future: 'за {0} мин.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'овог сата', past: 'прије {0} ч.', future: 'за {0} ч.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'данас', past: 'прије {0} д.', future: 'за {0} д.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ове с.', past: 'прије {0} с.', future: 'за {0} с.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'овог мјес.', past: 'прије {0} м.', future: 'за {0} м.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'овог квартала', past: 'прије {0} кв.', future: 'за {0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ове г.', past: 'прије {0} г.', future: 'за {0} г.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} с.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} ч.'),
    day: TimeAgoPluralLabels.same('{0} д.'),
    week: TimeAgoPluralLabels.same('{0} с.'),
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
    past: 'прије {0}',
    future: 'за {0}',
  ),
);
