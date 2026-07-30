import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'yi'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'נעכטן',
    today: 'היינט',
    tomorrow: 'מארגן',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'now',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'yi';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'היינט',
        past: TimeAgoPluralLabels.same('-{0} d'),
        future: TimeAgoPluralLabels(
            one: 'אין {0} טאָג אַרום', other: 'אין {0} טעג אַרום')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels(
        current: 'דעם חודש',
        past: TimeAgoPluralLabels(
            one: 'פֿאַר {0} חודש', other: 'פֿאַר {0} חדשים'),
        future: TimeAgoPluralLabels(
            one: 'איבער {0} חודש', other: 'איבער {0} חדשים')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'הײַ יאָר', past: 'פֿאַר {0} יאָר', future: 'איבער {0} יאָר'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels(one: '{0} חודש', other: '{0} חדשים'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} יאָר'),
  ),
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

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'היינט',
        past: TimeAgoPluralLabels.same('-{0} d'),
        future: TimeAgoPluralLabels(
            one: 'אין {0} טאָג אַרום', other: 'אין {0} טעג אַרום')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels(
        current: 'דעם חודש',
        past: TimeAgoPluralLabels(
            one: 'פֿאַר {0} חודש', other: 'פֿאַר {0} חדשים'),
        future: TimeAgoPluralLabels(
            one: 'איבער {0} חודש', other: 'איבער {0} חדשים')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'הײַ יאָר',
        past: TimeAgoPluralLabels.same('פֿאַר {0} יאָר'),
        future:
            TimeAgoPluralLabels(one: 'איבער א יאָר', other: 'איבער {0} יאָר')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels(one: '{0} חודש', other: '{0} חדשים'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} יאָר', other: '{0} יאָר'),
  ),
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

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'היינט',
        past: TimeAgoPluralLabels.same('-{0} d'),
        future: TimeAgoPluralLabels(
            one: 'אין {0} טאָג אַרום', other: 'אין {0} טעג אַרום')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week', past: '-{0} w', future: '+{0} w'),
    month: TimeAgoRelativeUnitLabels(
        current: 'דעם חודש',
        past: TimeAgoPluralLabels(
            one: 'פֿאַר {0} חודש', other: 'פֿאַר {0} חדשים'),
        future: TimeAgoPluralLabels(
            one: 'איבער {0} חודש', other: 'איבער {0} חדשים')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'הײַ יאָר', past: 'פֿאַר {0} יאָר', future: 'איבער {0} יאָר'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} w'),
    month: TimeAgoPluralLabels(one: '{0} חודש', other: '{0} חדשים'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} יאָר'),
  ),
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
