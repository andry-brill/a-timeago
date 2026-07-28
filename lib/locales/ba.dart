import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ba'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 секунд элек',
    current: 'хәҙер',
    future: '1 секундтан',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ba';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'хәҙер', past: '{0} секунд элек', future: '{0} секундтан'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'был минутта', past: '{0} минут элек', future: '{0} минуттан'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'был сәғәттә', past: '{0} сәғәт элек', future: '{0} сәғәттән'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бөгөн', past: '{0} көн элек', future: '{0} көндән'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'был аҙнала', past: '{0} аҙна элек', future: '{0} аҙнанан'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'был айҙа', past: '{0} ай элек', future: '{0} айҙан'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'был кварталда',
        past: '{0} квартал элек',
        future: '{0} кварталдан'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл', past: '{0} йыл элек', future: '{0} йылдан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} секунд'),
    minute: TimeAgoPluralLabels.same('{0} минут'),
    hour: TimeAgoPluralLabels.same('{0} сәғәт'),
    day: TimeAgoPluralLabels.same('{0} көн'),
    week: TimeAgoPluralLabels.same('{0} аҙна'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} квартал'),
    year: TimeAgoPluralLabels.same('{0} йыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} элек',
    future: '{0}тан',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'хәҙер', past: '{0} сек. элек', future: '{0} секундтан'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'был минутта', past: '{0} мин. элек', future: '{0} минуттан'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'был сәғәттә', past: '{0} сәғ. элек', future: '{0} сәғәттән'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бөгөн', past: '{0} көн элек', future: '{0} көндән'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'был аҙнала', past: '{0} аҙн. элек', future: '{0} аҙнанан'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'был айҙа', past: '{0} ай элек', future: '{0} айҙан'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'был кв.', past: '{0} кв. элек', future: '{0} кв. һуң'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл', past: '{0} йыл элек', future: '{0} йылдан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек'),
    minute: TimeAgoPluralLabels.same('{0} мин'),
    hour: TimeAgoPluralLabels.same('{0} сәғ'),
    day: TimeAgoPluralLabels.same('{0} көн'),
    week: TimeAgoPluralLabels.same('{0} аҙн'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels.same('{0} йыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. элек',
    future: '{0}ундтан',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'хәҙер', past: '{0} сек. элек', future: '{0} секундтан'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'был минутта', past: '{0} мин. элек', future: '{0} минуттан'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'был сәғәттә', past: '{0} сәғ. элек', future: '{0} сәғәттән'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бөгөн', past: '{0} көн элек', future: '{0} көндән'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'был аҙнала', past: '{0} аҙна элек', future: '{0} аҙнанан'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'был айҙа', past: '{0} ай элек', future: '{0} айҙан'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'был кв.', past: '{0} кв. элек', future: '{0} кв. һуң'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл', past: '{0} йыл элек', future: '{0} йылдан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек'),
    minute: TimeAgoPluralLabels.same('{0} мин'),
    hour: TimeAgoPluralLabels.same('{0} сәғ'),
    day: TimeAgoPluralLabels.same('{0} көн'),
    week: TimeAgoPluralLabels.same('{0} аҙна'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels.same('{0} йыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. элек',
    future: '{0}ундтан',
  ),
);
