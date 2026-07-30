import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ja'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: '昨日',
    today: '今日',
    tomorrow: '明日',
    dateTime: '{1} {0}',
    relativeDateTime: '{1}の {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 秒前',
    current: '今',
    future: '1 秒後',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ja';

/// Ten-year unit using Unicode CLDR 48.1 Japanese duration labels.
const TimeAgoStep decade = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 10,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.same('{0} 十年'),
      short: TimeAgoPluralLabels.same('{0} 十年'),
      narrow: TimeAgoPluralLabels.same('{0}十年'),
    ),
  ),
);

/// Hundred-year unit using Unicode CLDR 48.1 Japanese duration labels.
const TimeAgoStep century = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 100,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.same('{0} 世紀'),
      short: TimeAgoPluralLabels.same('{0} 世紀'),
      narrow: TimeAgoPluralLabels.same('{0}世紀'),
    ),
  ),
);

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '今', past: '{0} 秒前', future: '{0} 秒後'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '1 分以内', past: '{0} 分前', future: '{0} 分後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '1 時間以内', past: '{0} 時間前', future: '{0} 時間後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0} 日前', future: '{0} 日後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '今週', past: '{0} 週間前', future: '{0} 週間後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '今月', past: '{0} か月前', future: '{0} か月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今四半期', past: '{0} 四半期前', future: '{0} 四半期後'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分'),
    hour: TimeAgoPluralLabels.same('{0} 時間'),
    day: TimeAgoPluralLabels.same('{0} 日'),
    week: TimeAgoPluralLabels.same('{0} 週間'),
    month: TimeAgoPluralLabels.same('{0} か月'),
    quarter: TimeAgoPluralLabels.same('{0} 四半期'),
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
        current: '今', past: '{0} 秒前', future: '{0} 秒後'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '1 分以内', past: '{0} 分前', future: '{0} 分後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '1 時間以内', past: '{0} 時間前', future: '{0} 時間後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0} 日前', future: '{0} 日後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '今週', past: '{0} 週間前', future: '{0} 週間後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '今月', past: '{0} か月前', future: '{0} か月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今四半期', past: '{0} 四半期前', future: '{0} 四半期後'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0} 年前', future: '{0} 年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 秒'),
    minute: TimeAgoPluralLabels.same('{0} 分'),
    hour: TimeAgoPluralLabels.same('{0} 時間'),
    day: TimeAgoPluralLabels.same('{0} 日'),
    week: TimeAgoPluralLabels.same('{0} 週間'),
    month: TimeAgoPluralLabels.same('{0} か月'),
    quarter: TimeAgoPluralLabels.same('{0} 四半期'),
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
        current: '今', past: '{0}秒前', future: '{0}秒後'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '1 分以内', past: '{0}分前', future: '{0}分後'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '1 時間以内', past: '{0}時間前', future: '{0}時間後'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '今日', past: '{0}日前', future: '{0}日後'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '今週', past: '{0}週間前', future: '{0}週間後'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '今月', past: '{0}か月前', future: '{0}か月後'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '今四半期', past: '{0}四半期前', future: '{0}四半期後'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '今年', past: '{0}年前', future: '{0}年後'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}秒'),
    minute: TimeAgoPluralLabels.same('{0}分'),
    hour: TimeAgoPluralLabels.same('{0}時間'),
    day: TimeAgoPluralLabels.same('{0}日'),
    week: TimeAgoPluralLabels.same('{0}週間'),
    month: TimeAgoPluralLabels.same('{0}か月'),
    quarter: TimeAgoPluralLabels.same('{0}四半期'),
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
