import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'da'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: 'for 1 sekund siden',
    current: 'nu',
    future: 'om 1 sekund',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'da';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nu',
        past: TimeAgoPluralLabels(
            one: 'for {0} sekund siden', other: 'for {0} sekunder siden'),
        future: TimeAgoPluralLabels(
            one: 'om {0} sekund', other: 'om {0} sekunder')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'dette minut',
        past: TimeAgoPluralLabels(
            one: 'for {0} minut siden', other: 'for {0} minutter siden'),
        future:
            TimeAgoPluralLabels(one: 'om {0} minut', other: 'om {0} minutter')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'denne time',
        past: TimeAgoPluralLabels(
            one: 'for {0} time siden', other: 'for {0} timer siden'),
        future: TimeAgoPluralLabels(one: 'om {0} time', other: 'om {0} timer')),
    day: TimeAgoRelativeUnitLabels(
        current: 'i dag',
        past: TimeAgoPluralLabels(
            one: 'for {0} dag siden', other: 'for {0} dage siden'),
        future: TimeAgoPluralLabels(one: 'om {0} dag', other: 'om {0} dage')),
    week: TimeAgoRelativeUnitLabels(
        current: 'denne uge',
        past: TimeAgoPluralLabels(
            one: 'for {0} uge siden', other: 'for {0} uger siden'),
        future: TimeAgoPluralLabels(one: 'om {0} uge', other: 'om {0} uger')),
    month: TimeAgoRelativeUnitLabels(
        current: 'denne måned',
        past: TimeAgoPluralLabels(
            one: 'for {0} måned siden', other: 'for {0} måneder siden'),
        future:
            TimeAgoPluralLabels(one: 'om {0} måned', other: 'om {0} måneder')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'dette kvartal',
        past: TimeAgoPluralLabels(
            one: 'for {0} kvartal siden', other: 'for {0} kvartaler siden'),
        future: TimeAgoPluralLabels(
            one: 'om {0} kvartal', other: 'om {0} kvartaler')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: 'for {0} år siden', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekund', other: '{0} sekunder'),
    minute: TimeAgoPluralLabels(one: '{0} minut', other: '{0} minutter'),
    hour: TimeAgoPluralLabels(one: '{0} time', other: '{0} timer'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dage'),
    week: TimeAgoPluralLabels(one: '{0} uge', other: '{0} uger'),
    month: TimeAgoPluralLabels(one: '{0} måned', other: '{0} måneder'),
    quarter: TimeAgoPluralLabels(one: '{0} kvartal', other: '{0} kvartaler'),
    year: TimeAgoPluralLabels(one: '{0} år', other: '{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'for {0} siden',
    future: 'om {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nu', past: '{0} sek. siden', future: 'om {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'dette minut', past: '{0} min. siden', future: 'om {0} min.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'denne time',
        past: TimeAgoPluralLabels(
            one: '{0} time siden', other: '{0} timer siden'),
        future: TimeAgoPluralLabels(one: 'om {0} time', other: 'om {0} timer')),
    day: TimeAgoRelativeUnitLabels(
        current: 'i dag',
        past:
            TimeAgoPluralLabels(one: '{0} dag siden', other: '{0} dage siden'),
        future: TimeAgoPluralLabels(one: 'om {0} dag', other: 'om {0} dage')),
    week: TimeAgoRelativeUnitLabels(
        current: 'denne uge',
        past:
            TimeAgoPluralLabels(one: '{0} uge siden', other: '{0} uger siden'),
        future: TimeAgoPluralLabels(one: 'om {0} uge', other: 'om {0} uger')),
    month: TimeAgoRelativeUnitLabels(
        current: 'denne md.',
        past:
            TimeAgoPluralLabels(one: '{0} md. siden', other: '{0} mdr. siden'),
        future: TimeAgoPluralLabels(one: 'om {0} md.', other: 'om {0} mdr.')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dette kvt.', past: '{0} kvt. siden', future: 'om {0} kvt.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: '{0} år siden', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} time', other: '{0} timer'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dage'),
    week: TimeAgoPluralLabels(one: '{0} uge', other: '{0} uger'),
    month: TimeAgoPluralLabels(one: '{0} md.', other: '{0} mdr.'),
    quarter: TimeAgoPluralLabels.same('{0} kvt.'),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} siden',
    future: 'om {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nu', past: '{0} sek. siden', future: 'om {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'dette minut', past: '{0} min. siden', future: 'om {0} min.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'denne time',
        past: TimeAgoPluralLabels(
            one: '{0} time siden', other: '{0} timer siden'),
        future: TimeAgoPluralLabels(one: 'om {0} time', other: 'om {0} timer')),
    day: TimeAgoRelativeUnitLabels(
        current: 'i dag',
        past:
            TimeAgoPluralLabels(one: '{0} dag siden', other: '{0} dage siden'),
        future: TimeAgoPluralLabels(one: 'om {0} dag', other: 'om {0} dage')),
    week: TimeAgoRelativeUnitLabels(
        current: 'denne uge',
        past:
            TimeAgoPluralLabels(one: '{0} uge siden', other: '{0} uger siden'),
        future: TimeAgoPluralLabels(one: 'om {0} uge', other: 'om {0} uger')),
    month: TimeAgoRelativeUnitLabels(
        current: 'denne md.',
        past:
            TimeAgoPluralLabels(one: '{0} md. siden', other: '{0} mdr. siden'),
        future: TimeAgoPluralLabels(one: 'om {0} md.', other: 'om {0} mdr.')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dette kvt.', past: '{0} kvt. siden', future: 'om {0} kvt.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'i år', past: '{0} år siden', future: 'om {0} år'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} time', other: '{0} timer'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dage'),
    week: TimeAgoPluralLabels(one: '{0} uge', other: '{0} uger'),
    month: TimeAgoPluralLabels(one: '{0} md.', other: '{0} mdr.'),
    quarter: TimeAgoPluralLabels.same('{0} kvt.'),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} siden',
    future: 'om {0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} sek. siden'),
        future: TimeAgoPluralLabels.same('om {0} sek.')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} min. siden'),
        future: TimeAgoPluralLabels.same('om {0} min.')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} t. siden'),
        future: TimeAgoPluralLabels.same('om {0} t.')),
    day: TimeAgoRelativeUnitLabels(
        past:
            TimeAgoPluralLabels(one: '{0} dag siden', other: '{0} dage siden'),
        future: TimeAgoPluralLabels(one: 'om {0} dag', other: 'om {0} dage')),
    week: TimeAgoRelativeUnitLabels(
        past:
            TimeAgoPluralLabels(one: '{0} uge siden', other: '{0} uger siden'),
        future: TimeAgoPluralLabels(one: 'om {0} uge', other: 'om {0} uger')),
    month: TimeAgoRelativeUnitLabels(
        past:
            TimeAgoPluralLabels(one: '{0} md. siden', other: '{0} mdr. siden'),
        future: TimeAgoPluralLabels(one: 'om {0} md.', other: 'om {0} mdr.')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} kvt. siden'),
        future: TimeAgoPluralLabels.same('om {0} kvt.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} år siden'),
        future: TimeAgoPluralLabels.same('om {0} år')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} t.'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dage'),
    week: TimeAgoPluralLabels(one: '{0} uge', other: '{0} uger'),
    month: TimeAgoPluralLabels(one: '{0} md.', other: '{0} mdr.'),
    quarter: TimeAgoPluralLabels.same('{0} kvt.'),
    year: TimeAgoPluralLabels.same('{0} år'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} siden',
    future: 'om {0}',
  ),
  now: 'nu',
);
