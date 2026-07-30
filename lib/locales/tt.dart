import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'tt'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'кичә',
    today: 'бүген',
    tomorrow: 'иртәгә',
    dateTime: '{1} {0} сәгатьтә',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 секунд элек',
    current: 'хәзер',
    future: '1 секундтан',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'tt';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'хәзер', past: '{0} секунд элек', future: '{0} секундтан'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'бу минутта', past: '{0} минут элек', future: '{0} минуттан'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'бу сәгатьтә',
        past: '{0} сәгать элек',
        future: '{0} сәгатьтән'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бүген', past: '{0} көн элек', future: '{0} көннән'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'бу атнада', past: '{0} атна элек', future: '{0} атнадан'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бу айда', past: '{0} ай элек', future: '{0} айдан'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'бу кварталда',
        past: '{0} квартал элек',
        future: '{0} кварталдан'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быел', past: '{0} ел элек', future: '{0} елдан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} секунд'),
    minute: TimeAgoPluralLabels.same('{0} минут'),
    hour: TimeAgoPluralLabels.same('{0} сәгать'),
    day: TimeAgoPluralLabels.same('{0} көн'),
    week: TimeAgoPluralLabels.same('{0} атна'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} квартал'),
    year: TimeAgoPluralLabels.same('{0} ел'),
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
        current: 'хәзер', past: '{0} с. элек', future: '{0} с.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'бу минутта', past: '{0} мин. элек', future: '{0} мин.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'бу сәгатьтә', past: '{0} сәг. элек', future: '{0} сәг.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бүген', past: '{0} көн элек', future: '{0} көннән'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'бу атнада', past: '{0} атна элек', future: '{0} атнадан'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бу айда', past: '{0} ай элек', future: '{0} айдан'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'бу кварталда', past: '{0} кв. элек', future: '{0} кв.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быел', past: '{0} ел элек', future: '{0} елдан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} с.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} сәг.'),
    day: TimeAgoPluralLabels.same('{0} көн'),
    week: TimeAgoPluralLabels.same('{0} атна'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels.same('{0} ел'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} элек',
    future: '{0}',
  ),
);
