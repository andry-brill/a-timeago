import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: '昨天',
    today: '今天',
    tomorrow: '明天',
    dateTime: '{1} {0}',
    relativeDateTime: '{1}{0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 秒前',
    current: '現在',
    future: '1 秒後',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'zh_Hant';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '現在', past: '{0} 秒前', future: '{0} 秒後'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '這一分鐘', past: '{0} 分鐘前', future: '{0} 分鐘後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '這一小時', past: '{0} 小時前', future: '{0} 小時後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今天', past: '{0} 天前', future: '{0} 天後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本週', past: '{0} 週前', future: '{0} 週後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0} 個月前', future: '{0} 個月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '這一季', past: '{0} 季前', future: '{0} 季後'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分鐘'),
    hour: TimeAgoPluralLabels.same('{0} 小時'),
    day: TimeAgoPluralLabels.same('{0} 天'),
    week: TimeAgoPluralLabels.same('{0} 週'),
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
        current: '這一分鐘', past: '{0} 分鐘前', future: '{0} 分鐘後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '這一小時', past: '{0} 小時前', future: '{0} 小時後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今天', past: '{0} 天前', future: '{0} 天後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '本週', past: '{0} 週前', future: '{0} 週後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '本月', past: '{0} 個月前', future: '{0} 個月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '這一季', past: '{0} 季前', future: '{0} 季後'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分鐘'),
    hour: TimeAgoPluralLabels.same('{0} 小時'),
    day: TimeAgoPluralLabels.same('{0} 天'),
    week: TimeAgoPluralLabels.same('{0} 週'),
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
