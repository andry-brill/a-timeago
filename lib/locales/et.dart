import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'et'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'eile',
    today: 'täna',
    tomorrow: 'homme',
    dateTime: '{1}, kell {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekundi eest',
    current: 'nüüd',
    future: '1 sekundi pärast',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'et';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nüüd',
        past: '{0} sekundi eest',
        future: '{0} sekundi pärast'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'praegusel minutil',
        past: '{0} minuti eest',
        future: '{0} minuti pärast'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'praegusel tunnil',
        past: '{0} tunni eest',
        future: '{0} tunni pärast'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'täna', past: '{0} päeva eest', future: '{0} päeva pärast'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'käesolev nädal',
        past: '{0} nädala eest',
        future: '{0} nädala pärast'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'käesolev kuu',
        past: '{0} kuu eest',
        future: '{0} kuu pärast'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'käesolev kvartal',
        past: '{0} kvartali eest',
        future: '{0} kvartali pärast'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'käesolev aasta',
        past: '{0} aasta eest',
        future: '{0} aasta pärast'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sekundi'),
    minute: TimeAgoPluralLabels.same('{0} minuti'),
    hour: TimeAgoPluralLabels.same('{0} tunni'),
    day: TimeAgoPluralLabels.same('{0} päeva'),
    week: TimeAgoPluralLabels.same('{0} nädala'),
    month: TimeAgoPluralLabels.same('{0} kuu'),
    quarter: TimeAgoPluralLabels.same('{0} kvartali'),
    year: TimeAgoPluralLabels.same('{0} aasta'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} eest',
    future: '{0} pärast',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nüüd', past: '{0} sek eest', future: '{0} sek pärast'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'praegusel minutil',
        past: '{0} min eest',
        future: '{0} min pärast'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'praegusel tunnil',
        past: '{0} t eest',
        future: '{0} t pärast'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'täna', past: '{0} p eest', future: '{0} p pärast'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'see näd', past: '{0} näd eest', future: '{0} näd pärast'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'see kuu', past: '{0} kuu eest', future: '{0} kuu pärast'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'käesolev kv', past: '{0} kv eest', future: '{0} kv pärast'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'käesolev a', past: '{0} a eest', future: '{0} a pärast'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} p'),
    week: TimeAgoPluralLabels.same('{0} näd'),
    month: TimeAgoPluralLabels.same('{0} kuu'),
    quarter: TimeAgoPluralLabels.same('{0} kv'),
    year: TimeAgoPluralLabels.same('{0} a'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} eest',
    future: '{0} pärast',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nüüd', past: '{0} s eest', future: '{0} s pärast'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'praegusel minutil',
        past: '{0} min eest',
        future: '{0} min pärast'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'praegusel tunnil',
        past: '{0} t eest',
        future: '{0} t pärast'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'täna', past: '{0} p eest', future: '{0} p pärast'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'see n', past: '{0} näd eest', future: '{0} näd pärast'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'see k', past: '{0} k eest', future: '{0} k pärast'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'käesolev kv', past: '{0} kv eest', future: '{0} kv pärast'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'see a', past: '{0} a eest', future: '{0} a pärast'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} p'),
    week: TimeAgoPluralLabels.same('{0} näd'),
    month: TimeAgoPluralLabels.same('{0} k'),
    quarter: TimeAgoPluralLabels.same('{0} kv'),
    year: TimeAgoPluralLabels.same('{0} a'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} eest',
    future: '{0} pärast',
  ),
);
