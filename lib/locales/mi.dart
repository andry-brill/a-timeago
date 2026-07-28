import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'mi'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '-1 hēkona i mua',
    current: 'ināianei',
    future: '+1 hēkona',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'mi';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ināianei', past: '-{0} hēkona i mua', future: '+{0} hēkona'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei meneti',
        past: '-{0} meneti i mua',
        future: '+{0} meneti'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei haora',
        past: '-{0} haora i mua',
        future: '+{0} haora'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei rā', past: '-{0} rā i mua', future: '+{0} rā'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei wiki', past: '-{0} wiki i mua', future: '+{0} wiki'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei marama',
        past: '-{0} marama i mua',
        future: '+{0} marama'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tēnei hauwhā',
        past: '-{0} hauwhā i mua',
        future: '+{0} hauwhā'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei tau',
        past: 'i te {0} tau i mua',
        future: 'ā te {0} tau'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} hēkona'),
    minute: TimeAgoPluralLabels.same('{0} meneti'),
    hour: TimeAgoPluralLabels.same('{0} haora'),
    day: TimeAgoPluralLabels.same('{0} rā'),
    week: TimeAgoPluralLabels.same('{0} wiki'),
    month: TimeAgoPluralLabels.same('{0} marama'),
    quarter: TimeAgoPluralLabels.same('{0} hauwhā'),
    year: TimeAgoPluralLabels.same('{0} tau'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0} i mua',
    future: '+{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ināianei', past: '-{0} h.', future: '+{0} h.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei meneti', past: '-{0} men.', future: '+{0} men.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei haora', past: '-{0} h.', future: '+{0} h.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei rā', past: '-{0} rā', future: '+{0} rā'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei w.', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei m.', past: '-{0} m.', future: '+{0} m.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tēnei hauwhā', past: '-{0} hwh', future: '+{0} hwh'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei tau', past: 'i te {0} tau', future: 'ā te {0} tau'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} h.'),
    minute: TimeAgoPluralLabels.same('{0} men.'),
    hour: TimeAgoPluralLabels.same('{0} h.'),
    day: TimeAgoPluralLabels.same('{0} rā'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m.'),
    quarter: TimeAgoPluralLabels.same('{0} hwh'),
    year: TimeAgoPluralLabels.same('{0} tau'),
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

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ināianei', past: '-{0} h', future: '+{0} h'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei meneti', past: '-{0} men', future: '+{0} men'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei haora', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei rā', past: '-{0} r', future: '+{0} r'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei w.', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei m.', past: '-{0} m.', future: '+{0} m.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tēnei hauwhā', past: '-{0} hwh', future: '+{0} Hwh'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i tēnei tau', past: 'i te {0} tau', future: 'ā te {0} tau'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} h'),
    minute: TimeAgoPluralLabels.same('{0} men'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} r'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m.'),
    quarter: TimeAgoPluralLabels.same('{0} hwh'),
    year: TimeAgoPluralLabels.same('{0} tau'),
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
