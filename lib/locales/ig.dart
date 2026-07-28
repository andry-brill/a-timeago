import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ig'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'ụgbụa',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ig';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ụgbụa', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'nkejị a', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'elekere a', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Taa', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Izu a', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Ọnwa a', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'nkejị keanọ a',
        past: 'Nkejị keanọ {0} gara aga',
        future: 'Nkejị keanọ {0}'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Afọ a', past: '-{0} y', future: '+{0} y'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('Nkejị keanọ {0} gara aga'),
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
        current: 'ụgbụa', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'nkejị a', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'elekere a', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Taata',
        past: 'n’ụbọchị {0} gara aga',
        future: 'n’ụbọchị {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Izu a', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Ọnwa a', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'nkejị keanọ a',
        past: 'Nkejị keanọ {0} gara aga',
        future: 'Nkejị keanọ {0}'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Afọ a', past: '-{0} y', future: '+{0} y'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('n’ụbọchị {0} gara aga'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('Nkejị keanọ {0} gara aga'),
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
        current: 'ụgbụa', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'nkejị a', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'elekere a', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Taata',
        past: 'n’ụbọchị {0} gara aga',
        future: 'n’ụbọchị {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Izu a', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Ọnwa a', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'nkejị keanọ a',
        past: 'Nkejị keanọ {0} gara aga',
        future: 'Nkejị keanọ {0}'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Afọ a', past: 'Afọ {0} gara aga', future: '+{0} y'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('n’ụbọchị {0} gara aga'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('Nkejị keanọ {0} gara aga'),
    year: TimeAgoPluralLabels.same('Afọ {0} gara aga'),
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
