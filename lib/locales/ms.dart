import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ms'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'semalam',
    today: 'hari ini',
    tomorrow: 'esok',
    dateTime: '{1} pada {0}',
    relativeDateTime: '{1} pada {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 saat lalu',
    current: 'sekarang',
    future: 'dalam 1 saat',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ms';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sekarang', past: '{0} saat lalu', future: 'dalam {0} saat'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'pada minit ini',
        past: '{0} minit lalu',
        future: 'dalam {0} minit'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam ini', past: '{0} jam lalu', future: 'dalam {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hari ini', past: '{0} hari lalu', future: 'dalam {0} hari'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'minggu ini',
        past: '{0} minggu lalu',
        future: 'dalam {0} minggu'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bulan ini',
        past: '{0} bulan lalu',
        future: 'dalam {0} bulan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'suku tahun ini',
        past: '{0} suku tahun lalu',
        future: 'dalam {0} suku tahun'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tahun ini',
        past: '{0} tahun lalu',
        future: 'dalam {0} tahun'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saat'),
    minute: TimeAgoPluralLabels.same('{0} minit'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} hari'),
    week: TimeAgoPluralLabels.same('{0} minggu'),
    month: TimeAgoPluralLabels.same('{0} bulan'),
    quarter: TimeAgoPluralLabels.same('{0} suku tahun'),
    year: TimeAgoPluralLabels.same('{0} tahun'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} lalu',
    future: 'dalam {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sekarang', past: '{0} saat lalu', future: 'dlm {0} saat'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'pada minit ini', past: '{0} min lalu', future: 'dlm {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam ini', past: '{0} jam lalu', future: 'dlm {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hari ini', past: '{0} hari lalu', future: 'dlm {0} hari'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'mgu ini', past: '{0} mgu lalu', future: 'dlm {0} mgu'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bln ini', past: '{0} bln lalu', future: 'dlm {0} bln'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'suku ini',
        past: '{0} suku thn lalu',
        future: 'dlm {0} suku thn'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'thn ini', past: '{0} thn lalu', future: 'dalam {0} thn'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saat'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} hari'),
    week: TimeAgoPluralLabels.same('{0} mgu'),
    month: TimeAgoPluralLabels.same('{0} bln'),
    quarter: TimeAgoPluralLabels.same('{0} suku thn'),
    year: TimeAgoPluralLabels.same('{0} thn'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} lalu',
    future: 'dlm {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sekarang', past: '{0} saat lalu', future: 'dlm {0} saat'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'pada minit ini', past: '{0} min lalu', future: 'dlm {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam ini', past: '{0} jam lalu', future: 'dlm {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hari ini', past: '{0} hari lalu', future: 'dlm {0} hari'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'mgu ini', past: '{0} mgu lalu', future: 'dlm {0} mgu'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bln ini', past: '{0} bulan lalu', future: 'dlm {0} bln'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'suku ini',
        past: '{0} suku thn lalu',
        future: 'dlm {0} suku thn'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'thn ini', past: '{0} thn lalu', future: 'dalam {0} thn'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saat'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} hari'),
    week: TimeAgoPluralLabels.same('{0} mgu'),
    month: TimeAgoPluralLabels.same('{0} b'),
    quarter: TimeAgoPluralLabels.same('{0} suku thn'),
    year: TimeAgoPluralLabels.same('{0} thn'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} lalu',
    future: 'dlm {0}',
  ),
);
