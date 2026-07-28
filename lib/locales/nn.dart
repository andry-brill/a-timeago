import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'nn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'for 1 sekund sidan',
    current: 'no',
    future: 'om 1 sekund',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'nn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'no',
        past: TimeAgoPluralLabels.same('for {0} sekund sidan'),
        future:
            TimeAgoPluralLabels(one: 'om {0} sekund', other: 'om {0} sekund')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'dette minuttet',
        past: 'for {0} minutt sidan',
        future: 'om {0} minutt'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'denne timen',
        past: TimeAgoPluralLabels(
            one: 'for {0} time sidan', other: 'for {0} timar sidan'),
        future: TimeAgoPluralLabels(one: 'om {0} time', other: 'om {0} timar')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'i dag', past: 'for {0} døgn sidan', future: 'om {0} døgn'),
    week: TimeAgoRelativeUnitLabels(
        current: 'denne veka',
        past: TimeAgoPluralLabels(
            one: 'for {0} veke sidan', other: 'for {0} veker sidan'),
        future: TimeAgoPluralLabels(one: 'om {0} veke', other: 'om {0} veker')),
    month: TimeAgoRelativeUnitLabels(
        current: 'denne månaden',
        past: TimeAgoPluralLabels(
            one: 'for {0} månad sidan', other: 'for {0} månadar sidan'),
        future:
            TimeAgoPluralLabels(one: 'om {0} månad', other: 'om {0} månadar')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dette kvartalet',
        past: 'for {0} kvartal sidan',
        future: 'om {0} kvartal'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: 'for {0} år sidan', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekund', other: '{0} sekund'),
    minute: TimeAgoPluralLabels.same('{0} minutt'),
    hour: TimeAgoPluralLabels(one: '{0} time', other: '{0} timar'),
    day: TimeAgoPluralLabels.same('{0} døgn'),
    week: TimeAgoPluralLabels(one: '{0} veke', other: '{0} veker'),
    month: TimeAgoPluralLabels(one: '{0} månad', other: '{0} månadar'),
    quarter: TimeAgoPluralLabels.same('{0} kvartal'),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'for {0} sidan',
    future: 'om {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'no', past: 'for {0} sek sidan', future: 'om {0} sek'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'dette minuttet',
        past: 'for {0} min sidan',
        future: 'om {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'denne timen', past: 'for {0} t sidan', future: 'om {0} t'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'i dag', past: 'for {0} d. sidan', future: 'om {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'denne veka', past: 'for {0} v. sidan', future: 'om {0} v.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'denne md.', past: 'for {0} md. sidan', future: 'om {0} md.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dette kv.', past: 'for {0} kv. sidan', future: 'om {0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: 'for {0} år sidan', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} v.'),
    month: TimeAgoPluralLabels.same('{0} md.'),
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
    past: 'for {0} sidan',
    future: 'om {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'no',
        past: TimeAgoPluralLabels(one: '–{0} s', other: '–{0} s'),
        future: TimeAgoPluralLabels.same('+{0} s')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'dette minuttet', past: '–{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'denne timen', past: '–{0} t', future: '+{0} t'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'i dag', past: '–{0} d.', future: '+{0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'denne veka', past: 'for {0} v. sidan', future: 'om {0} v.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'denne md.', past: '–{0} md.', future: '+{0} md.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dette kv.', past: '–{0} kv.', future: '+{0} kv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: 'for {0} år sidan', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} s', other: '{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} v.'),
    month: TimeAgoPluralLabels.same('{0} md.'),
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
    past: '–{0}',
    future: '+{0}',
  ),
);
