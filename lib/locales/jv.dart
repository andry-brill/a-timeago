import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'jv'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 detik kepungkur',
    current: 'saiki',
    future: 'ing 1 detik',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'jv';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'saiki', past: '{0} detik kepungkur', future: 'ing {0} detik'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'menit iki',
        past: '{0} menit kepungkur',
        future: 'ing {0} menit'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam iki', past: '{0} jam kepungkur', future: 'ing {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'dino iki',
        past: '{0} dina kepungkur',
        future: 'ing {0} dina'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'pekan iki',
        past: '{0} pekan kepungkur',
        future: 'ing {0} pekan'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'sasi iki',
        past: '{0} sasi kepungkur',
        future: 'ing {0} sasi'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'triwulan iki',
        past: '{0} triwulan kepungkur',
        future: 'ing {0} triwulan'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'taun iki',
        past: '{0} taun kepungkur',
        future: 'ing {0} taun'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} detik'),
    minute: TimeAgoPluralLabels.same('{0} menit'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} dina'),
    week: TimeAgoPluralLabels.same('{0} pekan'),
    month: TimeAgoPluralLabels.same('{0} sasi'),
    quarter: TimeAgoPluralLabels.same('{0} triwulan'),
    year: TimeAgoPluralLabels.same('{0} taun'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} kepungkur',
    future: 'ing {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'saiki', past: '{0} detik kepungkur', future: 'ing {0} detik'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'menit iki',
        past: '{0} menit kepungkur',
        future: 'ing {0} menit'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam iki', past: '{0} jam kepungkur', future: 'ing {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'dino iki',
        past: '{0} dina kepungkur',
        future: 'ing {0} dina'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'pkn iki',
        past: '{0} pekan kepungkur',
        future: 'ing {0} pekan'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'sasi iki',
        past: '{0} sasi kepungkur',
        future: 'ing {0} sasi'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'triwulan iki',
        past: '{0} triwulan kepungkur',
        future: 'ing {0} triwulan'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'taun iki',
        past: '{0} taun kepungkur',
        future: 'ing {0} taun'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} detik'),
    minute: TimeAgoPluralLabels.same('{0} menit'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} dina'),
    week: TimeAgoPluralLabels.same('{0} pekan'),
    month: TimeAgoPluralLabels.same('{0} sasi'),
    quarter: TimeAgoPluralLabels.same('{0} triwulan'),
    year: TimeAgoPluralLabels.same('{0} taun'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} kepungkur',
    future: 'ing {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'saiki', past: '{0} detik kepungkur', future: 'ing {0} detik'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'menit iki',
        past: '{0} menit kepungkur',
        future: 'ing {0} menit'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam iki', past: '{0} jam kepungkur', future: 'ing {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'dino iki',
        past: '{0} dino kepungkur',
        future: 'ing {0} dina'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'pkn iki',
        past: '{0} pekan kepungkur',
        future: 'ing {0} pekan'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'sasi iki',
        past: '{0} sasi kepungkur',
        future: 'ing {0} sasi'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'triwulan iki',
        past: '{0} triwulan kepungkur',
        future: 'ing {0} triwulan'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'taun iki',
        past: '{0} taun kepungkur',
        future: 'ing {0} taun'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} detik'),
    minute: TimeAgoPluralLabels.same('{0} menit'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} din'),
    week: TimeAgoPluralLabels.same('{0} pekan'),
    month: TimeAgoPluralLabels.same('{0} sasi'),
    quarter: TimeAgoPluralLabels.same('{0} triwulan'),
    year: TimeAgoPluralLabels.same('{0} taun'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} kepungkur',
    future: 'ing {0}',
  ),
);
