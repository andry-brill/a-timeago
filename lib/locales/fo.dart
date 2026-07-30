import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'fo'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'í gjár',
    today: 'í dag',
    tomorrow: 'í morgin',
    dateTime: '{1} kl. {0}',
    relativeDateTime: '{1} kl. {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekund síðan',
    current: 'nú',
    future: 'um 1 sekund',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'fo';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nú', past: '{0} sekund síðan', future: 'um {0} sekund'),
    minute: TimeAgoRelativeUnitLabels(
        current: 'hendan minuttin',
        past: TimeAgoPluralLabels(
            one: '{0} minutt síðan', other: '{0} minuttir síðan'),
        future: TimeAgoPluralLabels(
            one: 'um {0} minutt', other: 'um {0} minuttir')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'hendan tíman',
        past: TimeAgoPluralLabels(
            one: '{0} tími síðan', other: '{0} tímar síðan'),
        future: TimeAgoPluralLabels(one: 'um {0} tíma', other: 'um {0} tímar')),
    day: TimeAgoRelativeUnitLabels(
        current: 'í dag',
        past: TimeAgoPluralLabels(
            one: '{0} dagur síðan', other: '{0} dagar síðan'),
        future: TimeAgoPluralLabels(one: 'um {0} dag', other: 'um {0} dagar')),
    week: TimeAgoRelativeUnitLabels(
        current: 'hesu viku',
        past: TimeAgoPluralLabels(
            one: '{0} vika síðan', other: '{0} vikur síðan'),
        future: TimeAgoPluralLabels(one: 'um {0} viku', other: 'um {0} vikur')),
    month: TimeAgoRelativeUnitLabels(
        current: 'henda mánaðin',
        past: TimeAgoPluralLabels(
            one: '{0} mánað síðan', other: '{0} mánaðir síðan'),
        future:
            TimeAgoPluralLabels(one: 'um {0} mánað', other: 'um {0} mánaðir')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'hendan ársfjórðingin',
        past: TimeAgoPluralLabels(
            one: '{0} ársfjórðing síðan', other: '{0} ársfjórðingar síðan'),
        future: TimeAgoPluralLabels(
            one: 'um {0} ársfjórðing', other: 'um {0} ársfjórðingar')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'í ár', past: '{0} ár síðan', future: 'um {0} ár'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sekund'),
    minute: TimeAgoPluralLabels(one: '{0} minutt', other: '{0} minuttir'),
    hour: TimeAgoPluralLabels(one: '{0} tím', other: '{0} tímar'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dagar'),
    week: TimeAgoPluralLabels(one: '{0} vik', other: '{0} vikur'),
    month: TimeAgoPluralLabels(one: '{0} mánað', other: '{0} mánaðir'),
    quarter:
        TimeAgoPluralLabels(one: '{0} ársfjórðing', other: '{0} ársfjórðingar'),
    year: TimeAgoPluralLabels.same('{0} ár'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} síðan',
    future: 'um {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nú', past: '{0} sek. síðan', future: 'um {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'hendan minuttin',
        past: '{0} min. síðan',
        future: 'um {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'hendan tíman', past: '{0} t. síðan', future: 'um {0} t.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'í dag', past: '{0} da. síðan', future: 'um {0} da.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'hesu vi.', past: '{0} vi. síðan', future: 'um {0} vi.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'henda mnð.', past: '{0} mnð. síðan', future: 'um {0} mnð.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'hendan ársfjórðingin',
        past: '{0} ársfj. síðan',
        future: 'um {0} ársfj.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'í ár', past: '{0} ár síðan', future: 'um {0} ár'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} t.'),
    day: TimeAgoPluralLabels.same('{0} da.'),
    week: TimeAgoPluralLabels.same('{0} vi.'),
    month: TimeAgoPluralLabels.same('{0} mnð.'),
    quarter: TimeAgoPluralLabels.same('{0} ársfj.'),
    year: TimeAgoPluralLabels.same('{0} ár'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} síðan',
    future: 'um {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nú', past: '{0} s. síðan', future: 'um {0} s.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'hendan minuttin', past: '{0} m. síðan', future: 'um {0} m.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'hendan tíman', past: '{0} t. síðan', future: 'um {0} t.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'í dag', past: '{0} d. síðan', future: 'um {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'hesu v.', past: '{0} v. síðan', future: 'um {0} v.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'henda mnð.', past: '{0} mnð. síðan', future: 'um {0} mnð.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'hendan ársfjórðingin',
        past: '{0} ársfj. síðan',
        future: 'um {0} ársfj.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'í ár', past: '{0} ár síðan', future: 'um {0} ár'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s.'),
    minute: TimeAgoPluralLabels.same('{0} m.'),
    hour: TimeAgoPluralLabels.same('{0} t.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} v.'),
    month: TimeAgoPluralLabels.same('{0} mnð.'),
    quarter: TimeAgoPluralLabels.same('{0} ársfj.'),
    year: TimeAgoPluralLabels.same('{0} ár'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} síðan',
    future: 'um {0}',
  ),
);
