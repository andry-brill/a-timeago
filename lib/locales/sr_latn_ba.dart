import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(
      languageCode: 'sr', scriptCode: 'Latn', countryCode: 'BA'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'juče',
    today: 'danas',
    tomorrow: 'sutra',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'prije 1 sekunde',
    current: 'sada',
    future: 'za 1 sekundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sr_Latn_BA';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'sada',
        past: TimeAgoPluralLabels(
            one: 'prije {0} sekunde',
            few: 'prije {0} sekunde',
            other: 'prije {0} sekundi'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sekundu',
            few: 'za {0} sekunde',
            other: 'za {0} sekundi')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ovog minuta',
        past: TimeAgoPluralLabels.same('prije {0} minuta'),
        future:
            TimeAgoPluralLabels(one: 'za {0} minut', other: 'za {0} minuta')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ovog sata',
        past: TimeAgoPluralLabels(
            one: 'prije {0} sata',
            few: 'prije {0} sata',
            other: 'prije {0} sati'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sat', few: 'za {0} sata', other: 'za {0} sati')),
    day: TimeAgoRelativeUnitLabels(
        current: 'danas',
        past: TimeAgoPluralLabels.same('prije {0} dana'),
        future: TimeAgoPluralLabels(one: 'za {0} dan', other: 'za {0} dana')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ove sedmice',
        past: TimeAgoPluralLabels(
            one: 'prije {0} sedmice',
            few: 'prije {0} sedmice',
            other: 'prije {0} sedmica'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sedmicu',
            few: 'za {0} sedmice',
            other: 'za {0} sedmica')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ovog mjeseca',
        past: TimeAgoPluralLabels(
            one: 'prije {0} mjeseca',
            few: 'prije {0} mjeseca',
            other: 'prije {0} mjeseci'),
        future: TimeAgoPluralLabels(
            one: 'za {0} mjesec',
            few: 'za {0} mjeseca',
            other: 'za {0} mjeseci')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ovog kvartala',
        past: TimeAgoPluralLabels.same('prije {0} kvartala'),
        future: TimeAgoPluralLabels(
            one: 'za {0} kvartal', other: 'za {0} kvartala')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ove godine',
        past: TimeAgoPluralLabels(
            one: 'prije {0} godine',
            few: 'prije {0} godine',
            other: 'prije {0} godina'),
        future: TimeAgoPluralLabels(
            one: 'za {0} godinu',
            few: 'za {0} godine',
            other: 'za {0} godina')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekund', few: '{0} sekunde', other: '{0} sekundi'),
    minute: TimeAgoPluralLabels(one: '{0} minut', other: '{0} minuta'),
    hour:
        TimeAgoPluralLabels(one: '{0} sat', few: '{0} sata', other: '{0} sati'),
    day: TimeAgoPluralLabels(one: '{0} dan', other: '{0} dana'),
    week: TimeAgoPluralLabels(
        one: '{0} sedmic', few: '{0} sedmice', other: '{0} sedmica'),
    month: TimeAgoPluralLabels(
        one: '{0} mjesec', few: '{0} mjeseca', other: '{0} mjeseci'),
    quarter: TimeAgoPluralLabels(one: '{0} kvartal', other: '{0} kvartala'),
    year: TimeAgoPluralLabels(
        one: '{0} godin', few: '{0} godine', other: '{0} godina'),
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
        current: 'sada', past: 'prije {0} sek.', future: 'za {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ovog minuta', past: 'prije {0} min.', future: 'za {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ovog sata', past: 'prije {0} č.', future: 'za {0} č.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'danas', past: 'prije {0} d.', future: 'za {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ove sedm.', past: 'prije {0} sedm.', future: 'za {0} sedm.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ovog mjes.', past: 'prije {0} mjes.', future: 'za {0} mjes.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ovog kvartala', past: 'prije {0} kv.', future: 'za {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ove god.', past: 'prije {0} god.', future: 'za {0} god.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} č.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} sedm.'),
    month: TimeAgoPluralLabels.same('{0} mjes.'),
    quarter: TimeAgoPluralLabels.same('{0} kv.'),
    year: TimeAgoPluralLabels.same('{0} god.'),
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
        current: 'sada', past: 'prije {0} s.', future: 'za {0} s.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ovog minuta', past: 'prije {0} min.', future: 'za {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ovog sata', past: 'prije {0} č.', future: 'za {0} č.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'danas', past: 'prije {0} d.', future: 'za {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ove s.', past: 'prije {0} s.', future: 'za {0} s.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ovog mjes.', past: 'prije {0} m.', future: 'za {0} m.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ovog kvartala', past: 'prije {0} kv.', future: 'za {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ove g.', past: 'prije {0} g.', future: 'za {0} g.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} č.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} s.'),
    month: TimeAgoPluralLabels.same('{0} m.'),
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
