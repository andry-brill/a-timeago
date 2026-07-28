import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(
      languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 秒前',
    current: '現在',
    future: '1 秒後',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'zh_Hant_HK';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '現在', past: '{0} 秒前', future: '{0} 秒後'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '這分鐘', past: '{0} 分鐘前', future: '{0} 分鐘後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '這個小時', past: '{0} 小時前', future: '{0} 小時後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0} 日前', future: '{0} 日後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本星期', past: '{0} 星期前', future: '{0} 星期後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0} 個月前', future: '{0} 個月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今季', past: '{0} 季前', future: '{0} 季後'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分鐘'),
    hour: TimeAgoPluralLabels.same('{0} 小時'),
    day: TimeAgoPluralLabels.same('{0} 日'),
    week: TimeAgoPluralLabels.same('{0} 星期'),
    month: TimeAgoPluralLabels.same('{0} 個月'),
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
    future: '{0}後',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '現在', past: '{0} 秒前', future: '{0} 秒後'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '這分鐘', past: '{0} 分鐘前', future: '{0} 分鐘後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '這個小時', past: '{0} 小時前', future: '{0} 小時後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0} 日前', future: '{0} 日後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本星期', past: '{0} 星期前', future: '{0} 星期後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0} 個月前', future: '{0} 個月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今季', past: '{0} 季前', future: '{0} 季後'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分鐘'),
    hour: TimeAgoPluralLabels.same('{0} 小時'),
    day: TimeAgoPluralLabels.same('{0} 日'),
    week: TimeAgoPluralLabels.same('{0} 星期'),
    month: TimeAgoPluralLabels.same('{0} 個月'),
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
    future: '{0}後',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '現在', past: '{0}秒前', future: '{0}秒後'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '這分鐘', past: '{0}分前', future: '{0}分後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '這個小時', past: '{0}小時前', future: '{0}小時後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0}日前', future: '{0}日後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本星期', past: '{0}星期前', future: '{0}星期後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0}個月前', future: '{0}個月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今季', past: '-{0}Q', future: '+{0}Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0}年前', future: '{0}年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}秒'),
    minute: TimeAgoPluralLabels.same('{0}分'),
    hour: TimeAgoPluralLabels.same('{0}小時'),
    day: TimeAgoPluralLabels.same('{0}日'),
    week: TimeAgoPluralLabels.same('{0}星期'),
    month: TimeAgoPluralLabels.same('{0}個月'),
    quarter: TimeAgoPluralLabels.same('{0}Q'),
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
    future: '{0}後',
  ),
);
