import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'rhg'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 𐴏𐴠𐴑𐴤𐴠𐴕 𐴀𐴝𐴒𐴠',
    current: '𐴀𐴠𐴈𐴥𐴡𐴕',
    future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 1 𐴏𐴠𐴑𐴤𐴠𐴕',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'rhg';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠𐴈𐴥𐴡𐴕',
        past: '{0} 𐴏𐴠𐴑𐴤𐴠𐴕 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴏𐴠𐴑𐴤𐴠𐴕'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴔𐴞𐴕𐴥𐴡𐴄',
        past: '{0} 𐴔𐴞𐴕𐴥𐴡𐴄 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴔𐴞𐴕𐴥𐴡𐴄'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴒𐴤𐴡𐴕𐴄𐴤𐴝',
        past: '{0} 𐴒𐴤𐴡𐴕𐴄𐴤𐴝 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴒𐴤𐴡𐴕𐴄𐴤𐴝'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴝𐴙𐴅𐴧𐴙𐴝',
        past: '{0} 𐴊𐴞𐴕 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴊𐴞𐴕'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴇𐴥𐴝𐴉𐴃𐴝',
        past: '{0} 𐴇𐴥𐴝𐴉𐴃𐴝 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴇𐴥𐴝𐴉𐴃𐴝'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴔𐴥𐴝𐴐𐴢',
        past: '{0} 𐴔𐴝𐴐𐴢 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴔𐴥𐴝𐴐𐴢'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴉𐴝𐴁𐴝',
        past: '{0} 𐴉𐴝𐴁𐴝 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴉𐴝𐴁𐴝'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴁𐴡𐴏𐴥𐴡𐴌',
        past: '{0} 𐴁𐴡𐴏𐴥𐴡𐴌 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴁𐴡𐴏𐴥𐴡𐴌'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 𐴏𐴠𐴑𐴤𐴠𐴕'),
    minute: TimeAgoPluralLabels.same('{0} 𐴔𐴞𐴕𐴥𐴡𐴄'),
    hour: TimeAgoPluralLabels.same('{0} 𐴒𐴤𐴡𐴕𐴄𐴤𐴝'),
    day: TimeAgoPluralLabels.same('{0} 𐴊𐴞𐴕'),
    week: TimeAgoPluralLabels.same('{0} 𐴇𐴥𐴝𐴉𐴃𐴝'),
    month: TimeAgoPluralLabels.same('{0} 𐴔�'),
    quarter: TimeAgoPluralLabels.same('{0} 𐴉𐴝𐴁𐴝'),
    year: TimeAgoPluralLabels.same('{0} 𐴁𐴡𐴏𐴥𐴡𐴌'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𐴀𐴝𐴒𐴠',
    future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠𐴈𐴥𐴡𐴕',
        past: '{0} 𐴏𐴠𐴑𐴤𐴠𐴕 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴏𐴠𐴑𐴤𐴠𐴕'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴔𐴞𐴕𐴥𐴡𐴄',
        past: '{0} 𐴔𐴞𐴕𐴥𐴡𐴄 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴔𐴞𐴕𐴥𐴡𐴄'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴒𐴤𐴡𐴕𐴄𐴤𐴝',
        past: '{0} 𐴒𐴤𐴡𐴕𐴄𐴤𐴝 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴒𐴤𐴡𐴕𐴄𐴤𐴝'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴝𐴙𐴅𐴧𐴙𐴝',
        past: '{0} 𐴊𐴞𐴕 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴊𐴞𐴕'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴇𐴥𐴝𐴉𐴃𐴝',
        past: '{0} 𐴇𐴥𐴝𐴉𐴃𐴝 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴇𐴥𐴝𐴉𐴃𐴝'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴔𐴥𐴝𐴐𐴢',
        past: '{0} 𐴔𐴝𐴐𐴢 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴔𐴥𐴝𐴐𐴢'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴉𐴝𐴁𐴝',
        past: '{0} 𐴉𐴝𐴁𐴝 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴉𐴝𐴁𐴝'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '𐴀𐴠 𐴁𐴡𐴏𐴥𐴡𐴌',
        past: '{0} 𐴁𐴡𐴏𐴥𐴡𐴌 𐴀𐴝𐴒𐴠',
        future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0} 𐴁𐴡𐴏𐴥𐴡𐴌'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 𐴏𐴠𐴑𐴤𐴠𐴕'),
    minute: TimeAgoPluralLabels.same('{0} 𐴔𐴞𐴕𐴥𐴡𐴄'),
    hour: TimeAgoPluralLabels.same('{0} 𐴒𐴤𐴡𐴕𐴄𐴤𐴝'),
    day: TimeAgoPluralLabels.same('{0} 𐴊𐴞𐴕'),
    week: TimeAgoPluralLabels.same('{0} 𐴇𐴥𐴝𐴉𐴃𐴝'),
    month: TimeAgoPluralLabels.same('{0} 𐴔�'),
    quarter: TimeAgoPluralLabels.same('{0} 𐴉𐴝𐴁𐴝'),
    year: TimeAgoPluralLabels.same('{0} 𐴁𐴡𐴏𐴥𐴡𐴌'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𐴀𐴝𐴒𐴠',
    future: '𐴀𐴝𐴘𐴧𐴥𐴠𐴌𐴊𐴧𐴠 {0}',
  ),
);
