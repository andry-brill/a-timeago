import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'th'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 วินาทีที่ผ่านมา',
    current: 'ขณะนี้',
    future: 'ในอีก 1 วินาที',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'th';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ขณะนี้',
        past: '{0} วินาทีที่ผ่านมา',
        future: 'ในอีก {0} วินาที'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'นาทีนี้',
        past: '{0} นาทีที่ผ่านมา',
        future: 'ในอีก {0} นาที'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ชั่วโมงนี้',
        past: '{0} ชั่วโมงที่ผ่านมา',
        future: 'ในอีก {0} ชั่วโมง'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'วันนี้', past: '{0} วันที่ผ่านมา', future: 'ในอีก {0} วัน'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'สัปดาห์นี้',
        past: '{0} สัปดาห์ที่ผ่านมา',
        future: 'ในอีก {0} สัปดาห์'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'เดือนนี้',
        past: '{0} เดือนที่ผ่านมา',
        future: 'ในอีก {0} เดือน'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ไตรมาสนี้',
        past: '{0} ไตรมาสที่แล้ว',
        future: 'ในอีก {0} ไตรมาส'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ปีนี้', past: '{0} ปีที่แล้ว', future: 'ในอีก {0} ปี'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} วินาที'),
    minute: TimeAgoPluralLabels.same('{0} นาที'),
    hour: TimeAgoPluralLabels.same('{0} ชั่วโมง'),
    day: TimeAgoPluralLabels.same('{0} วัน'),
    week: TimeAgoPluralLabels.same('{0} สัปดาห์'),
    month: TimeAgoPluralLabels.same('{0} เดือน'),
    quarter: TimeAgoPluralLabels.same('{0} ไตรมาส'),
    year: TimeAgoPluralLabels.same('{0} ปี'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ที่ผ่านมา',
    future: 'ในอีก {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ขณะนี้', past: '{0} วินาทีที่แล้ว', future: 'ใน {0} วินาที'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'นาทีนี้', past: '{0} นาทีที่แล้ว', future: 'ใน {0} นาที'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ชั่วโมงนี้', past: '{0} ชม. ที่แล้ว', future: 'ใน {0} ชม.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'วันนี้', past: '{0} วันที่แล้ว', future: 'ใน {0} วัน'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'สัปดาห์นี้',
        past: '{0} สัปดาห์ที่แล้ว',
        future: 'ใน {0} สัปดาห์'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'เดือนนี้', past: '{0} เดือนที่แล้ว', future: 'ใน {0} เดือน'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ไตรมาสนี้',
        past: '{0} ไตรมาสที่แล้ว',
        future: 'ใน {0} ไตรมาส'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ปีนี้', past: '{0} ปีที่แล้ว', future: 'ใน {0} ปี'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} วินาที'),
    minute: TimeAgoPluralLabels.same('{0} นาที'),
    hour: TimeAgoPluralLabels.same('{0} ชม.'),
    day: TimeAgoPluralLabels.same('{0} วัน'),
    week: TimeAgoPluralLabels.same('{0} สัปดาห์'),
    month: TimeAgoPluralLabels.same('{0} เดือน'),
    quarter: TimeAgoPluralLabels.same('{0} ไตรมาส'),
    year: TimeAgoPluralLabels.same('{0} ปี'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ที่แล้ว',
    future: 'ใน {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ขณะนี้', past: '{0} วินาทีที่แล้ว', future: 'ใน {0} วินาที'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'นาทีนี้', past: '{0} นาทีที่แล้ว', future: 'ใน {0} นาที'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ชั่วโมงนี้', past: '{0} ชม. ที่แล้ว', future: 'ใน {0} ชม.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'วันนี้', past: '{0} วันที่แล้ว', future: 'ใน {0} วัน'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'สัปดาห์นี้',
        past: '{0} สัปดาห์ที่แล้ว',
        future: 'ใน {0} สัปดาห์'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'เดือนนี้', past: '{0} เดือนที่แล้ว', future: 'ใน {0} เดือน'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ไตรมาสนี้',
        past: '{0} ไตรมาสที่แล้ว',
        future: 'ใน {0} ไตรมาส'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ปีนี้', past: '{0} ปีที่แล้ว', future: 'ใน {0} ปี'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} วินาที'),
    minute: TimeAgoPluralLabels.same('{0} นาที'),
    hour: TimeAgoPluralLabels.same('{0} ชม.'),
    day: TimeAgoPluralLabels.same('{0} วัน'),
    week: TimeAgoPluralLabels.same('{0} สัปดาห์'),
    month: TimeAgoPluralLabels.same('{0} เดือน'),
    quarter: TimeAgoPluralLabels.same('{0} ไตรมาส'),
    year: TimeAgoPluralLabels.same('{0} ปี'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ที่แล้ว',
    future: 'ใน {0}',
  ),
);
