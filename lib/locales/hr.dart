import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'hr'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'jučer',
    today: 'danas',
    tomorrow: 'sutra',
    dateTime: '{1} u {0}',
    relativeDateTime: '{1} u {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'prije 1 sekundu',
    current: 'sad',
    future: 'za 1 sekundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'hr';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'sad',
        past: TimeAgoPluralLabels(
            one: 'prije {0} sekundu',
            few: 'prije {0} sekunde',
            other: 'prije {0} sekundi'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sekundu',
            few: 'za {0} sekunde',
            other: 'za {0} sekundi')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ova minuta',
        past: TimeAgoPluralLabels(
            one: 'prije {0} minutu',
            few: 'prije {0} minute',
            other: 'prije {0} minuta'),
        future: TimeAgoPluralLabels(
            one: 'za {0} minutu',
            few: 'za {0} minute',
            other: 'za {0} minuta')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ovaj sat',
        past: TimeAgoPluralLabels(
            one: 'prije {0} sat',
            few: 'prije {0} sata',
            other: 'prije {0} sati'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sat', few: 'za {0} sata', other: 'za {0} sati')),
    day: TimeAgoRelativeUnitLabels(
        current: 'danas',
        past:
            TimeAgoPluralLabels(one: 'prije {0} dan', other: 'prije {0} dana'),
        future: TimeAgoPluralLabels(one: 'za {0} dan', other: 'za {0} dana')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ovaj tjedan',
        past: TimeAgoPluralLabels(
            one: 'prije {0} tjedan',
            few: 'prije {0} tjedna',
            other: 'prije {0} tjedana'),
        future: TimeAgoPluralLabels(
            one: 'za {0} tjedan',
            few: 'za {0} tjedna',
            other: 'za {0} tjedana')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ovaj mjesec',
        past: TimeAgoPluralLabels(
            one: 'prije {0} mjesec',
            few: 'prije {0} mjeseca',
            other: 'prije {0} mjeseci'),
        future: TimeAgoPluralLabels(
            one: 'za {0} mjesec',
            few: 'za {0} mjeseca',
            other: 'za {0} mjeseci')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ovaj kvartal',
        past: TimeAgoPluralLabels(
            one: 'prije {0} kvartal', other: 'prije {0} kvartala'),
        future: TimeAgoPluralLabels(
            one: 'za {0} kvartal', other: 'za {0} kvartala')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ove godine',
        past: TimeAgoPluralLabels(
            one: 'prije {0} godinu',
            few: 'prije {0} godine',
            other: 'prije {0} godina'),
        future: TimeAgoPluralLabels(
            one: 'za {0} godinu',
            few: 'za {0} godine',
            other: 'za {0} godina')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekundu', few: '{0} sekunde', other: '{0} sekundi'),
    minute: TimeAgoPluralLabels(
        one: '{0} minutu', few: '{0} minute', other: '{0} minuta'),
    hour:
        TimeAgoPluralLabels(one: '{0} sat', few: '{0} sata', other: '{0} sati'),
    day: TimeAgoPluralLabels(one: '{0} dan', other: '{0} dana'),
    week: TimeAgoPluralLabels(
        one: '{0} tjedan', few: '{0} tjedna', other: '{0} tjedana'),
    month: TimeAgoPluralLabels(
        one: '{0} mjesec', few: '{0} mjeseca', other: '{0} mjeseci'),
    quarter: TimeAgoPluralLabels(one: '{0} kvartal', other: '{0} kvartala'),
    year: TimeAgoPluralLabels(
        one: '{0} godinu', few: '{0} godine', other: '{0} godina'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'prije {0}',
    future: 'za {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sad', past: 'prije {0} s', future: 'za {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ova minuta', past: 'prije {0} min', future: 'za {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj sat', past: 'prije {0} h', future: 'za {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'danas',
        past:
            TimeAgoPluralLabels(one: 'prije {0} dan', other: 'prije {0} dana'),
        future: TimeAgoPluralLabels(one: 'za {0} dan', other: 'za {0} dana')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj tj.', past: 'prije {0} tj.', future: 'za {0} tj.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj mj.', past: 'prije {0} mj.', future: 'za {0} mj.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj kv.', past: 'prije {0} kv.', future: 'za {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ove god.', past: 'prije {0} g.', future: 'za {0} g.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} dan', other: '{0} dana'),
    week: TimeAgoPluralLabels.same('{0} tj.'),
    month: TimeAgoPluralLabels.same('{0} mj.'),
    quarter: TimeAgoPluralLabels.same('{0} kv.'),
    year: TimeAgoPluralLabels.same('{0} g.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'prije {0}',
    future: 'za {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sad', past: 'prije {0} s', future: 'za {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ova minuta', past: 'prije {0} min', future: 'za {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj sat', past: 'prije {0} h', future: 'za {0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'danas', past: 'prije {0} d', future: 'za {0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj tj.', past: 'prije {0} tj.', future: 'za {0} tj.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj mj.', past: 'prije {0} mj.', future: 'za {0} mj.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ovaj kv.', past: 'prije {0} kv.', future: 'za {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ove g.', past: 'prije {0} g.', future: 'za {0} g.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} tj.'),
    month: TimeAgoPluralLabels.same('{0} mj.'),
    quarter: TimeAgoPluralLabels.same('{0} kv.'),
    year: TimeAgoPluralLabels.same('{0} g.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'prije {0}',
    future: 'za {0}',
  ),
);
