import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ce'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 секунд хьалха',
    current: 'хӀинца',
    future: '1 секунд яьлча',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ce';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'хӀинца',
        past: '{0} секунд хьалха',
        future: '{0} секунд яьлча'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'хӀокху минотехь',
        past: '{0} минот хьалха',
        future: '{0} минот яьлча'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'хӀокху сахьтехь',
        past: '{0} сахьт хьалха',
        future: '{0} сахьт даьлча'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'тахана', past: '{0} де хьалха', future: '{0} де даьлча'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу кӀирнахь',
        past: '{0} кӀира хьалха',
        future: '{0} кӀира даьлча'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу баттахь',
        past: '{0} бутт хьалха',
        future: '{0} бутт баьлча'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter',
        past: '{0} квартал хьалха',
        future: '{0} квартал яьлча'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу шарахь',
        past: '{0} шо хьалха',
        future: '{0} шо даьлча'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} секунд'),
    minute: TimeAgoPluralLabels.same('{0} минот'),
    hour: TimeAgoPluralLabels.same('{0} сахьт'),
    day: TimeAgoPluralLabels.same('{0} де'),
    week: TimeAgoPluralLabels.same('{0} кӀира'),
    month: TimeAgoPluralLabels.same('{0} бутт'),
    quarter: TimeAgoPluralLabels.same('{0} квартал'),
    year: TimeAgoPluralLabels.same('{0} шо'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} хьалха',
    future: '{0} яьлча',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'хӀинца', past: '{0} сек. хьалха', future: '{0} сек. яьлча'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'хӀокху минотехь',
        past: '{0} мин. хьалха',
        future: '{0} мин. яьлча'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'хӀокху сахьтехь',
        past: '{0} сахь. хьалха',
        future: '{0} сахь. даьлча'),
    day: TimeAgoRelativeUnitLabels(
        current: 'тахана',
        past: TimeAgoPluralLabels(one: '{0} д. хьалха', other: '{0} де хьалха'),
        future: TimeAgoPluralLabels.same('{0} д. даьлча')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу кӀирнахь',
        past: '{0} кӀир. хьалха',
        future: '{0} кӀир. даьлча'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу баттахь',
        past: '{0} б. хьалха',
        future: '{0} б. баьлча'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter',
        past: '{0} кв. хьалха',
        future: '{0} кв. яьлча'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу шарахь',
        past: '{0} ш. хьалха',
        future: '{0} ш. даьлча'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} сахь.'),
    day: TimeAgoPluralLabels(one: '{0} д.', other: '{0} д'),
    week: TimeAgoPluralLabels.same('{0} кӀир.'),
    month: TimeAgoPluralLabels.same('{0} б.'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels.same('{0} ш.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} хьалха',
    future: '{0} яьлча',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'хӀинца', past: '{0} сек. хьалха', future: '{0} сек. яьлча'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'хӀокху минотехь',
        past: '{0} мин. хьалха',
        future: '{0} мин. яьлча'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'хӀокху сахьтехь',
        past: '{0} сахь. хьалха',
        future: '{0} сахь. даьлча'),
    day: TimeAgoRelativeUnitLabels(
        current: 'тахана',
        past: TimeAgoPluralLabels(one: 'де хьалха', other: '{0} де хьалха'),
        future: TimeAgoPluralLabels.same('{0} д. даьлча')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу кӀирнахь',
        past: '{0} кӀир. хьалха',
        future: '{0} кӀир. даьлча'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу баттахь',
        past: '{0} б. хьалха',
        future: '{0} б. баьлча'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter',
        past: '{0} кв. хьалха',
        future: '{0} кв. яьлча'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'карарчу шарахь',
        past: '{0} ш. хьалха',
        future: '{0} ш. даьлча'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} сахь.'),
    day: TimeAgoPluralLabels(one: 'д', other: '{0} д'),
    week: TimeAgoPluralLabels.same('{0} кӀир.'),
    month: TimeAgoPluralLabels.same('{0} б.'),
    quarter: TimeAgoPluralLabels.same('{0} кв.'),
    year: TimeAgoPluralLabels.same('{0} ш.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} хьалха',
    future: '{0} яьлча',
  ),
);
