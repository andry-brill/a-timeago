import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'is'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'í gær',
    today: 'í dag',
    tomorrow: 'á morgun',
    dateTime: '{1} kl. {0}',
    relativeDateTime: '{1} kl. {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'fyrir 1 sekúndu',
    current: 'núna',
    future: 'eftir 1 sekúndu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'is';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'núna',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} sekúndu', other: 'fyrir {0} sekúndum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} sekúndu', other: 'eftir {0} sekúndur')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'á þessari mínútu',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} mínútu', other: 'fyrir {0} mínútum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} mínútu', other: 'eftir {0} mínútur')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'þessa stundina',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} klukkustund', other: 'fyrir {0} klukkustundum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} klukkustund', other: 'eftir {0} klukkustundir')),
    day: TimeAgoRelativeUnitLabels(
        current: 'í dag',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} degi', other: 'fyrir {0} dögum'),
        future:
            TimeAgoPluralLabels(one: 'eftir {0} dag', other: 'eftir {0} daga')),
    week: TimeAgoRelativeUnitLabels(
        current: 'í þessari viku',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} viku', other: 'fyrir {0} vikum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} viku', other: 'eftir {0} vikur')),
    month: TimeAgoRelativeUnitLabels(
        current: 'í þessum mánuði',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} mánuði', other: 'fyrir {0} mánuðum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} mánuð', other: 'eftir {0} mánuði')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'þessi ársfjórðungur',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} ársfjórðungi', other: 'fyrir {0} ársfjórðungum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} ársfjórðung', other: 'eftir {0} ársfjórðunga')),
    year: TimeAgoRelativeUnitLabels(
        current: 'á þessu ári',
        past:
            TimeAgoPluralLabels(one: 'fyrir {0} ári', other: 'fyrir {0} árum'),
        future: TimeAgoPluralLabels.same('eftir {0} ár')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekúndu', other: '{0} sekúndu'),
    minute: TimeAgoPluralLabels(one: '{0} mínútu', other: '{0} mínútu'),
    hour: TimeAgoPluralLabels(one: '{0} klukkustund', other: '{0} klukkustund'),
    day: TimeAgoPluralLabels(one: '{0} d', other: '{0} d'),
    week: TimeAgoPluralLabels(one: '{0} viku', other: '{0} viku'),
    month: TimeAgoPluralLabels(one: '{0} mánuð', other: '{0} mánuð'),
    quarter:
        TimeAgoPluralLabels(one: '{0} ársfjórðung', other: '{0} ársfjórðung'),
    year: TimeAgoPluralLabels(one: '{0} ár', other: '{0} ár'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'fyrir {0}m',
    future: 'eftir {0}r',
  ),
);

const _shortNarrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} sek.'),
  minute: TimeAgoPluralLabels.same('{0} mín.'),
  hour: TimeAgoPluralLabels.same('{0} klst.'),
  day: TimeAgoPluralLabels(one: '{0} d', other: '{0} d'),
  week: TimeAgoPluralLabels(one: '{0} viku', other: '{0} viku'),
  month: TimeAgoPluralLabels.same('{0} mán.'),
  quarter: TimeAgoPluralLabels.same('{0} ársfj.'),
  year: TimeAgoPluralLabels(one: '{0} ár', other: '{0} ár'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'núna', past: 'fyrir {0} sek.', future: 'eftir {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'á þessari mínútu',
        past: 'fyrir {0} mín.',
        future: 'eftir {0} mín.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'þessa stundina',
        past: 'fyrir {0} klst.',
        future: 'eftir {0} klst.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'í dag',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} degi', other: 'fyrir {0} dögum'),
        future:
            TimeAgoPluralLabels(one: 'eftir {0} dag', other: 'eftir {0} daga')),
    week: TimeAgoRelativeUnitLabels(
        current: 'í þessari viku',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} viku', other: 'fyrir {0} vikum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} viku', other: 'eftir {0} vikur')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'í þessum mán.',
        past: 'fyrir {0} mán.',
        future: 'eftir {0} mán.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'þessi ársfj.',
        past: 'fyrir {0} ársfj.',
        future: 'eftir {0} ársfj.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'á þessu ári',
        past:
            TimeAgoPluralLabels(one: 'fyrir {0} ári', other: 'fyrir {0} árum'),
        future: TimeAgoPluralLabels.same('eftir {0} ár')),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'fyrir {0}',
    future: 'eftir {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'núna', past: '-{0} sek.', future: '+{0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'á þessari mínútu', past: '-{0} mín.', future: '+{0} mín.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'þessa stundina', past: '-{0} klst.', future: '+{0} klst.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'í dag',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} degi', other: 'fyrir {0} dögum'),
        future:
            TimeAgoPluralLabels(one: 'eftir {0} dag', other: 'eftir {0} daga')),
    week: TimeAgoRelativeUnitLabels(
        current: 'í þessari viku',
        past: TimeAgoPluralLabels(
            one: 'fyrir {0} viku', other: 'fyrir {0} vikum'),
        future: TimeAgoPluralLabels(
            one: 'eftir {0} viku', other: 'eftir {0} vikur')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'í þessum mán.',
        past: 'fyrir {0} mán.',
        future: 'eftir {0} mán.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'þessi ársfj.',
        past: 'fyrir {0} ársfj.',
        future: 'eftir {0} ársfj.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'á þessu ári',
        past:
            TimeAgoPluralLabels(one: 'fyrir {0} ári', other: 'fyrir {0} árum'),
        future: TimeAgoPluralLabels.same('eftir {0} ár')),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);
