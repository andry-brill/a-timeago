import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'yue', scriptCode: 'Hans'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 秒前',
    current: '宜家',
    future: '1 秒后',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'yue_Hans';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '宜家', past: '{0} 秒前', future: '{0} 秒后'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '呢分钟', past: '{0} 分钟前', future: '{0} 分钟后'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '呢个小时', past: '{0} 小时前', future: '{0} 小时后'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0} 日前', future: '{0} 日后'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '今个星期', past: '{0} 个星期前', future: '{0} 个星期后'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '今个月', past: '{0} 个月前', future: '{0} 个月后'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今季', past: '{0} 季前', future: '{0} 季后'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年后'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分钟'),
    hour: TimeAgoPluralLabels.same('{0} 小时'),
    day: TimeAgoPluralLabels.same('{0} 日'),
    week: TimeAgoPluralLabels.same('{0} 个星期'),
    month: TimeAgoPluralLabels.same('{0} 个月'),
    quarter: TimeAgoPluralLabels.same('{0} 季'),
    year: TimeAgoPluralLabels.same('{0} 年'),
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
        current: '宜家', past: '{0} 秒前', future: '{0} 秒后'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '呢分钟', past: '{0} 分钟前', future: '{0} 分钟后'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '呢个小时', past: '{0} 小时前', future: '{0} 小时后'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0} 日前', future: '{0} 日后'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '今个星期', past: '{0} 个星期前', future: '{0} 个星期后'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '今个月', past: '{0} 个月前', future: '{0} 个月后'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今季', past: '{0} 季前', future: '{0} 季后'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年后'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分钟'),
    hour: TimeAgoPluralLabels.same('{0} 小时'),
    day: TimeAgoPluralLabels.same('{0} 日'),
    week: TimeAgoPluralLabels.same('{0} 个星期'),
    month: TimeAgoPluralLabels.same('{0} 个月'),
    quarter: TimeAgoPluralLabels.same('{0} 季'),
    year: TimeAgoPluralLabels.same('{0} 年'),
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
