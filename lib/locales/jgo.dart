import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'jgo'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'now',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'jgo';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'ɛ́ gɛ́ mɔ́ minút {0}',
        future: 'nǔu {0} minút'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'ɛ́ gɛ mɔ́ {0} háwa',
        future: 'nǔu háwa {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'lɔꞋɔ', past: 'Ɛ́ gɛ́ mɔ́ lɛ́Ꞌ {0}', future: 'Nǔu lɛ́Ꞌ {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'Ɛ́ gɛ́ mɔ {0} ŋgap-mbi',
        future: 'Nǔu ŋgap-mbi {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month',
        past: 'ɛ́ gɛ́ mɔ́ pɛsaŋ {0}',
        future: 'Nǔu {0} saŋ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'Ɛ́gɛ́ mɔ́ ŋguꞋ {0}',
        future: 'Nǔu ŋguꞋ {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('ɛ́ gɛ́ mɔ́ minút {0}'),
    hour: TimeAgoPluralLabels.same('ɛ́ gɛ mɔ́ {0} háwa'),
    day: TimeAgoPluralLabels.same('Ɛ́ gɛ́ mɔ́ lɛ́Ꞌ {0}'),
    week: TimeAgoPluralLabels.same('Ɛ́ gɛ́ mɔ {0} ŋgap-mbi'),
    month: TimeAgoPluralLabels.same('ɛ́ gɛ́ mɔ́ pɛsaŋ {0}'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('Ɛ́gɛ́ mɔ́ ŋguꞋ {0}'),
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
        current: 'this minute',
        past: 'ɛ́ gɛ́ mɔ́ minút {0}',
        future: 'nǔu {0} minút'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'ɛ́ gɛ mɔ́ {0} háwa',
        future: 'nǔu háwa {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'lɔꞋɔ', past: 'Ɛ́ gɛ́ mɔ́ lɛ́Ꞌ {0}', future: 'Nǔu lɛ́Ꞌ {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'Ɛ́ gɛ́ mɔ {0} ŋgap-mbi',
        future: 'Nǔu ŋgap-mbi {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month',
        past: 'ɛ́ gɛ́ mɔ́ pɛsaŋ {0}',
        future: 'Nǔu {0} saŋ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'Ɛ́gɛ́ mɔ́ ŋguꞋ {0}',
        future: 'Nǔu ŋguꞋ {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('ɛ́ gɛ́ mɔ́ minút {0}'),
    hour: TimeAgoPluralLabels.same('ɛ́ gɛ mɔ́ {0} háwa'),
    day: TimeAgoPluralLabels.same('Ɛ́ gɛ́ mɔ́ lɛ́Ꞌ {0}'),
    week: TimeAgoPluralLabels.same('Ɛ́ gɛ́ mɔ {0} ŋgap-mbi'),
    month: TimeAgoPluralLabels.same('ɛ́ gɛ́ mɔ́ pɛsaŋ {0}'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('Ɛ́gɛ́ mɔ́ ŋguꞋ {0}'),
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
        current: 'this minute',
        past: 'ɛ́ gɛ́ mɔ́ minút {0}',
        future: 'nǔu {0} minút'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'ɛ́ gɛ mɔ́ {0} háwa',
        future: 'nǔu háwa {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'lɔꞋɔ', past: 'Ɛ́ gɛ́ mɔ́ lɛ́Ꞌ {0}', future: 'Nǔu lɛ́Ꞌ {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'Ɛ́ gɛ́ mɔ {0} ŋgap-mbi',
        future: 'Nǔu ŋgap-mbi {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month',
        past: 'ɛ́ gɛ́ mɔ́ pɛsaŋ {0}',
        future: 'Nǔu {0} saŋ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'Ɛ́gɛ́ mɔ́ ŋguꞋ {0}',
        future: 'Nǔu ŋguꞋ {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('ɛ́ gɛ́ mɔ́ minút {0}'),
    hour: TimeAgoPluralLabels.same('ɛ́ gɛ mɔ́ {0} háwa'),
    day: TimeAgoPluralLabels.same('Ɛ́ gɛ́ mɔ́ lɛ́Ꞌ {0}'),
    week: TimeAgoPluralLabels.same('Ɛ́ gɛ́ mɔ {0} ŋgap-mbi'),
    month: TimeAgoPluralLabels.same('ɛ́ gɛ́ mɔ́ pɛsaŋ {0}'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('Ɛ́gɛ́ mɔ́ ŋguꞋ {0}'),
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
