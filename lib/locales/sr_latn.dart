import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sr', scriptCode: 'Latn'),
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
    past: 'pre 1 sekunde',
    current: 'sada',
    future: 'za 1 sekundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sr_Latn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'sada',
        past: TimeAgoPluralLabels(
            one: 'pre {0} sekunde',
            few: 'pre {0} sekunde',
            other: 'pre {0} sekundi'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sekundu',
            few: 'za {0} sekunde',
            other: 'za {0} sekundi')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ovog minuta',
        past: TimeAgoPluralLabels.same('pre {0} minuta'),
        future:
            TimeAgoPluralLabels(one: 'za {0} minut', other: 'za {0} minuta')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ovog sata',
        past: TimeAgoPluralLabels(
            one: 'pre {0} sata', few: 'pre {0} sata', other: 'pre {0} sati'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sat', few: 'za {0} sata', other: 'za {0} sati')),
    day: TimeAgoRelativeUnitLabels(
        current: 'danas',
        past: TimeAgoPluralLabels.same('pre {0} dana'),
        future: TimeAgoPluralLabels(one: 'za {0} dan', other: 'za {0} dana')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ove nedelje',
        past: TimeAgoPluralLabels(
            one: 'pre {0} nedelje',
            few: 'pre {0} nedelje',
            other: 'pre {0} nedelja'),
        future: TimeAgoPluralLabels(
            one: 'za {0} nedelju',
            few: 'za {0} nedelje',
            other: 'za {0} nedelja')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ovog meseca',
        past: TimeAgoPluralLabels(
            one: 'pre {0} meseca',
            few: 'pre {0} meseca',
            other: 'pre {0} meseci'),
        future: TimeAgoPluralLabels(
            one: 'za {0} mesec', few: 'za {0} meseca', other: 'za {0} meseci')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ovog kvartala',
        past: TimeAgoPluralLabels.same('pre {0} kvartala'),
        future: TimeAgoPluralLabels(
            one: 'za {0} kvartal', other: 'za {0} kvartala')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ove godine',
        past: TimeAgoPluralLabels(
            one: 'pre {0} godine',
            few: 'pre {0} godine',
            other: 'pre {0} godina'),
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
        one: '{0} nedelj', few: '{0} nedelje', other: '{0} nedelja'),
    month: TimeAgoPluralLabels(
        one: '{0} mesec', few: '{0} meseca', other: '{0} meseci'),
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
    past: 'pre {0}',
    future: 'za {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sada', past: 'pre {0} sek.', future: 'za {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ovog minuta', past: 'pre {0} min.', future: 'za {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ovog sata', past: 'pre {0} č.', future: 'za {0} č.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'danas', past: 'pre {0} d.', future: 'za {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ove ned.', past: 'pre {0} ned.', future: 'za {0} ned.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ovog mes.', past: 'pre {0} mes.', future: 'za {0} mes.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ovog kvartala', past: 'pre {0} kv.', future: 'za {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ove god.', past: 'pre {0} god.', future: 'za {0} god.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} č.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} ned.'),
    month: TimeAgoPluralLabels.same('{0} mes.'),
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
    past: 'pre {0}',
    future: 'za {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sada', past: 'pre {0} s.', future: 'za {0} s.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ovog minuta', past: 'pre {0} min.', future: 'za {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ovog sata', past: 'pre {0} č.', future: 'za {0} č.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'danas', past: 'pre {0} d.', future: 'za {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ove n.', past: 'pre {0} n.', future: 'za {0} n.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ovog mes.', past: 'pre {0} m.', future: 'za {0} m.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ovog kvartala', past: 'pre {0} kv.', future: 'za {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ove g.', past: 'pre {0} g.', future: 'za {0} g.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} č.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} n.'),
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
    past: 'pre {0}',
    future: 'za {0}',
  ),
);
