import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sk'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'pred 1 sekundou',
    current: 'teraz',
    future: 'o 1 sekundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sk';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'teraz',
        past: TimeAgoPluralLabels(
            one: 'pred {0} sekundou',
            many: 'pred {0} sekundy',
            other: 'pred {0} sekundami'),
        future: TimeAgoPluralLabels(
            one: 'o {0} sekundu',
            few: 'o {0} sekundy',
            many: 'o {0} sekundy',
            other: 'o {0} sekúnd')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'v tejto minúte',
        past: TimeAgoPluralLabels(
            one: 'pred {0} minútou',
            many: 'pred {0} minúty',
            other: 'pred {0} minútami'),
        future: TimeAgoPluralLabels(
            one: 'o {0} minútu',
            few: 'o {0} minúty',
            many: 'o {0} minúty',
            other: 'o {0} minút')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'v tejto hodine',
        past: TimeAgoPluralLabels(
            one: 'pred {0} hodinou',
            many: 'pred {0} hodinou',
            other: 'pred {0} hodinami'),
        future: TimeAgoPluralLabels(
            one: 'o {0} hodinu',
            few: 'o {0} hodiny',
            many: 'o {0} hodiny',
            other: 'o {0} hodín')),
    day: TimeAgoRelativeUnitLabels(
        current: 'dnes',
        past: TimeAgoPluralLabels(
            one: 'pred {0} dňom',
            many: 'pred {0} dňa',
            other: 'pred {0} dňami'),
        future: TimeAgoPluralLabels(
            one: 'o {0} deň',
            few: 'o {0} dni',
            many: 'o {0} dňa',
            other: 'o {0} dní')),
    week: TimeAgoRelativeUnitLabels(
        current: 'tento týždeň',
        past: TimeAgoPluralLabels(
            one: 'pred {0} týždňom',
            many: 'pred {0} týždňa',
            other: 'pred {0} týždňami'),
        future: TimeAgoPluralLabels(
            one: 'o {0} týždeň',
            few: 'o {0} týždne',
            many: 'o {0} týždňa',
            other: 'o {0} týždňov')),
    month: TimeAgoRelativeUnitLabels(
        current: 'tento mesiac',
        past: TimeAgoPluralLabels(
            one: 'pred {0} mesiacom',
            many: 'pred {0} mesiaca',
            other: 'pred {0} mesiacmi'),
        future: TimeAgoPluralLabels(
            one: 'o {0} mesiac',
            few: 'o {0} mesiace',
            many: 'o {0} mesiaca',
            other: 'o {0} mesiacov')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'tento štvrťrok',
        past: TimeAgoPluralLabels(
            one: 'pred {0} štvrťrokom',
            many: 'pred {0} štvrťroka',
            other: 'pred {0} štvrťrokmi'),
        future: TimeAgoPluralLabels(
            one: 'o {0} štvrťrok',
            few: 'o {0} štvrťroky',
            many: 'o {0} štvrťroka',
            other: 'o {0} štvrťrokov')),
    year: TimeAgoRelativeUnitLabels(
        current: 'tento rok',
        past: TimeAgoPluralLabels(
            one: 'pred {0} rokom',
            many: 'pred {0} roka',
            other: 'pred {0} rokmi'),
        future: TimeAgoPluralLabels(
            one: 'o {0} rok',
            few: 'o {0} roky',
            many: 'o {0} roka',
            other: 'o {0} rokov')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekund',
        few: '{0} sekund',
        many: '{0} sekundy',
        other: '{0} sek'),
    minute: TimeAgoPluralLabels(
        one: '{0} minút',
        few: '{0} minút',
        many: '{0} minúty',
        other: '{0} minút'),
    hour: TimeAgoPluralLabels(
        one: '{0} hodin',
        few: '{0} hodin',
        many: '{0} hodin',
        other: '{0} hod'),
    day: TimeAgoPluralLabels(
        one: '{0} d', few: '{0} d', many: '{0} dňa', other: '{0} d'),
    week: TimeAgoPluralLabels(
        one: '{0} týžd',
        few: '{0} týžd',
        many: '{0} týždňa',
        other: '{0} týždň'),
    month: TimeAgoPluralLabels(
        one: '{0} mesiac',
        few: '{0} mesiac',
        many: '{0} mesiaca',
        other: '{0} mesiac'),
    quarter: TimeAgoPluralLabels(
        one: '{0} štvrťrok',
        few: '{0} štvrťrok',
        many: '{0} štvrťroka',
        other: '{0} štvrťrok'),
    year: TimeAgoPluralLabels(
        one: '{0} rok', few: '{0} rok', many: '{0} roka', other: '{0} rok'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pred {0}undami',
    future: 'o {0}únd',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'teraz', past: 'pred {0} s', future: 'o {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'v tejto minúte', past: 'pred {0} min', future: 'o {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'v tejto hodine', past: 'pred {0} h', future: 'o {0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'dnes', past: 'pred {0} d.', future: 'o {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tento týž.', past: 'pred {0} týž.', future: 'o {0} týž.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tento mes.', past: 'pred {0} mes.', future: 'o {0} mes.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tento štvrťr.',
        past: 'pred {0} štvrťr.',
        future: 'o {0} štvrťr.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tento rok', past: 'pred {0} r.', future: 'o {0} r.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} týž.'),
    month: TimeAgoPluralLabels.same('{0} mes.'),
    quarter: TimeAgoPluralLabels.same('{0} štvrťr.'),
    year: TimeAgoPluralLabels.same('{0} r.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pred {0}',
    future: 'o {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'teraz', past: 'pred {0} s', future: 'o {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'v tejto minúte', past: 'pred {0} min', future: 'o {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'v tejto hodine', past: 'pred {0} h', future: 'o {0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'dnes', past: 'pred {0} d.', future: 'o {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tento týž.', past: 'pred {0} týž.', future: 'o {0} týž.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tento mes.', past: 'pred {0} mes.', future: 'o {0} mes.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tento štvrťr.',
        past: 'pred {0} štvrťr.',
        future: 'o {0} štvrťr.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tento rok', past: 'pred {0} r.', future: 'o {0} r.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} týž.'),
    month: TimeAgoPluralLabels.same('{0} mes.'),
    quarter: TimeAgoPluralLabels.same('{0} štvrťr.'),
    year: TimeAgoPluralLabels.same('{0} r.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pred {0}',
    future: 'o {0}',
  ),
);
