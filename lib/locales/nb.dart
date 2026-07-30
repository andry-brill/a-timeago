import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale('nb'),
  formats: TimeAgoFormatSet(long: _long, short: _short, narrow: _narrow),
  // Manually completed because JavaScript's nb locale has no `now` supplement.
  calendar: TimeAgoCalendarLabels(
    yesterday: 'i går',
    today: 'i dag',
    tomorrow: 'i morgen',
    dateTime: '{1} kl. {0}',
    relativeDateTime: '{1} kl. {0}',
  ),
  now: TimeAgoNowLabels(past: 'nå', current: 'nå', future: 'nå'),
  functions: IntlTimeAgoLocaleFunctions('nb'),
);

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
      current: 'nå',
      past: TimeAgoPluralLabels.oneOther(
        one: 'for {0} sekund siden',
        other: 'for {0} sekunder siden',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'om {0} sekund',
        other: 'om {0} sekunder',
      ),
    ),
    minute: TimeAgoRelativeUnitLabels(
      current: 'dette minuttet',
      past: TimeAgoPluralLabels.oneOther(
        one: 'for {0} minutt siden',
        other: 'for {0} minutter siden',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'om {0} minutt',
        other: 'om {0} minutter',
      ),
    ),
    hour: TimeAgoRelativeUnitLabels(
      current: 'denne timen',
      past: TimeAgoPluralLabels.oneOther(
        one: 'for {0} time siden',
        other: 'for {0} timer siden',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'om {0} time',
        other: 'om {0} timer',
      ),
    ),
    day: TimeAgoRelativeUnitLabels.same(
      current: 'i dag',
      past: 'for {0} døgn siden',
      future: 'om {0} døgn',
    ),
    week: TimeAgoRelativeUnitLabels(
      current: 'denne uken',
      past: TimeAgoPluralLabels.oneOther(
        one: 'for {0} uke siden',
        other: 'for {0} uker siden',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'om {0} uke',
        other: 'om {0} uker',
      ),
    ),
    month: TimeAgoRelativeUnitLabels(
      current: 'denne måneden',
      past: TimeAgoPluralLabels.oneOther(
        one: 'for {0} måned siden',
        other: 'for {0} måneder siden',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'om {0} måned',
        other: 'om {0} måneder',
      ),
    ),
    quarter: TimeAgoRelativeUnitLabels(
      current: 'dette kvartalet',
      past: TimeAgoPluralLabels.oneOther(
        one: 'for {0} kvartal siden',
        other: 'for {0} kvartaler siden',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'om {0} kvartal',
        other: 'om {0} kvartaler',
      ),
    ),
    year: TimeAgoRelativeUnitLabels.same(
      current: 'i år',
      past: 'for {0} år siden',
      future: 'om {0} år',
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.oneOther(
      one: '{0} sekund',
      other: '{0} sekunder',
    ),
    minute: TimeAgoPluralLabels.oneOther(
      one: '{0} minutt',
      other: '{0} minutter',
    ),
    hour: TimeAgoPluralLabels.oneOther(one: '{0} time', other: '{0} timer'),
    day: TimeAgoPluralLabels.oneOther(one: '{0} dag', other: '{0} dager'),
    week: TimeAgoPluralLabels.oneOther(one: '{0} uke', other: '{0} uker'),
    month: TimeAgoPluralLabels.oneOther(
      one: '{0} måned',
      other: '{0} måneder',
    ),
    quarter: TimeAgoPluralLabels.oneOther(
      one: '{0} kvartal',
      other: '{0} kvartaler',
    ),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} og {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0} og {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'for {0} siden',
    future: 'om {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
      current: 'nå',
      past: 'for {0} sek siden',
      future: 'om {0} sek',
    ),
    minute: TimeAgoRelativeUnitLabels.same(
      current: 'dette minuttet',
      past: 'for {0} min siden',
      future: 'om {0} min',
    ),
    hour: TimeAgoRelativeUnitLabels.same(
      current: 'denne timen',
      past: 'for {0} t siden',
      future: 'om {0} t',
    ),
    day: TimeAgoRelativeUnitLabels.same(
      current: 'i dag',
      past: 'for {0} d. siden',
      future: 'om {0} d.',
    ),
    week: TimeAgoRelativeUnitLabels.same(
      current: 'denne uken',
      past: 'for {0} u. siden',
      future: 'om {0} u.',
    ),
    month: TimeAgoRelativeUnitLabels.same(
      current: 'denne md.',
      past: 'for {0} md. siden',
      future: 'om {0} md.',
    ),
    quarter: TimeAgoRelativeUnitLabels.same(
      current: 'dette kv.',
      past: 'for {0} kv. siden',
      future: 'om {0} kv.',
    ),
    year: TimeAgoRelativeUnitLabels.same(
      current: 'i år',
      past: 'for {0} år siden',
      future: 'om {0} år',
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} u.'),
    month: TimeAgoPluralLabels.same('{0} md.'),
    quarter: TimeAgoPluralLabels.same('{0} kv.'),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} og {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0} og {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'for {0} siden',
    future: 'om {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
      current: 'nå',
      past: '-{0} s',
      future: '+{0} s',
    ),
    minute: TimeAgoRelativeUnitLabels.same(
      current: 'dette minuttet',
      past: '-{0} min',
      future: '+{0} min',
    ),
    hour: TimeAgoRelativeUnitLabels.same(
      current: 'denne timen',
      past: '-{0} t',
      future: '+{0} t',
    ),
    day: TimeAgoRelativeUnitLabels.same(
      current: 'i dag',
      past: '-{0} d.',
      future: '+{0} d.',
    ),
    week: TimeAgoRelativeUnitLabels.same(
      current: 'denne uken',
      past: 'for {0} u. siden',
      future: 'om {0} u.',
    ),
    month: TimeAgoRelativeUnitLabels.same(
      current: 'denne md.',
      past: '-{0} md.',
      future: '+{0} md.',
    ),
    quarter: TimeAgoRelativeUnitLabels.same(
      current: 'dette kv.',
      past: '-{0} kv.',
      future: '+{0} kv.',
    ),
    year: TimeAgoRelativeUnitLabels.same(
      current: 'i år',
      past: '-{0} år',
      future: '+{0} år',
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} u.'),
    month: TimeAgoPluralLabels.same('{0} md.'),
    quarter: TimeAgoPluralLabels.same('{0} kv.'),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} og {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0} og {1}',
  ),
  direction: TimeAgoDirectionPatterns(past: '-{0}', future: '+{0}'),
);
