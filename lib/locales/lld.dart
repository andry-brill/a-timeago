import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'lld'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'inier',
    today: 'incö',
    tomorrow: 'indoman',
    dateTime: '{1} dales {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'dan da 1 n secunt',
    current: 'sëgn',
    future: 'te 1 n secunt',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'lld';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'sëgn',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n secunt', other: 'dan da {0} secunc'),
        future: TimeAgoPluralLabels(
            one: 'te {0} n secunt', other: 'te {0} secunc')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'chësc menüt',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n menüt', other: 'dan da {0} menüc'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n menüt', other: 'te {0} menüc')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'chësta ora',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n’ora', other: 'dan da {0} ores'),
        future: TimeAgoPluralLabels(one: 'te {0} n’ora', other: 'te {0} ores')),
    day: TimeAgoRelativeUnitLabels(
        current: 'incö',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n de', other: 'dan da {0} dis'),
        future: TimeAgoPluralLabels(one: 'te {0} n de', other: 'te {0} dis')),
    week: TimeAgoRelativeUnitLabels(
        current: 'chësta edema',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n’edema', other: 'dan da {0} edemes'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n’edema', other: 'te {0} edemes')),
    month: TimeAgoRelativeUnitLabels(
        current: 'chësc mëis',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n mëis', other: 'dan da {0} mëisc'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n mëis', other: 'te {0} mëisc')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'chësc trimester',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n trimester', other: 'dan da {0} trimestri'),
        future: TimeAgoPluralLabels(
            one: 'te {0} n trimester', other: 'te {0} trimestri')),
    year: TimeAgoRelativeUnitLabels(
        current: 'chësc ann',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n ann', other: 'dan da {0} agn'),
        future: TimeAgoPluralLabels(one: 'te {0} n ann', other: 'te {0} agn')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} n secunt', other: '{0} secunc'),
    minute: TimeAgoPluralLabels(one: '{0} n menüt', other: '{0} menüc'),
    hour: TimeAgoPluralLabels(one: '{0} n’ora', other: '{0} ores'),
    day: TimeAgoPluralLabels(one: '{0} n de', other: '{0} dis'),
    week: TimeAgoPluralLabels(one: '{0} n’edema', other: '{0} edemes'),
    month: TimeAgoPluralLabels(one: '{0} n mëis', other: '{0} mëisc'),
    quarter:
        TimeAgoPluralLabels(one: '{0} n trimester', other: '{0} trimestri'),
    year: TimeAgoPluralLabels(one: '{0} n ann', other: '{0} agn'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'dan da {0}',
    future: 'te {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'sëgn',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n sec.', other: 'dan da {0} sec.'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n sec.', other: 'te {0} sec.')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'chësc menüt',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n min.', other: 'dan da {0} min.'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n min.', other: 'te {0} min.')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'chësta ora',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n’ora', other: 'dan da {0} ores'),
        future: TimeAgoPluralLabels(one: 'te {0} n’ora', other: 'te {0} ores')),
    day: TimeAgoRelativeUnitLabels(
        current: 'incö',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n de', other: 'dan da {0} dis'),
        future: TimeAgoPluralLabels(one: 'te {0} n de', other: 'te {0} dis')),
    week: TimeAgoRelativeUnitLabels(
        current: 'chësta edema',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n’ede.', other: 'dan da {0} ede.'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n’ede.', other: 'te {0} ede.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'chësc mëis',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n mëis', other: 'dan da {0} mëisc'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n mëis', other: 'te {0} mëisc')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'chësc trimester',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n trim.', other: 'dan da {0} trim.'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n trim.', other: 'te {0} trim.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'chësc ann',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n ann', other: 'dan da {0} agn'),
        future: TimeAgoPluralLabels(one: 'te {0} n ann', other: 'te {0} agn')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} n sec.', other: '{0} sec.'),
    minute: TimeAgoPluralLabels(one: '{0} n min.', other: '{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} n’ora', other: '{0} ores'),
    day: TimeAgoPluralLabels(one: '{0} n de', other: '{0} dis'),
    week: TimeAgoPluralLabels(one: '{0} n’ede.', other: '{0} ede.'),
    month: TimeAgoPluralLabels(one: '{0} n mëis', other: '{0} mëisc'),
    quarter: TimeAgoPluralLabels(one: '{0} n trim.', other: '{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} n ann', other: '{0} agn'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'dan da {0}',
    future: 'te {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sëgn', past: 'dan da {0} s', future: 'te {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'chësc menüt', past: 'dan da {0} m', future: 'te {0} m'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'chësta ora',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n’ora', other: 'dan da {0} ores'),
        future: TimeAgoPluralLabels(one: 'te {0} n’ora', other: 'te {0} ores')),
    day: TimeAgoRelativeUnitLabels(
        current: 'incö',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n de', other: 'dan da {0} dis'),
        future: TimeAgoPluralLabels(one: 'te {0} n de', other: 'te {0} dis')),
    week: TimeAgoRelativeUnitLabels(
        current: 'chësta edema',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n’ede.', other: 'dan da {0} ede.'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n’ede.', other: 'te {0} ede.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'chësc mëis',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n mëis', other: 'dan da {0} mëisc'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n mëis', other: 'te {0} mëisc')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'chësc trimester',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n trim.', other: 'dan da {0} trim.'),
        future:
            TimeAgoPluralLabels(one: 'te {0} n trim.', other: 'te {0} trim.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'chësc ann',
        past: TimeAgoPluralLabels(
            one: 'dan da {0} n ann', other: 'dan da {0} agn'),
        future: TimeAgoPluralLabels(one: 'te {0} n ann', other: 'te {0} agn')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels(one: '{0} n’ora', other: '{0} ores'),
    day: TimeAgoPluralLabels(one: '{0} n de', other: '{0} dis'),
    week: TimeAgoPluralLabels(one: '{0} n’ede.', other: '{0} ede.'),
    month: TimeAgoPluralLabels(one: '{0} n mëis', other: '{0} mëisc'),
    quarter: TimeAgoPluralLabels(one: '{0} n trim.', other: '{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} n ann', other: '{0} agn'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'dan da {0}',
    future: 'te {0}',
  ),
);
