import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ru'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: '1 секунду назад',
    current: 'сейчас',
    future: 'через 1 секунду',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ru';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'сейчас',
        past: TimeAgoPluralLabels(
            one: '{0} секунду назад',
            many: '{0} секунд назад',
            other: '{0} секунды назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} секунду',
            many: 'через {0} секунд',
            other: 'через {0} секунды')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'в эту минуту',
        past: TimeAgoPluralLabels(
            one: '{0} минуту назад',
            many: '{0} минут назад',
            other: '{0} минуты назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} минуту',
            many: 'через {0} минут',
            other: 'через {0} минуты')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'в этот час',
        past: TimeAgoPluralLabels(
            one: '{0} час назад',
            many: '{0} часов назад',
            other: '{0} часа назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} час',
            many: 'через {0} часов',
            other: 'через {0} часа')),
    day: TimeAgoRelativeUnitLabels(
        current: 'сегодня',
        past: TimeAgoPluralLabels(
            one: '{0} день назад',
            many: '{0} дней назад',
            other: '{0} дня назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} день',
            many: 'через {0} дней',
            other: 'через {0} дня')),
    week: TimeAgoRelativeUnitLabels(
        current: 'на этой неделе',
        past: TimeAgoPluralLabels(
            one: '{0} неделю назад',
            many: '{0} недель назад',
            other: '{0} недели назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} неделю',
            many: 'через {0} недель',
            other: 'через {0} недели')),
    month: TimeAgoRelativeUnitLabels(
        current: 'в этом месяце',
        past: TimeAgoPluralLabels(
            one: '{0} месяц назад',
            many: '{0} месяцев назад',
            other: '{0} месяца назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} месяц',
            many: 'через {0} месяцев',
            other: 'через {0} месяца')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'в текущем квартале',
        past: TimeAgoPluralLabels(
            one: '{0} квартал назад',
            many: '{0} кварталов назад',
            other: '{0} квартала назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} квартал',
            many: 'через {0} кварталов',
            other: 'через {0} квартала')),
    year: TimeAgoRelativeUnitLabels(
        current: 'в этом году',
        past: TimeAgoPluralLabels(
            one: '{0} год назад',
            many: '{0} лет назад',
            other: '{0} года назад'),
        future: TimeAgoPluralLabels(
            one: 'через {0} год',
            many: 'через {0} лет',
            other: 'через {0} года')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} секунда', many: '{0} секунд', other: '{0} секунды'),
    minute: TimeAgoPluralLabels(
        one: '{0} минута', many: '{0} минут', other: '{0} минуты'),
    hour: TimeAgoPluralLabels(
        one: '{0} час', many: '{0} часов', other: '{0} часа'),
    day:
        TimeAgoPluralLabels(one: '{0} день', few: '{0} дня', other: '{0} дней'),
    week: TimeAgoPluralLabels(
        one: '{0} неделю', many: '{0} недель', other: '{0} недели'),
    month: TimeAgoPluralLabels(
        one: '{0} месяц', many: '{0} месяцев', other: '{0} месяца'),
    quarter: TimeAgoPluralLabels(
        one: '{0} квартал', many: '{0} кварталов', other: '{0} квартала'),
    year:
        TimeAgoPluralLabels(one: '{0} год', many: '{0} лет', other: '{0} года'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} назад',
    future: 'через {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сейчас', past: '{0} сек. назад', future: 'через {0} сек.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'в эту минуту',
        past: '{0} мин. назад',
        future: 'через {0} мин.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'в этот час', past: '{0} ч назад', future: 'через {0} ч'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'сегодня', past: '{0} дн. назад', future: 'через {0} дн.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'на этой нед.',
        past: '{0} нед. назад',
        future: 'через {0} нед.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'в этом мес.',
        past: '{0} мес. назад',
        future: 'через {0} мес.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'текущий кв.', past: '{0} кв. назад', future: 'через {0} кв.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'в этом г.',
        past: TimeAgoPluralLabels(many: '{0} л. назад', other: '{0} г. назад'),
        future:
            TimeAgoPluralLabels(many: 'через {0} л.', other: 'через {0} г.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} ч.'),
    day: TimeAgoPluralLabels(one: '{0} д.', other: '{0} дн.'),
    week: TimeAgoPluralLabels.same('{0} нед.'),
    month: TimeAgoPluralLabels.same('{0} мес.'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels(many: '{0} л.', other: '{0} г.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} назад',
    future: 'через {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сейчас', past: '-{0} с', future: '+{0} с'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'в эту минуту', past: '-{0} мин', future: '+{0} мин'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'в этот час', past: '-{0} ч', future: '+{0} ч'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'сегодня', past: '-{0} дн.', future: '+{0} дн.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'на эт. нед.', past: '-{0} нед.', future: '+{0} нед.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'в эт. мес.', past: '-{0} мес.', future: '+{0} мес.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'тек. кв.', past: '-{0} кв.', future: '+{0} кв.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'в эт. г.',
        past: TimeAgoPluralLabels(many: '-{0} л.', other: '-{0} г.'),
        future: TimeAgoPluralLabels(many: '+{0} л.', other: '+{0} г.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} с'),
    minute: TimeAgoPluralLabels.same('{0} мин'),
    hour: TimeAgoPluralLabels.same('{0} ч'),
    day: TimeAgoPluralLabels.same('{0} дн.'),
    week: TimeAgoPluralLabels.same('{0} нед.'),
    month: TimeAgoPluralLabels.same('{0} мес.'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels(many: '{0} л.', other: '{0} г.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} с'),
        future: TimeAgoPluralLabels.same('+{0} с')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} мин'),
        future: TimeAgoPluralLabels.same('+{0} мин')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} ч'),
        future: TimeAgoPluralLabels.same('+{0} ч')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} д'),
        future: TimeAgoPluralLabels.same('+{0} д')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} нед'),
        future: TimeAgoPluralLabels.same('+{0} нед')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} мес'),
        future: TimeAgoPluralLabels.same('+{0} мес')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} кв.'),
        future: TimeAgoPluralLabels.same('+{0} кв.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(many: '-{0} л', other: '-{0} г'),
        future: TimeAgoPluralLabels(many: '+{0} л', other: '+{0} г')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} с'),
    minute: TimeAgoPluralLabels.same('{0} мин'),
    hour: TimeAgoPluralLabels.same('{0} ч'),
    day: TimeAgoPluralLabels.same('{0} д'),
    week: TimeAgoPluralLabels.same('{0} нед'),
    month: TimeAgoPluralLabels.same('{0} мес'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels(many: '{0} л', other: '{0} г'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
  now: 'сейчас',
);
