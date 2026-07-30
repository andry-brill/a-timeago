import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'doi'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'जंदा कल',
    today: 'अज्ज',
    tomorrow: 'औंदे कल',
    dateTime: '{1} गी {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'हून/इसलै',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'doi';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'हून/इसलै', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एह् मिंट/ इस मिंट', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एह् घैंटा/ इस घैंटे', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'अज्ज', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एह् हफ्ता/इस हफ्तै', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एह् म्हीना/इस म्हीनै', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एह् त्रमाही', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एह् ब’रा', past: '-{0} y', future: '+{0} y'),
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

const _shortNarrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} s'),
  minute: TimeAgoPluralLabels.same('{0} min'),
  hour: TimeAgoPluralLabels.same('{0} h'),
  day: TimeAgoPluralLabels.same('{0} d'),
  week: TimeAgoPluralLabels.same('{0} w'),
  month: TimeAgoPluralLabels.same('{0} m'),
  quarter: TimeAgoPluralLabels.same('{0} Q'),
  year: TimeAgoPluralLabels.same('{0} y'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'हून/इसलै', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एह् मिंट/ इस मिंट', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एह् घैंटा/ इस घैंटे', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'अज्ज', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एह् हफ्ता/इस हफ्तै', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एह् म्हीना/इस म्हीनै', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एह् त्रमाही', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एह् ब’रा/इस ब’रै', past: '-{0} y', future: '+{0} y'),
  ),
  units: _shortNarrowUnits,
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
        current: 'हून/इसलै', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एह् मिंट/ इस मिंट', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एह् घैंटा/ इस घैंटे', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'अज्ज', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एह् हफ्ता/इस हफ्तै', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एह् म्हीना/इस म्हीनै', past: '-{0} m', future: '+{0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एह् त्रमाही', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एह् ब’रा', past: '-{0} y', future: '+{0} y'),
  ),
  units: _shortNarrowUnits,
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
