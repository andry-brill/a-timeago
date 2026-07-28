import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/zh.dart' as zh;
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(
      languageCode: 'zh', scriptCode: 'Hans', countryCode: 'HK'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1秒前',
    current: '现在',
    future: '1秒后',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'zh_Hans_HK';

/// Ten-year unit shared with the reviewed Simplified Chinese CLDR labels.
const TimeAgoStep decade = zh.decade;

/// Hundred-year unit shared with the reviewed Simplified Chinese CLDR labels.
const TimeAgoStep century = zh.century;

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '现在', past: '{0}秒前', future: '{0}秒后'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '此刻', past: '{0}分钟前', future: '{0}分钟后'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '这一时间 / 此时', past: '{0}小时前', future: '{0}小时后'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今天', past: '{0}天前', future: '{0}天后'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本周', past: '{0}周前', future: '{0}周后'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0}个月前', future: '{0}个月后'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '本季度', past: '{0}个季度前', future: '{0}个季度后'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0}年前', future: '{0}年后'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}秒'),
    minute: TimeAgoPluralLabels.same('{0}分钟'),
    hour: TimeAgoPluralLabels.same('{0}小时'),
    day: TimeAgoPluralLabels.same('{0}天'),
    week: TimeAgoPluralLabels.same('{0}周'),
    month: TimeAgoPluralLabels.same('{0}个月'),
    quarter: TimeAgoPluralLabels.same('{0}个季度'),
    year: TimeAgoPluralLabels.same('{0}年'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}前',
    future: '{0}后',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '现在', past: '{0}秒前', future: '{0}秒后'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '此刻', past: '{0}分钟前', future: '{0}分钟后'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '这一时间 / 此时', past: '{0}小时前', future: '{0}小时后'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今天', past: '{0}天前', future: '{0}天后'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本周', past: '{0}周前', future: '{0}周后'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0}个月前', future: '{0}个月后'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '本季度', past: '{0}个季度前', future: '{0}个季度后'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0}年前', future: '{0}年后'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}秒'),
    minute: TimeAgoPluralLabels.same('{0}分钟'),
    hour: TimeAgoPluralLabels.same('{0}小时'),
    day: TimeAgoPluralLabels.same('{0}天'),
    week: TimeAgoPluralLabels.same('{0}周'),
    month: TimeAgoPluralLabels.same('{0}个月'),
    quarter: TimeAgoPluralLabels.same('{0}个季度'),
    year: TimeAgoPluralLabels.same('{0}年'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}前',
    future: '{0}后',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '现在', past: '{0}秒前', future: '{0}秒后'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '此刻', past: '{0}分钟前', future: '{0}分钟后'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '这一时间 / 此时', past: '{0}小时前', future: '{0}小时后'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今天', past: '{0}天前', future: '{0}天后'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本周', past: '{0}周前', future: '{0}周后'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0}个月前', future: '{0}个月后'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '本季度', past: '{0}个季度前', future: '{0}个季度后'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0}年前', future: '{0}年后'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}秒'),
    minute: TimeAgoPluralLabels.same('{0}分钟'),
    hour: TimeAgoPluralLabels.same('{0}小时'),
    day: TimeAgoPluralLabels.same('{0}天'),
    week: TimeAgoPluralLabels.same('{0}周'),
    month: TimeAgoPluralLabels.same('{0}个月'),
    quarter: TimeAgoPluralLabels.same('{0}个季度'),
    year: TimeAgoPluralLabels.same('{0}年'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}前',
    future: '{0}后',
  ),
);
