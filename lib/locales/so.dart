import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'so'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'Shalay',
    today: 'Maanta',
    tomorrow: 'Berri',
    dateTime: '{1} ee {0}',
    relativeDateTime: '{1} ee {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 ilbiriqsi kahor',
    current: 'Imika',
    future: '1 ilbiriqsi',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'so';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'Imika', past: '{0} ilbiriqsi kahor', future: '{0} ilbiriqsi'),
    minute: TimeAgoRelativeUnitLabels(
        current: 'Daqiiqadan',
        past: TimeAgoPluralLabels(
            one: '{0} daqiiqad kahor', other: '{0} daqiiqadood kahor'),
        future:
            TimeAgoPluralLabels(one: '{0} daqiiqad', other: '{0} daqiidadood')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'Saacadan',
        past: TimeAgoPluralLabels(
            one: '{0} saacad kahor', other: '{0} saacadood kahor'),
        future: TimeAgoPluralLabels(one: '{0} saacad', other: '{0} saacadood')),
    day: TimeAgoRelativeUnitLabels(
        current: 'Maanta',
        past: TimeAgoPluralLabels(
            one: '{0} maalin kahor', other: '{0} maalmood kahor'),
        future: TimeAgoPluralLabels(one: '{0} maalin', other: '{0} maalmood')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Usbuucan',
        past: '{0} toddobaad kahor',
        future: '{0} toddobaad'),
    month: TimeAgoRelativeUnitLabels(
        current: 'Bishan',
        past: TimeAgoPluralLabels(
            one: '{0} bil kahor', other: '{0} bilood kahor'),
        future: TimeAgoPluralLabels(one: '{0} bil', other: '{0} bilood')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'Rubucan', past: '{0} rubuc kahor', future: '{0} rubuc'),
    year: TimeAgoRelativeUnitLabels(
        current: 'Sannadkan',
        past: TimeAgoPluralLabels(
            one: '{0} sannad kahor', other: '{0} sannadood kahor'),
        future: TimeAgoPluralLabels(one: '{0} sannad', other: '{0} sannadood')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ilbiriqsi'),
    minute: TimeAgoPluralLabels(one: '{0} daqiiqad', other: '{0} daqii'),
    hour: TimeAgoPluralLabels(one: '{0} saacad', other: '{0} saacadood'),
    day: TimeAgoPluralLabels(one: '{0} maalin', other: '{0} maalmood'),
    week: TimeAgoPluralLabels.same('{0} toddobaad'),
    month: TimeAgoPluralLabels(one: '{0} bil', other: '{0} bilood'),
    quarter: TimeAgoPluralLabels.same('{0} rubuc'),
    year: TimeAgoPluralLabels(one: '{0} sannad', other: '{0} sannadood'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} kahor',
    future: '{0}',
  ),
);

const _shortNarrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} ilbrqsi'),
  minute: TimeAgoPluralLabels(one: '{0} dqqd', other: '{0} d'),
  hour: TimeAgoPluralLabels.same('{0} scd'),
  day: TimeAgoPluralLabels(one: '{0} mln', other: '{0} mlmd'),
  week: TimeAgoPluralLabels.same('{0} tdbd'),
  month: TimeAgoPluralLabels.same('{0} bil'),
  quarter: TimeAgoPluralLabels.same('{0} rbc'),
  year: TimeAgoPluralLabels(one: '{0} snd', other: '{0} Snd'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'Iminka', past: '{0} ilbrqsi khr', future: '{0} ilbrqsi'),
    minute: TimeAgoRelativeUnitLabels(
        current: 'Daqiiqadan',
        past: TimeAgoPluralLabels(
            one: '{0} dqqd khr', other: '{0} daqiiqadood kahor'),
        future: TimeAgoPluralLabels.same('{0} dqqd')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'Saacadan', past: '{0} scd khr', future: '{0} scd'),
    day: TimeAgoRelativeUnitLabels(
        current: 'Maanta',
        past: TimeAgoPluralLabels(one: '{0} mln khr', other: '{0} mlmd khr'),
        future: TimeAgoPluralLabels(one: '{0} mln', other: '{0} mlmd')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Usbuucan', past: '{0} tdbd khr', future: '{0} tdbd'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Bishan', past: '{0} bil khr', future: '{0} bil'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'Rubucan', past: '{0} rbc khr', future: '{0} rbc'),
    year: TimeAgoRelativeUnitLabels(
        current: 'Sannadkan',
        past: TimeAgoPluralLabels(one: '{0} snd khr', other: '{0} Snd khr'),
        future: TimeAgoPluralLabels.same('{0} snd')),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} khr',
    future: '{0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'Iminka', past: '{0} ilbrqsi khr', future: '{0} ilbrqsi'),
    minute: TimeAgoRelativeUnitLabels(
        current: 'Daqiiqadan',
        past: TimeAgoPluralLabels(
            one: '{0} dqqd khr', other: '{0} daqiiqadood kahor'),
        future: TimeAgoPluralLabels.same('{0} dqqd')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'Saacadan', past: '{0} scd khr', future: '{0} scd'),
    day: TimeAgoRelativeUnitLabels(
        current: 'Maanta',
        past: TimeAgoPluralLabels(one: '{0} mln khr', other: '{0} mlmd khr'),
        future: TimeAgoPluralLabels(one: '{0} mln', other: '{0} mlmd')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Toddobaadkan', past: '{0} tdbd khr', future: '{0} tdbd'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Bishan', past: '{0} bil khr', future: '{0} bil'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'Rubucan', past: '{0} rbc khr', future: '{0} rbc'),
    year: TimeAgoRelativeUnitLabels(
        current: 'Sannadkan',
        past: TimeAgoPluralLabels(one: '{0} snd khr', other: '{0} Snd khr'),
        future: TimeAgoPluralLabels.same('{0} snd')),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} khr',
    future: '{0}',
  ),
);
