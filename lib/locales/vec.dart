import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'vec'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'jeri',
    today: 'uncó',
    tomorrow: 'doman',
    dateTime: '{1}, {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'che’l ze 1 segondo',
    current: 'deso',
    future: 'tenpo 1 segondo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'vec';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'deso',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} segondo', other: 'che i ze {0} segondi'),
        future: TimeAgoPluralLabels(
            one: 'tenpo {0} segondo', other: 'tenpo {0} segondi')),
    minute: TimeAgoRelativeUnitLabels(
        current: '‘sto menuto',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} menuto', other: 'che i ze {0} menuti'),
        future: TimeAgoPluralLabels(
            one: 'tenpo {0} menuto', other: 'tenpo {0} menuti')),
    hour: TimeAgoRelativeUnitLabels(
        current: '‘sta ora',
        past: TimeAgoPluralLabels(
            one: 'che la ze {0} ora', other: 'che le ze {0} ore'),
        future:
            TimeAgoPluralLabels(one: 'tenpo {0} ora', other: 'tenpo {0} ore')),
    day: TimeAgoRelativeUnitLabels(
        current: 'uncó',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} dì', other: 'che i ze {0} dì'),
        future: TimeAgoPluralLabels.same('tenpo {0} dì')),
    week: TimeAgoRelativeUnitLabels(
        current: '‘sta setemana',
        past: TimeAgoPluralLabels(
            one: 'che la ze {0} setemana', other: 'che le ze {0} setemane'),
        future: TimeAgoPluralLabels(
            one: 'tenpo {0} setemana', other: 'tenpo {0} setemane')),
    month: TimeAgoRelativeUnitLabels(
        current: '‘sto meze',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} meze', other: 'che i ze {0} mezi'),
        future: TimeAgoPluralLabels(
            one: 'tenpo {0} meze', other: 'tenpo {0} mezi')),
    quarter: TimeAgoRelativeUnitLabels(
        current: '‘sto trimestre',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} trimestre', other: 'che i ze {0} trimestri'),
        future: TimeAgoPluralLabels(
            one: 'tenpo {0} trimestre', other: 'tenpo {0} trimestri')),
    year: TimeAgoRelativeUnitLabels(
        current: '‘st’ano',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} ano', other: 'che i ze {0} ani'),
        future:
            TimeAgoPluralLabels(one: 'tenpo {0} ano', other: 'tenpo {0} ani')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segondo', other: '{0} segondi'),
    minute: TimeAgoPluralLabels(one: '{0} menuto', other: '{0} menuti'),
    hour: TimeAgoPluralLabels(one: '{0} ora', other: '{0} ore'),
    day: TimeAgoPluralLabels(one: '{0} dì', other: '{0} dì'),
    week: TimeAgoPluralLabels(one: '{0} setemana', other: '{0} setemane'),
    month: TimeAgoPluralLabels(one: '{0} meze', other: '{0} mezi'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trimestri'),
    year: TimeAgoPluralLabels(one: '{0} ano', other: '{0} ani'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'che i ze {0}',
    future: 'tenpo {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'deso',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} seg', other: 'che i ze {0} seg'),
        future: TimeAgoPluralLabels.same('tenpo {0} seg')),
    minute: TimeAgoRelativeUnitLabels(
        current: '‘sto men',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} men', other: 'che i ze {0} men'),
        future: TimeAgoPluralLabels.same('tenpo {0} men')),
    hour: TimeAgoRelativeUnitLabels(
        current: '‘sta ora',
        past: TimeAgoPluralLabels(
            one: 'che la ze {0} ora', other: 'che le ze {0} ore'),
        future:
            TimeAgoPluralLabels(one: 'tenpo {0} ora', other: 'tenpo {0} ore')),
    day: TimeAgoRelativeUnitLabels(
        current: 'uncó',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} dì', other: 'che i ze {0} dì'),
        future: TimeAgoPluralLabels.same('tenpo {0} dì')),
    week: TimeAgoRelativeUnitLabels(
        current: '‘sta set',
        past: TimeAgoPluralLabels(
            one: 'che la ze {0} set', other: 'che le ze {0} set'),
        future: TimeAgoPluralLabels.same('tenpo {0} set')),
    month: TimeAgoRelativeUnitLabels(
        current: '‘sto meze',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} meze', other: 'che i ze {0} mezi'),
        future: TimeAgoPluralLabels(
            one: 'tenpo {0} meze', other: 'tenpo {0} mezi')),
    quarter: TimeAgoRelativeUnitLabels(
        current: '‘sto trim',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} trim', other: 'che i ze {0} trim'),
        future: TimeAgoPluralLabels.same('tenpo {0} trim')),
    year: TimeAgoRelativeUnitLabels(
        current: '‘st’ano',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} ano', other: 'che i ze {0} ani'),
        future:
            TimeAgoPluralLabels(one: 'tenpo {0} ano', other: 'tenpo {0} ani')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} seg', other: '{0} seg'),
    minute: TimeAgoPluralLabels(one: '{0} men', other: '{0} men'),
    hour: TimeAgoPluralLabels(one: '{0} ora', other: '{0} ore'),
    day: TimeAgoPluralLabels(one: '{0} dì', other: '{0} dì'),
    week: TimeAgoPluralLabels(one: '{0} set', other: '{0} set'),
    month: TimeAgoPluralLabels(one: '{0} meze', other: '{0} mezi'),
    quarter: TimeAgoPluralLabels(one: '{0} trim', other: '{0} trim'),
    year: TimeAgoPluralLabels(one: '{0} ano', other: '{0} ani'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'che i ze {0}',
    future: 'tenpo {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'deso',
        past:
            TimeAgoPluralLabels(one: 'che’l ze {0} s', other: 'che i ze {0} s'),
        future: TimeAgoPluralLabels.same('tenpo {0} s')),
    minute: TimeAgoRelativeUnitLabels(
        current: '‘sto m',
        past:
            TimeAgoPluralLabels(one: 'che’l ze {0} m', other: 'che i ze {0} m'),
        future: TimeAgoPluralLabels.same('tenpo {0} m')),
    hour: TimeAgoRelativeUnitLabels(
        current: '‘sta o',
        past: TimeAgoPluralLabels(
            one: 'che la ze {0} o', other: 'che le ze {0} o'),
        future: TimeAgoPluralLabels.same('tenpo {0} o')),
    day: TimeAgoRelativeUnitLabels(
        current: 'uncó',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} dì', other: 'che i ze {0} dì'),
        future: TimeAgoPluralLabels.same('tenpo {0} dì')),
    week: TimeAgoRelativeUnitLabels(
        current: '‘sta set',
        past: TimeAgoPluralLabels(
            one: 'che la ze {0} set', other: 'che le ze {0} set'),
        future: TimeAgoPluralLabels.same('tenpo {0} set')),
    month: TimeAgoRelativeUnitLabels(
        current: '‘sto meze',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} meze', other: 'che i ze {0} mezi'),
        future: TimeAgoPluralLabels(
            one: 'tenpo {0} meze', other: 'tenpo {0} mezi')),
    quarter: TimeAgoRelativeUnitLabels(
        current: '‘sto trim',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} trim', other: 'che i ze {0} trim'),
        future: TimeAgoPluralLabels.same('tenpo {0} trim')),
    year: TimeAgoRelativeUnitLabels(
        current: '‘st’ano',
        past: TimeAgoPluralLabels(
            one: 'che’l ze {0} ano', other: 'che i ze {0} ani'),
        future:
            TimeAgoPluralLabels(one: 'tenpo {0} ano', other: 'tenpo {0} ani')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} s', other: '{0} s'),
    minute: TimeAgoPluralLabels(one: '{0} m', other: '{0} m'),
    hour: TimeAgoPluralLabels(one: '{0} o', other: '{0} o'),
    day: TimeAgoPluralLabels(one: '{0} dì', other: '{0} dì'),
    week: TimeAgoPluralLabels(one: '{0} set', other: '{0} set'),
    month: TimeAgoPluralLabels(one: '{0} meze', other: '{0} mezi'),
    quarter: TimeAgoPluralLabels(one: '{0} trim', other: '{0} trim'),
    year: TimeAgoPluralLabels(one: '{0} ano', other: '{0} ani'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'che i ze {0}',
    future: 'tenpo {0}',
  ),
);
