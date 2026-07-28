import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'xh'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'ngoku',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'xh';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ngoku', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ngalo mzuzu', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ngale yure', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'namhlanje', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ku;e veki', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kule nyanga', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ikota esikuyo', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'kulo nyaka', past: '-{0} y', future: '+{0} y'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} y'),
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

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ngoku', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ngalo mzuzu', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ngale yure', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'namhlanje', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'kule vek.', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kule nya.', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ikota esikuyo', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'kulo nyak.', past: '-{0} y', future: '+{0} y'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} y'),
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
        current: 'ngoku', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ngalo mzuzu', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ngale yure', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'namhlanje', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'kule vek.', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kule nya.', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ikota esikuyo', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'kulo nyak.', past: '-{0} y', future: '+{0} y'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} y'),
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
