import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sl'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'pred 1 sekundo',
    current: 'zdaj',
    future: 'čez 1 sekundo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sl';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'zdaj',
        past: TimeAgoPluralLabels(
            one: 'pred {0} sekundo',
            two: 'pred {0} sekundama',
            other: 'pred {0} sekundami'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} sekundo',
            two: 'čez {0} sekundi',
            few: 'čez {0} sekunde',
            other: 'čez {0} sekund')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'to minuto',
        past: TimeAgoPluralLabels(
            one: 'pred {0} minuto',
            two: 'pred {0} minutama',
            other: 'pred {0} minutami'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} minuto',
            two: 'čez {0} minuti',
            few: 'čez {0} minute',
            other: 'čez {0} minut')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'v tej uri',
        past: TimeAgoPluralLabels(
            one: 'pred {0} uro',
            two: 'pred {0} urama',
            other: 'pred {0} urami'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} uro',
            two: 'čez {0} uri',
            few: 'čez {0} ure',
            other: 'čez {0} ur')),
    day: TimeAgoRelativeUnitLabels(
        current: 'danes',
        past: TimeAgoPluralLabels(
            one: 'pred {0} dnevom',
            two: 'pred {0} dnevoma',
            other: 'pred {0} dnevi'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} dan', two: 'čez {0} dneva', other: 'čez {0} dni')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ta teden',
        past: TimeAgoPluralLabels(
            one: 'pred {0} tednom',
            two: 'pred {0} tednoma',
            other: 'pred {0} tedni'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} teden',
            two: 'čez {0} tedna',
            few: 'čez {0} tedne',
            other: 'čez {0} tednov')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ta mesec',
        past: TimeAgoPluralLabels(
            one: 'pred {0} mesecem',
            two: 'pred {0} mesecema',
            other: 'pred {0} meseci'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} mesec',
            two: 'čez {0} meseca',
            few: 'čez {0} mesece',
            other: 'čez {0} mesecev')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'to četrtletje',
        past: TimeAgoPluralLabels(
            one: 'pred {0} četrtletjem',
            two: 'pred {0} četrtletjema',
            other: 'pred {0} četrtletji'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} četrtletje',
            two: 'čez {0} četrtletji',
            few: 'čez {0} četrtletja',
            other: 'čez {0} četrtletij')),
    year: TimeAgoRelativeUnitLabels(
        current: 'letos',
        past: TimeAgoPluralLabels(
            one: 'pred {0} letom',
            two: 'pred {0} letoma',
            other: 'pred {0} leti'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} leto',
            two: 'čez {0} leti',
            few: 'čez {0} leta',
            other: 'čez {0} let')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekundo',
        two: '{0} sekund',
        few: '{0} sekund',
        other: '{0} sekund'),
    minute: TimeAgoPluralLabels(
        one: '{0} minuto',
        two: '{0} minut',
        few: '{0} minut',
        other: '{0} minut'),
    hour: TimeAgoPluralLabels(
        one: '{0} uro', two: '{0} ur', few: '{0} ur', other: '{0} ur'),
    day: TimeAgoPluralLabels(one: '{0} d', two: '{0} dnev', other: '{0} dn'),
    week: TimeAgoPluralLabels(
        one: '{0} ted', two: '{0} tedn', few: '{0} tedn', other: '{0} tedn'),
    month: TimeAgoPluralLabels(
        one: '{0} mesec',
        two: '{0} mesec',
        few: '{0} mesec',
        other: '{0} mesec'),
    quarter: TimeAgoPluralLabels(
        one: '{0} četrtletje',
        two: '{0} četrtletj',
        few: '{0} četrtletj',
        other: '{0} četrtlet'),
    year: TimeAgoPluralLabels(
        one: '{0} leto', two: '{0} let', few: '{0} let', other: '{0} let'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pred {0}ami',
    future: 'čez {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'zdaj', past: 'pred {0} s', future: 'čez {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'to minuto', past: 'pred {0} min.', future: 'čez {0} min.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'v tej uri',
        past: TimeAgoPluralLabels(
            one: 'pred {0} uro',
            two: 'pred {0} urama',
            other: 'pred {0} urami'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} uro',
            two: 'čez {0} uri',
            few: 'čez {0} ure',
            other: 'čez {0} ur')),
    day: TimeAgoRelativeUnitLabels(
        current: 'danes',
        past: TimeAgoPluralLabels(
            one: 'pred {0} dnevom',
            two: 'pred {0} dnevoma',
            other: 'pred {0} dnevi'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} dan', two: 'čez {0} dneva', other: 'čez {0} dni')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ta ted.', past: 'pred {0} ted.', future: 'čez {0} ted.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ta mes.', past: 'pred {0} mes.', future: 'čez {0} mes.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'to četrtletje',
        past: 'pred {0} četrtl.',
        future: 'čez {0} četrtl.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'letos',
        past: TimeAgoPluralLabels(
            one: 'pred {0} letom',
            two: 'pred {0} letoma',
            other: 'pred {0} leti'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} leto',
            two: 'čez {0} leti',
            few: 'čez {0} leta',
            other: 'čez {0} let')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels(
        one: '{0} uro', two: '{0} ur', few: '{0} ur', other: '{0} ur'),
    day: TimeAgoPluralLabels(one: '{0} d', two: '{0} dnev', other: '{0} dn'),
    week: TimeAgoPluralLabels.same('{0} ted.'),
    month: TimeAgoPluralLabels.same('{0} mes.'),
    quarter: TimeAgoPluralLabels.same('{0} četrtl.'),
    year: TimeAgoPluralLabels(
        one: '{0} leto', two: '{0} let', few: '{0} let', other: '{0} let'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pred {0}',
    future: 'čez {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'zdaj', past: 'pred {0} s', future: 'čez {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'to minuto', past: 'pred {0} min', future: 'čez {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'v tej uri', past: 'pred {0} h', future: 'čez {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'danes',
        past: TimeAgoPluralLabels(
            one: 'pred {0} dnevom',
            two: 'pred {0} dnevoma',
            other: 'pred {0} dnevi'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} dan', two: 'čez {0} dneva', other: 'čez {0} dni')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ta ted.', past: 'pred {0} ted.', future: 'čez {0} ted.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ta mes.', past: 'pred {0} mes.', future: 'čez {0} mes.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'to četrtletje',
        past: 'pred {0} četr.',
        future: 'čez {0} četr.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'letos',
        past: TimeAgoPluralLabels(
            one: 'pred {0} letom',
            two: 'pred {0} letoma',
            other: 'pred {0} leti'),
        future: TimeAgoPluralLabels(
            one: 'čez {0} leto',
            two: 'čez {0} leti',
            few: 'čez {0} leta',
            other: 'čez {0} let')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} d', two: '{0} dnev', other: '{0} dn'),
    week: TimeAgoPluralLabels.same('{0} ted.'),
    month: TimeAgoPluralLabels.same('{0} mes.'),
    quarter: TimeAgoPluralLabels.same('{0} četr.'),
    year: TimeAgoPluralLabels(
        one: '{0} leto', two: '{0} let', few: '{0} let', other: '{0} let'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pred {0}',
    future: 'čez {0}',
  ),
);
