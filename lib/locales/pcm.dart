import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'pcm'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'Yẹ́stadè',
    today: 'Todè',
    tomorrow: 'Tumọ́ro',
    dateTime: '{1} fọ {0}',
    relativeDateTime: '{1} fọ {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sẹ́kọn wé dọ́n pas',
    current: 'nau',
    future: 'Fọ 1 Sẹ́kọn',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'pcm';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nau',
        past: '{0} sẹ́kọn wé dọ́n pas',
        future: 'Fọ {0} Sẹ́kọn'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'Dís mínit',
        past: '{0} mínit wé dọ́n pas',
        future: 'Fọ {0} mínit wé de kọm'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'Dís áwa',
        past: '{0} áwa wé dọ́n pas',
        future: 'Fọ {0} áwa wé de kọm'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Todè',
        past: '{0} dè wé dọ́n pas',
        future: 'Fọ {0}dè wé de kọm'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Dís wik',
        past: '{0} wik wé dọ́n pas',
        future: 'Fọ {0}wik wé de kọm'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Dís mọnt',
        past: '{0} mọnt wé dọ́n pas',
        future: 'Fọ {0}mọnt wé de kọm'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'Dís kwọ́ta',
        past: '{0} kwọ́ta wé dọ́n pas',
        future: 'fọ {0} kwọ́ta wé de kọm'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Dís yiẹ',
        past: '{0} yiẹ wé dọ́n pas',
        future: 'fọ {0} yiẹ wé de kọm'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sẹ́kọn wé d'),
    minute: TimeAgoPluralLabels.same('{0} mínit wé d'),
    hour: TimeAgoPluralLabels.same('{0} áwa wé d'),
    day: TimeAgoPluralLabels.same('{0} dè wé d'),
    week: TimeAgoPluralLabels.same('{0} wik wé d'),
    month: TimeAgoPluralLabels.same('{0} mọnt wé d'),
    quarter: TimeAgoPluralLabels.same('{0} kwọ́ta wé d'),
    year: TimeAgoPluralLabels.same('{0} yiẹ wé d'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ọ́n pas',
    future: 'Fọ {0}e kọm',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nau',
        past: '{0} sẹ́kọn wé dọ́n pas',
        future: 'Fọ {0} Sẹ́kọn'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'Dís mínit',
        past: '{0} mínit wé dọ́n pas',
        future: 'Fọ {0} mínit wé de kọm'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'Dís áwa',
        past: '{0} áwa wé dọ́n pas',
        future: 'Fọ {0} áwa wé de kọm'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Todè',
        past: '{0} dè wé dọ́n pas',
        future: 'Fọ {0}dè wé de kọm'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Dís wik',
        past: '{0} wik wé dọ́n pas',
        future: 'Fọ {0}wik wé de kọm'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Dís mọnt',
        past: '{0} mọnt wé dọ́n pas',
        future: 'Fọ {0}mọnt wé de kọm'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'Dís kwọ́ta',
        past: '{0} kwọ́ta wé dọ́n pas',
        future: 'fọ {0} kwọ́ta wé de kọm'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Dís yiẹ',
        past: '{0} yiẹ wé dọ́n pas',
        future: 'fọ {0} yiẹ wé de kọm'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sẹ́kọn wé d'),
    minute: TimeAgoPluralLabels.same('{0} mínit wé d'),
    hour: TimeAgoPluralLabels.same('{0} áwa wé d'),
    day: TimeAgoPluralLabels.same('{0} dè wé d'),
    week: TimeAgoPluralLabels.same('{0} wik wé d'),
    month: TimeAgoPluralLabels.same('{0} mọnt wé d'),
    quarter: TimeAgoPluralLabels.same('{0} kwọ́ta wé d'),
    year: TimeAgoPluralLabels.same('{0} yiẹ wé d'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ọ́n pas',
    future: 'Fọ {0}e kọm',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nau',
        past: '{0} sẹ́kọn wé dọ́n pas',
        future: 'Fọ {0} Sẹ́kọn'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'Dís mínit',
        past: '{0} mínit wé dọ́n pas',
        future: 'Fọ {0} mínit wé de kọm'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'Dís áwa',
        past: 'Fọ {0} áwa wé de kọm',
        future: 'Fọ {0} áwa wé de kọm'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Todè',
        past: '{0} dè wé dọ́n pas',
        future: 'Fọ {0}dè wé de kọm'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Dís wik',
        past: '{0} wik wé dọ́n pas',
        future: 'Fọ {0}wik wé de kọm'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Dís mọnt',
        past: '{0} mọnt wé dọ́n pas',
        future: 'Fọ {0}mọnt wé de kọm'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'Dís kwọ́ta',
        past: '{0} kwọ́ta wé dọ́n pas',
        future: 'fọ {0} kwọ́ta wé de kọm'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Dís yiẹ',
        past: '{0} yiẹ wé dọ́n pas',
        future: 'fọ {0} yiẹ wé de kọm'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sẹ́kọn wé d'),
    minute: TimeAgoPluralLabels.same('{0} mínit wé d'),
    hour: TimeAgoPluralLabels.same('{0} áwa wé de kọm'),
    day: TimeAgoPluralLabels.same('{0} dè wé d'),
    week: TimeAgoPluralLabels.same('{0} wik wé d'),
    month: TimeAgoPluralLabels.same('{0} mọnt wé d'),
    quarter: TimeAgoPluralLabels.same('{0} kwọ́ta wé d'),
    year: TimeAgoPluralLabels.same('{0} yiẹ wé d'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ọ́n pas',
    future: 'Fọ {0}e kọm',
  ),
);
