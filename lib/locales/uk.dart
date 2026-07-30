import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'uk'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'учора',
    today: 'сьогодні',
    tomorrow: 'завтра',
    dateTime: '{1} о {0}',
    relativeDateTime: '{1} о {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 секунду тому',
    current: 'зараз',
    future: 'через 1 секунду',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'uk';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'зараз',
        past: TimeAgoPluralLabels(
            one: '{0} секунду тому',
            many: '{0} секунд тому',
            other: '{0} секунди тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} секунду',
            many: 'через {0} секунд',
            other: 'через {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'цієї хвилини',
        past: TimeAgoPluralLabels(
            one: '{0} хвилину тому',
            many: '{0} хвилин тому',
            other: '{0} хвилини тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} хвилину',
            many: 'через {0} хвилин',
            other: 'через {0} хвилини')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'цієї години',
        past: TimeAgoPluralLabels(
            one: '{0} годину тому',
            many: '{0} годин тому',
            other: '{0} години тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} годину',
            many: 'через {0} годин',
            other: 'через {0} години')),
    day: TimeAgoRelativeUnitLabels(
        current: 'сьогодні',
        past: TimeAgoPluralLabels(
            one: '{0} день тому',
            few: '{0} дні тому',
            many: '{0} днів тому',
            other: '{0} дня тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} день',
            few: 'через {0} дні',
            many: 'через {0} днів',
            other: 'через {0} дня')),
    week: TimeAgoRelativeUnitLabels(
        current: 'цього тижня',
        past: TimeAgoPluralLabels(
            one: '{0} тиждень тому',
            few: '{0} тижні тому',
            many: '{0} тижнів тому',
            other: '{0} тижня тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} тиждень',
            few: 'через {0} тижні',
            many: 'через {0} тижнів',
            other: 'через {0} тижня')),
    month: TimeAgoRelativeUnitLabels(
        current: 'цього місяця',
        past: TimeAgoPluralLabels(
            one: '{0} місяць тому',
            few: '{0} місяці тому',
            many: '{0} місяців тому',
            other: '{0} місяця тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} місяць',
            few: 'через {0} місяці',
            many: 'через {0} місяців',
            other: 'через {0} місяця')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'цього кварталу',
        past: TimeAgoPluralLabels(
            one: '{0} квартал тому',
            few: '{0} квартали тому',
            many: '{0} кварталів тому',
            other: '{0} кварталу тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} квартал',
            few: 'через {0} квартали',
            many: 'через {0} кварталів',
            other: 'через {0} кварталу')),
    year: TimeAgoRelativeUnitLabels(
        current: 'цього року',
        past: TimeAgoPluralLabels(
            one: '{0} рік тому',
            few: '{0} роки тому',
            many: '{0} років тому',
            other: '{0} року тому'),
        future: TimeAgoPluralLabels(
            one: 'через {0} рік',
            few: 'через {0} роки',
            many: 'через {0} років',
            other: 'через {0} року')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} секунду', many: '{0} секунд', other: '{0} секунди'),
    minute: TimeAgoPluralLabels(
        one: '{0} хвилину', many: '{0} хвилин', other: '{0} хвилини'),
    hour: TimeAgoPluralLabels(
        one: '{0} годину', many: '{0} годин', other: '{0} години'),
    day: TimeAgoPluralLabels(
        one: '{0} день', few: '{0} дні', many: '{0} днів', other: '{0} дня'),
    week: TimeAgoPluralLabels(
        one: '{0} тиждень',
        few: '{0} тижні',
        many: '{0} тижнів',
        other: '{0} тижня'),
    month: TimeAgoPluralLabels(
        one: '{0} місяць',
        few: '{0} місяці',
        many: '{0} місяців',
        other: '{0} місяця'),
    quarter: TimeAgoPluralLabels(
        one: '{0} квартал',
        few: '{0} квартали',
        many: '{0} кварталів',
        other: '{0} кварталу'),
    year: TimeAgoPluralLabels(
        one: '{0} рік', few: '{0} роки', many: '{0} років', other: '{0} року'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} тому',
    future: 'через {0}',
  ),
);

const _shortNarrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} с'),
  minute: TimeAgoPluralLabels.same('{0} хв'),
  hour: TimeAgoPluralLabels.same('{0} год'),
  day: TimeAgoPluralLabels.same('{0} дн.'),
  week: TimeAgoPluralLabels.same('{0} тиж.'),
  month: TimeAgoPluralLabels.same('{0} міс.'),
  quarter: TimeAgoPluralLabels.same('{0} кв.'),
  year: TimeAgoPluralLabels.same('{0} р.'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'зараз', past: '{0} с тому', future: 'через {0} с'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'цієї хвилини', past: '{0} хв тому', future: 'через {0} хв'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'цієї години', past: '{0} год тому', future: 'через {0} год'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'сьогодні', past: '{0} дн. тому', future: 'через {0} дн.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'цього тижня',
        past: '{0} тиж. тому',
        future: 'через {0} тиж.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'цього місяця',
        past: '{0} міс. тому',
        future: 'через {0} міс.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'цього кв.', past: '{0} кв. тому', future: 'через {0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'цьогоріч', past: '{0} р. тому', future: 'через {0} р.'),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} тому',
    future: 'через {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'зараз', past: '{0} с тому', future: 'за {0} с'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'цієї хвилини', past: '{0} хв тому', future: 'за {0} хв'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'цієї години', past: '{0} год тому', future: 'за {0} год'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'сьогодні', past: '{0} дн. тому', future: 'за {0} дн.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'цього тижня', past: '{0} тиж. тому', future: 'за {0} тиж.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'цього міс.', past: '{0} міс. тому', future: 'за {0} міс.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'цього кв.', past: '{0} кв. тому', future: 'за {0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'цього року', past: '{0} р. тому', future: 'за {0} р.'),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} тому',
    future: 'за {0}',
  ),
);
