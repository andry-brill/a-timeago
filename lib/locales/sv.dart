import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sv'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'i går',
    today: 'i dag',
    tomorrow: 'i morgon',
    dateTime: '{1} kl. {0}',
    relativeDateTime: '{1} kl. {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'för 1 sekund sedan',
    current: 'nu',
    future: 'om 1 sekund',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sv';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nu',
        past: TimeAgoPluralLabels(
            one: 'för {0} sekund sedan', other: 'för {0} sekunder sedan'),
        future: TimeAgoPluralLabels(
            one: 'om {0} sekund', other: 'om {0} sekunder')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'denna minut',
        past: TimeAgoPluralLabels(
            one: 'för {0} minut sedan', other: 'för {0} minuter sedan'),
        future:
            TimeAgoPluralLabels(one: 'om {0} minut', other: 'om {0} minuter')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'denna timme',
        past: TimeAgoPluralLabels(
            one: 'för {0} timme sedan', other: 'för {0} timmar sedan'),
        future:
            TimeAgoPluralLabels(one: 'om {0} timme', other: 'om {0} timmar')),
    day: TimeAgoRelativeUnitLabels(
        current: 'i dag',
        past: TimeAgoPluralLabels(
            one: 'för {0} dag sedan', other: 'för {0} dagar sedan'),
        future: TimeAgoPluralLabels(one: 'om {0} dag', other: 'om {0} dagar')),
    week: TimeAgoRelativeUnitLabels(
        current: 'denna vecka',
        past: TimeAgoPluralLabels(
            one: 'för {0} vecka sedan', other: 'för {0} veckor sedan'),
        future:
            TimeAgoPluralLabels(one: 'om {0} vecka', other: 'om {0} veckor')),
    month: TimeAgoRelativeUnitLabels(
        current: 'den här månaden',
        past: TimeAgoPluralLabels(
            one: 'för {0} månad sedan', other: 'för {0} månader sedan'),
        future:
            TimeAgoPluralLabels(one: 'om {0} månad', other: 'om {0} månader')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'detta kvartal',
        past: 'för {0} kvartal sedan',
        future: 'om {0} kvartal'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: 'för {0} år sedan', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekund', other: '{0} sekunder'),
    minute: TimeAgoPluralLabels(one: '{0} minut', other: '{0} minuter'),
    hour: TimeAgoPluralLabels(one: '{0} timme', other: '{0} timmar'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dagar'),
    week: TimeAgoPluralLabels(one: '{0} vecka', other: '{0} veckor'),
    month: TimeAgoPluralLabels(one: '{0} månad', other: '{0} månader'),
    quarter: TimeAgoPluralLabels.same('{0} kvartal'),
    year: TimeAgoPluralLabels(one: '{0} år', other: '{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'för {0} sedan',
    future: 'om {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nu',
        past: TimeAgoPluralLabels.same('för {0} s sen'),
        future: TimeAgoPluralLabels(one: 'om {0} sek', other: 'om {0} sek')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'denna minut', past: 'för {0} min sen', future: 'om {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'denna timme',
        past: 'för {0} tim sedan',
        future: 'om {0} tim'),
    day: TimeAgoRelativeUnitLabels(
        current: 'i dag',
        past: TimeAgoPluralLabels(
            one: 'för {0} d sedan', other: 'för {0} d sedan'),
        future: TimeAgoPluralLabels.same('om {0} d')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'denna v.', past: 'för {0} v. sedan', future: 'om {0} v.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'denna mån.', past: 'för {0} mån. sen', future: 'om {0} mån.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'detta kv.', past: 'för {0} kv. sen', future: 'om {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: 'för {0} år sen', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} s', other: '{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} tim'),
    day: TimeAgoPluralLabels(one: '{0} d', other: 'för {0} d'),
    week: TimeAgoPluralLabels.same('{0} v.'),
    month: TimeAgoPluralLabels.same('{0} mån.'),
    quarter: TimeAgoPluralLabels.same('{0} kv.'),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'för {0} sen',
    future: 'om {0}ek',
  ),
);

const _narrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} s'),
  minute: TimeAgoPluralLabels.same('{0} min'),
  hour: TimeAgoPluralLabels.same('{0} h'),
  day: TimeAgoPluralLabels.same('{0} d'),
  week: TimeAgoPluralLabels.same('{0} v'),
  month: TimeAgoPluralLabels.same('{0} mån'),
  quarter: TimeAgoPluralLabels.same('{0} kv'),
  year: TimeAgoPluralLabels.same('{0} år'),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nu', past: '−{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'denna minut', past: '−{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'denna timme', past: '−{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'idag', past: '−{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'denna v.', past: '−{0} v', future: '+{0} v.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'denna mån.', past: '−{0} mån', future: '+{0} mån.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'detta kv.', past: '−{0} kv', future: '+{0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: '−{0} år', future: '+{0} år'),
  ),
  units: _narrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '−{0}',
    future: '+{0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('−{0} sek.'),
        future: TimeAgoPluralLabels.same('+{0} sek.')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('−{0} min'),
        future: TimeAgoPluralLabels.same('+{0} min')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('−{0} tim.'),
        future: TimeAgoPluralLabels.same('+{0} tim.')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(one: '−{0} dag', other: '−{0} dagar'),
        future: TimeAgoPluralLabels(one: '+{0} dag', other: '+{0} dagar')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('−{0} v.'),
        future: TimeAgoPluralLabels.same('+{0} v.')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('−{0} mån.'),
        future: TimeAgoPluralLabels.same('+{0} mån.')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('−{0} kv'),
        future: TimeAgoPluralLabels.same('+{0} kv')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('−{0} år'),
        future: TimeAgoPluralLabels.same('+{0} år')),
  ),
  units: _narrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '−{0}',
    future: '+{0}',
  ),
  now: 'nu',
);
