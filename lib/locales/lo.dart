import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'lo'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 ວິນາທີກ່ອນ',
    current: 'ຕອນນີ້',
    future: 'ໃນອີກ 1 ວິນາທີ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'lo';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ຕອນນີ້', past: '{0} ວິນາທີກ່ອນ', future: 'ໃນອີກ {0} ວິນາທີ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ນາທີນີ້', past: '{0} ນາທີກ່ອນ', future: 'ໃນອີກ {0} ນາທີ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ຊົ່ວໂມງນີ້',
        past: '{0} ຊົ່ວໂມງກ່ອນ',
        future: 'ໃນອີກ {0} ຊົ່ວໂມງ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ມື້ນີ້', past: '{0} ມື້ກ່ອນ', future: 'ໃນອີກ {0} ມື້'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ອາທິດນີ້', past: '{0} ອາທິດກ່ອນ', future: 'ໃນອີກ {0} ອາທິດ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ເດືອນນີ້', past: '{0} ເດືອນກ່ອນ', future: 'ໃນອີກ {0} ເດືອນ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ໄຕຣມາດນີ້',
        past: '{0} ໄຕຣມາດກ່ອນ',
        future: 'ໃນອີກ {0} ໄຕຣມາດ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ປີນີ້', past: '{0} ປີກ່ອນ', future: 'ໃນອີກ {0} ປີ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ວິນາທີ'),
    minute: TimeAgoPluralLabels.same('{0} ນາທີ'),
    hour: TimeAgoPluralLabels.same('{0} ຊົ່ວໂມງ'),
    day: TimeAgoPluralLabels.same('{0} ມື້'),
    week: TimeAgoPluralLabels.same('{0} ອາທິດ'),
    month: TimeAgoPluralLabels.same('{0} ເດືອນ'),
    quarter: TimeAgoPluralLabels.same('{0} ໄຕຣມາດ'),
    year: TimeAgoPluralLabels.same('{0} ປີ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ກ່ອນ',
    future: 'ໃນອີກ {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ຕອນນີ້', past: '{0} ວິ. ກ່ອນ', future: 'ໃນ {0} ວິ.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ນາທີນີ້', past: '{0} ນທ. ກ່ອນ', future: 'ໃນ {0} ນທ.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ຊົ່ວໂມງນີ້', past: '{0} ຊມ. ກ່ອນ', future: 'ໃນອີກ {0} ຊມ.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ມື້ນີ້', past: '{0} ມື້ກ່ອນ', future: 'ໃນອີກ {0} ມື້'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ອາທິດນີ້', past: '{0} ອທ. ກ່ອນ', future: 'ໃນອີກ {0} ອທ.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ເດືອນນີ້', past: '{0} ດ. ກ່ອນ', future: 'ໃນອີກ {0} ດ.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ໄຕຣມາດນີ້', past: '{0} ຕມ. ກ່ອນ', future: 'ໃນ {0} ຕມ.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ປີນີ້', past: '{0} ປີກ່ອນ', future: 'ໃນອີກ {0} ປີ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ວິ.'),
    minute: TimeAgoPluralLabels.same('{0} ນທ.'),
    hour: TimeAgoPluralLabels.same('{0} ຊມ.'),
    day: TimeAgoPluralLabels.same('{0} ມື້'),
    week: TimeAgoPluralLabels.same('{0} ອທ.'),
    month: TimeAgoPluralLabels.same('{0} ດ.'),
    quarter: TimeAgoPluralLabels.same('{0} ຕມ.'),
    year: TimeAgoPluralLabels.same('{0} ປີ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ກ່ອນ',
    future: 'ໃນ {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ຕອນນີ້', past: '{0} ວິ. ກ່ອນ', future: 'ໃນ {0} ວິ.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ນາທີນີ້', past: '{0} ນທ. ກ່ອນ', future: 'ໃນ {0} ນທ.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ຊົ່ວໂມງນີ້', past: '{0} ຊມ. ກ່ອນ', future: 'ໃນອີກ {0} ຊມ.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ມື້ນີ້', past: '{0} ມື້ກ່ອນ', future: 'ໃນອີກ {0} ມື້'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ອາທິດນີ້', past: '{0} ອທ. ກ່ອນ', future: 'ໃນອີກ {0} ອທ.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ເດືອນນີ້', past: '{0} ດ. ກ່ອນ', future: 'ໃນອີກ {0} ດ.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ໄຕຣມາດນີ້', past: '{0} ຕມ. ກ່ອນ', future: 'ໃນ {0} ຕມ.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ປີນີ້', past: '{0} ປີກ່ອນ', future: 'ໃນອີກ {0} ປີ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ວິ.'),
    minute: TimeAgoPluralLabels.same('{0} ນທ.'),
    hour: TimeAgoPluralLabels.same('{0} ຊມ.'),
    day: TimeAgoPluralLabels.same('{0} ມື້'),
    week: TimeAgoPluralLabels.same('{0} ອທ.'),
    month: TimeAgoPluralLabels.same('{0} ດ.'),
    quarter: TimeAgoPluralLabels.same('{0} ຕມ.'),
    year: TimeAgoPluralLabels.same('{0} ປີ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ກ່ອນ',
    future: 'ໃນ {0}',
  ),
);
