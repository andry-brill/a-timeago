import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'bs', scriptCode: 'Cyrl'),
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
    past: 'прије 1 секунд',
    current: 'сада',
    future: 'за 1 секунд',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'bs_Cyrl';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'сада',
        past: TimeAgoPluralLabels(
            one: 'прије {0} секунд',
            few: 'прије {0} секунде',
            other: 'прије {0} секунди'),
        future: TimeAgoPluralLabels(
            one: 'за {0} секунд',
            few: 'за {0} секунде',
            other: 'за {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'овог минута',
        past: TimeAgoPluralLabels(
            one: 'прије {0} минут', other: 'прије {0} минута'),
        future:
            TimeAgoPluralLabels(one: 'за {0} минут', other: 'за {0} минута')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овог сата',
        past: TimeAgoPluralLabels(
            one: 'прије {0} сат',
            few: 'прије {0} сата',
            other: 'прије {0} сати'),
        future: TimeAgoPluralLabels(
            one: 'за {0} сат', few: 'за {0} сата', other: 'за {0} сати')),
    day: TimeAgoRelativeUnitLabels(
        current: 'данас',
        past:
            TimeAgoPluralLabels(one: 'прије {0} дан', other: 'прије {0} дана'),
        future: TimeAgoPluralLabels(one: 'за {0} дан', other: 'за {0} дана')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ове седмице',
        past: TimeAgoPluralLabels(
            one: 'прије {0} седмицу',
            few: 'прије {0} седмице',
            other: 'прије {0} седмица'),
        future: TimeAgoPluralLabels(
            one: 'за {0} седмицу',
            few: 'за {0} седмице',
            other: 'за {0} седмица')),
    month: TimeAgoRelativeUnitLabels(
        current: 'овог мјесеца',
        past: TimeAgoPluralLabels(
            one: 'прије {0} мјесец',
            few: 'прије {0} мјесеца',
            other: 'прије {0} мјесеци'),
        future: TimeAgoPluralLabels(
            one: 'за {0} мјесец',
            few: 'за {0} мјесеца',
            other: 'за {0} мјесеци')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ово тромјесечје', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ове године',
        past: TimeAgoPluralLabels(
            one: 'прије {0} годину',
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
        one: '{0} седмицу', few: '{0} седмице', other: '{0} седмица'),
    month: TimeAgoPluralLabels(
        one: '{0} мјесец', few: '{0} мјесеца', other: '{0} мјесеци'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(
        one: '{0} годину', few: '{0} године', other: '{0} година'),
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
    second: TimeAgoRelativeUnitLabels(
        current: 'сада',
        past: TimeAgoPluralLabels.same('прије {0} сек.'),
        future: TimeAgoPluralLabels(
            one: 'за {0} сек.',
            few: 'за {0} секунде',
            other: 'за {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'овог минута',
        past: TimeAgoPluralLabels(
            one: 'прије {0} минут', other: 'прије {0} минута'),
        future:
            TimeAgoPluralLabels(one: 'за {0} минут', other: 'за {0} минута')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овог сата',
        past: TimeAgoPluralLabels(
            one: 'прије {0} сат',
            few: 'прије {0} сата',
            other: 'прије {0} сати'),
        future: TimeAgoPluralLabels(
            one: 'за {0} сат', few: 'за {0} сата', other: 'за {0} сати')),
    day: TimeAgoRelativeUnitLabels(
        current: 'данас',
        past:
            TimeAgoPluralLabels(one: 'прије {0} дан', other: 'прије {0} дана'),
        future: TimeAgoPluralLabels(one: 'за {0} дан', other: 'за {0} дана')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ове седм.', past: 'прије {0} седм.', future: 'за {0} седм.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'овог мјес.',
        past: TimeAgoPluralLabels(
            one: 'прије {0} мјесец',
            few: 'прије {0} мјесеца',
            other: 'прије {0} мјесеци'),
        future: TimeAgoPluralLabels(
            one: 'за {0} мјесец',
            few: 'за {0} мјесеца',
            other: 'за {0} мјесеци')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ово тромјесечје', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ове год.',
        past: TimeAgoPluralLabels(
            one: 'прије {0} годину',
            few: 'прије {0} године',
            other: 'прије {0} година'),
        future: TimeAgoPluralLabels(
            one: 'за {0} годину',
            few: 'за {0} године',
            other: 'за {0} година')),
  ),
  units: TimeAgoUnitLabels(
    second:
        TimeAgoPluralLabels(one: '{0} сек', few: '{0} сек', other: '{0} сек'),
    minute: TimeAgoPluralLabels(one: '{0} минут', other: '{0} минута'),
    hour:
        TimeAgoPluralLabels(one: '{0} сат', few: '{0} сата', other: '{0} сати'),
    day: TimeAgoPluralLabels(one: '{0} дан', other: '{0} дана'),
    week: TimeAgoPluralLabels.same('{0} седм'),
    month: TimeAgoPluralLabels(
        one: '{0} мјесец', few: '{0} мјесеца', other: '{0} мјесеци'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(
        one: '{0} годину', few: '{0} године', other: '{0} година'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'прије {0}.',
    future: 'за {0}унди',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'сада',
        past: TimeAgoPluralLabels.same('прије {0} сек.'),
        future: TimeAgoPluralLabels(
            one: 'за {0} сек.',
            few: 'за {0} секунде',
            other: 'за {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'овог минута',
        past: TimeAgoPluralLabels.same('прије {0} мин.'),
        future:
            TimeAgoPluralLabels(one: 'за {0} минут', other: 'за {0} минута')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овог сата',
        past: TimeAgoPluralLabels(
            one: 'прије {0} сат',
            few: 'прије {0} сата',
            other: 'прије {0} сати'),
        future: TimeAgoPluralLabels(
            one: 'за {0} сат', few: 'за {0} сата', other: 'за {0} сати')),
    day: TimeAgoRelativeUnitLabels(
        current: 'данас',
        past:
            TimeAgoPluralLabels(one: 'прије {0} дан', other: 'прије {0} дана'),
        future: TimeAgoPluralLabels(one: 'за {0} дан', other: 'за {0} дана')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ове седм.', past: 'прије {0} седм.', future: 'за {0} седм.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ов. мјес.', past: 'прије {0} мјес.', future: 'за {0} мјес.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ово тромјесечје', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ове год.',
        past: TimeAgoPluralLabels(
            one: 'прије {0} годину',
            few: 'прије {0} године',
            other: 'прије {0} година'),
        future: TimeAgoPluralLabels(
            one: 'за {0} годину',
            few: 'за {0} године',
            other: 'за {0} година')),
  ),
  units: TimeAgoUnitLabels(
    second:
        TimeAgoPluralLabels(one: '{0} сек', few: '{0} сек', other: '{0} сек'),
    minute: TimeAgoPluralLabels(one: '{0} мин', other: '{0} мин'),
    hour:
        TimeAgoPluralLabels(one: '{0} сат', few: '{0} сата', other: '{0} сати'),
    day: TimeAgoPluralLabels(one: '{0} дан', other: '{0} дана'),
    week: TimeAgoPluralLabels.same('{0} седм'),
    month: TimeAgoPluralLabels.same('{0} мјес'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(
        one: '{0} годину', few: '{0} године', other: '{0} година'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'прије {0}.',
    future: 'за {0}унди',
  ),
);
