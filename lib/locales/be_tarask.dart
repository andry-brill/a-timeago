import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'be'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 секунду таму',
    current: 'цяпер',
    future: 'праз 1 секунду',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'be_tarask';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'цяпер',
        past: TimeAgoPluralLabels(
            one: '{0} секунду таму',
            many: '{0} секунд таму',
            other: '{0} секунды таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} секунду',
            many: 'праз {0} секунд',
            other: 'праз {0} секунды')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'у гэту хвіліну',
        past: TimeAgoPluralLabels(
            one: '{0} хвіліну таму',
            many: '{0} хвілін таму',
            other: '{0} хвіліны таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} хвіліну',
            many: 'праз {0} хвілін',
            other: 'праз {0} хвіліны')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'у гэту гадзіну',
        past: TimeAgoPluralLabels(
            one: '{0} гадзіну таму',
            many: '{0} гадзін таму',
            other: '{0} гадзіны таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} гадзіну',
            many: 'праз {0} гадзін',
            other: 'праз {0} гадзіны')),
    day: TimeAgoRelativeUnitLabels(
        current: 'сёння',
        past: TimeAgoPluralLabels(
            one: '{0} дзень таму',
            few: '{0} дні таму',
            many: '{0} дзён таму',
            other: '{0} дня таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} дзень',
            few: 'праз {0} дні',
            many: 'праз {0} дзён',
            other: 'праз {0} дня')),
    week: TimeAgoRelativeUnitLabels(
        current: 'на гэтым тыдні',
        past: TimeAgoPluralLabels(
            one: '{0} тыдзень таму',
            few: '{0} тыдні таму',
            many: '{0} тыдняў таму',
            other: '{0} тыдня таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} тыдзень',
            few: 'праз {0} тыдні',
            many: 'праз {0} тыдняў',
            other: 'праз {0} тыдня')),
    month: TimeAgoRelativeUnitLabels(
        current: 'у гэтым месяцы',
        past: TimeAgoPluralLabels(
            one: '{0} месяц таму',
            few: '{0} месяцы таму',
            many: '{0} месяцаў таму',
            other: '{0} месяца таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} месяц',
            few: 'праз {0} месяцы',
            many: 'праз {0} месяцаў',
            other: 'праз {0} месяца')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'у гэтым квартале',
        past: TimeAgoPluralLabels(
            one: '{0} квартал таму',
            few: '{0} кварталы таму',
            many: '{0} кварталаў таму',
            other: '{0} квартала таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} квартал',
            few: 'праз {0} кварталы',
            many: 'праз {0} кварталаў',
            other: 'праз {0} квартала')),
    year: TimeAgoRelativeUnitLabels(
        current: 'сёлета',
        past: TimeAgoPluralLabels(
            one: '{0} год таму',
            few: '{0} гады таму',
            many: '{0} гадоў таму',
            other: '{0} года таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} год',
            few: 'праз {0} гады',
            many: 'праз {0} гадоў',
            other: 'праз {0} года')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} секунду', many: '{0} секунд', other: '{0} секунды'),
    minute: TimeAgoPluralLabels(
        one: '{0} хвіліну', many: '{0} хвілін', other: '{0} хвіліны'),
    hour: TimeAgoPluralLabels(
        one: '{0} гадзіну', many: '{0} гадзін', other: '{0} гадзіны'),
    day: TimeAgoPluralLabels(
        one: '{0} дзень', few: '{0} дні', many: '{0} дзён', other: '{0} дня'),
    week: TimeAgoPluralLabels(
        one: '{0} тыдзень',
        few: '{0} тыдні',
        many: '{0} тыдняў',
        other: '{0} тыдня'),
    month: TimeAgoPluralLabels(
        one: '{0} месяц',
        few: '{0} месяцы',
        many: '{0} месяцаў',
        other: '{0} месяца'),
    quarter: TimeAgoPluralLabels(
        one: '{0} квартал',
        few: '{0} кварталы',
        many: '{0} кварталаў',
        other: '{0} квартала'),
    year: TimeAgoPluralLabels(
        one: '{0} год', few: '{0} гады', many: '{0} гадоў', other: '{0} года'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} таму',
    future: 'праз {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'цяпер', past: '{0} с таму', future: 'праз {0} с'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'у гэтую хвіліну', past: '{0} хв таму', future: 'праз {0} хв'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'у гэтую гадзіну',
        past: '{0} гадз таму',
        future: 'праз {0} гадз'),
    day: TimeAgoRelativeUnitLabels(
        current: 'сёння',
        past: TimeAgoPluralLabels(
            one: '{0} дзень таму',
            few: '{0} дні таму',
            many: '{0} дзён таму',
            other: '{0} дня таму'),
        future: TimeAgoPluralLabels(
            one: 'праз {0} дзень',
            few: 'праз {0} дні',
            many: 'праз {0} дзён',
            other: 'праз {0} дня')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'на гэтым тыд.', past: '{0} тыд таму', future: 'праз {0} тыд'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'у гэтым мес.',
        past: '{0} мес. таму',
        future: 'праз {0} мес.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'у гэтым квартале',
        past: '{0} кв. таму',
        future: 'праз {0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'сёлета', past: '{0} г. таму', future: 'праз {0} г.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} с'),
    minute: TimeAgoPluralLabels.same('{0} хв'),
    hour: TimeAgoPluralLabels.same('{0} гадз'),
    day: TimeAgoPluralLabels(
        one: '{0} дзень', few: '{0} дні', many: '{0} дзён', other: '{0} дня'),
    week: TimeAgoPluralLabels.same('{0} тыд'),
    month: TimeAgoPluralLabels.same('{0} мес.'),
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
    past: '{0} таму',
    future: 'праз {0}',
  ),
);
