import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'id'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: '1 detik yang lalu',
    current: 'sekarang',
    future: 'dalam 1 detik',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'id';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sekarang',
        past: '{0} detik yang lalu',
        future: 'dalam {0} detik'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'menit ini',
        past: '{0} menit yang lalu',
        future: 'dalam {0} menit'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam ini', past: '{0} jam yang lalu', future: 'dalam {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hari ini',
        past: '{0} hari yang lalu',
        future: 'dalam {0} hari'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'minggu ini',
        past: '{0} minggu yang lalu',
        future: 'dalam {0} minggu'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bulan ini',
        past: '{0} bulan yang lalu',
        future: 'dalam {0} bulan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kuartal ini',
        past: '{0} kuartal yang lalu',
        future: 'dalam {0} kuartal'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tahun ini',
        past: '{0} tahun yang lalu',
        future: 'dalam {0} tahun'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} detik'),
    minute: TimeAgoPluralLabels.same('{0} menit'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} hari'),
    week: TimeAgoPluralLabels.same('{0} minggu'),
    month: TimeAgoPluralLabels.same('{0} bulan'),
    quarter: TimeAgoPluralLabels.same('{0} kuartal'),
    year: TimeAgoPluralLabels.same('{0} tahun'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} yang lalu',
    future: 'dalam {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'sekarang', past: '{0} dtk lalu', future: 'dlm {0} dtk'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'mnt ini', past: '{0} mnt lalu', future: 'dlm {0} mnt'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam ini', past: '{0} jam lalu', future: 'dalam {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hari ini', past: '{0} h lalu', future: 'dalam {0} h'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'mgg ini', past: '{0} mgg lalu', future: 'dlm {0} mgg'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bln ini', past: '{0} bln lalu', future: 'dlm {0} bln'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'krtl ini', past: '{0} krtl. lalu', future: 'dlm {0} krtl.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'thn ini', past: '{0} thn lalu', future: 'dlm {0} thn'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} dtk.'),
    minute: TimeAgoPluralLabels.same('{0} mnt.'),
    hour: TimeAgoPluralLabels.same('{0} jam.'),
    day: TimeAgoPluralLabels.same('{0} hr.'),
    week: TimeAgoPluralLabels.same('{0} mg.'),
    month: TimeAgoPluralLabels.same('{0} bln.'),
    quarter: TimeAgoPluralLabels.same('{0} krtl.'),
    year: TimeAgoPluralLabels.same('{0} thn.'),
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
        current: 'sekarang', past: '{0} dtk lalu', future: 'dlm {0} dtk'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'mnt ini', past: '{0} mnt lalu', future: 'dlm {0} mnt'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'jam ini', past: '{0} jam lalu', future: 'dlm {0} jam'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hari ini', past: '{0} h lalu', future: 'dalam {0} h'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'mgg ini', past: '{0} mgg lalu', future: 'dlm {0} mgg'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bln ini', past: '{0} bln lalu', future: 'dlm {0} bln'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'krtl ini', past: '{0} krtl. lalu', future: 'dlm {0} krtl.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'thn ini', past: '{0} thn lalu', future: 'dlm {0} thn'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} dtk'),
    minute: TimeAgoPluralLabels.same('{0} mnt'),
    hour: TimeAgoPluralLabels.same('{0} jam'),
    day: TimeAgoPluralLabels.same('{0} h'),
    week: TimeAgoPluralLabels.same('{0} mgg'),
    month: TimeAgoPluralLabels.same('{0} bln'),
    quarter: TimeAgoPluralLabels.same('{0} krtl.'),
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

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}dtk lalu'),
        future: TimeAgoPluralLabels.same('dlm {0}dtk')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}mnt lalu'),
        future: TimeAgoPluralLabels.same('dlm {0}mnt')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}jam lalu'),
        future: TimeAgoPluralLabels.same('dlm {0}jam')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}hr lalu'),
        future: TimeAgoPluralLabels.same('dlm {0}hr')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}mg lalu'),
        future: TimeAgoPluralLabels.same('dlm {0}mg')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}bln lalu'),
        future: TimeAgoPluralLabels.same('dlm {0}bln')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} krtl. lalu'),
        future: TimeAgoPluralLabels.same('dlm {0} krtl.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}thn lalu'),
        future: TimeAgoPluralLabels.same('dlm {0}thn')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}dtk'),
    minute: TimeAgoPluralLabels.same('{0}mnt'),
    hour: TimeAgoPluralLabels.same('{0}jam'),
    day: TimeAgoPluralLabels.same('{0}hr'),
    week: TimeAgoPluralLabels.same('{0}mg'),
    month: TimeAgoPluralLabels.same('{0}bln'),
    quarter: TimeAgoPluralLabels.same('{0} krtl.'),
    year: TimeAgoPluralLabels.same('{0}thn'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} lalu',
    future: 'dlm {0}',
  ),
  now: 'sekarang',
);
