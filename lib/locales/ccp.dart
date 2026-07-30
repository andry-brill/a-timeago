import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ccp'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: '𑄉𑄬𑄣𑄴𑄣𑄳𑄠𑄇𑄬𑄣𑄳𑄠𑄬',
    today: '𑄃𑄬𑄌𑄴𑄥𑄳𑄠',
    tomorrow: '𑄃𑄬𑄎𑄬𑄖𑄴𑄖𑄳𑄠𑄇𑄬𑄣𑄳𑄠𑄬',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 𑄥𑄬𑄉𑄬𑄚𑄴 𑄃𑄉𑄬',
    current: '𑄃𑄨𑄇𑄴𑄅𑄚𑄪',
    future: '1 𑄥𑄬𑄉𑄬𑄚𑄴𑄘𑄬',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ccp';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄨𑄇𑄴𑄅𑄚𑄪',
        past: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴𑄘𑄬'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄟𑄨𑄚𑄨𑄖𑄴',
        past: '{0} 𑄟𑄨𑄚𑄨𑄖𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄟𑄨𑄚𑄨𑄘𑄬'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄊𑄮𑄚𑄴𑄓𑄠𑄴',
        past: '{0} 𑄊𑄮𑄚𑄴𑄓 𑄃𑄉𑄬',
        future: '{0} 𑄊𑄮𑄚𑄴𑄓𑄠𑄴'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄬𑄌𑄴𑄥𑄳𑄠',
        past: '{0} 𑄘𑄨𑄚𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄘𑄨𑄚𑄮 𑄟𑄧𑄖𑄴𑄙𑄳𑄠'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄥𑄛𑄴𑄖',
        past: '{0} 𑄥𑄛𑄴𑄖 𑄃𑄉𑄬',
        future: '{0} 𑄥𑄛𑄴𑄖𑄠𑄴'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄟𑄏𑄴',
        past: '{0} 𑄟𑄏𑄧 𑄃𑄉𑄬',
        future: '{0} 𑄟𑄏𑄬'),
    quarter: TimeAgoRelativeUnitLabels(
        current: '𑄃𑄳𑄆𑄬 𑄖𑄨𑄚𑄴𑄟𑄏𑄧𑄢𑄴',
        past: TimeAgoPluralLabels.same('{0} 𑄖𑄨𑄚𑄴𑄟𑄏𑄧𑄢𑄴 𑄃𑄉𑄬'),
        future: TimeAgoPluralLabels(
            one: '{0} 𑄖𑄨𑄚𑄴𑄟𑄏𑄬', other: '{0} 𑄖𑄨𑄚𑄟𑄏𑄬')),
    year: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄬 𑄝𑄧𑄏𑄧𑄢𑄴',
        past: '{0} 𑄝𑄧𑄏𑄧𑄢𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄝𑄧𑄏𑄧𑄢𑄬'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 𑄥𑄬𑄉𑄬𑄚𑄴'),
    minute: TimeAgoPluralLabels.same('{0} 𑄟𑄨𑄚𑄨�'),
    hour: TimeAgoPluralLabels.same('{0} 𑄊𑄮𑄚𑄴𑄓'),
    day: TimeAgoPluralLabels.same('{0} 𑄘𑄨𑄚�'),
    week: TimeAgoPluralLabels.same('{0} 𑄥𑄛𑄴𑄖'),
    month: TimeAgoPluralLabels.same('{0} 𑄟𑄏�'),
    quarter:
        TimeAgoPluralLabels(one: '{0} 𑄖𑄨𑄚𑄴𑄟𑄏�', other: '{0} 𑄖𑄨𑄚�'),
    year: TimeAgoPluralLabels.same('{0} 𑄝𑄧𑄏𑄧𑄢�'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𑄃𑄉𑄬',
    future: '{0}𑄘𑄬',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄨𑄇𑄴𑄅𑄚𑄪',
        past: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴𑄘𑄬'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄟𑄨𑄚𑄨𑄖𑄴',
        past: '{0} 𑄟𑄨𑄚𑄨𑄖𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄟𑄨𑄚𑄨𑄘𑄬'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄊𑄮𑄚𑄴𑄓𑄠𑄴',
        past: '{0} 𑄊𑄮𑄚𑄴𑄓 𑄃𑄉𑄬',
        future: '{0} 𑄊𑄮𑄚𑄴𑄓𑄠𑄴'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄬𑄌𑄴𑄥𑄳𑄠𑄬',
        past: '{0} 𑄘𑄨𑄚𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄘𑄨𑄚𑄮 𑄟𑄧𑄖𑄴𑄙𑄳𑄠'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄥𑄛𑄴𑄖',
        past: '{0} 𑄥𑄛𑄴𑄖 𑄃𑄉𑄬',
        future: '{0} 𑄥𑄛𑄴𑄖𑄠𑄴'),
    month: TimeAgoRelativeUnitLabels(
        current: '𑄃𑄳𑄆𑄬 𑄟𑄏𑄴',
        past: TimeAgoPluralLabels(
            one: '{0} 𑄇𑄏𑄧 𑄃𑄉𑄬', other: '{0} 𑄟𑄏𑄧 𑄃𑄉𑄬'),
        future: TimeAgoPluralLabels.same('{0} 𑄟𑄏𑄬')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄖𑄨𑄚𑄴𑄟𑄏𑄧𑄢𑄴',
        past: '{0}𑄖𑄨𑄚𑄴𑄟𑄏𑄧𑄢𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄖𑄨𑄚𑄴𑄟𑄏𑄬'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄝𑄧𑄏𑄧𑄢𑄴',
        past: '{0} 𑄝𑄧𑄏𑄧𑄢𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄝𑄧𑄏𑄧𑄢𑄬'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} 𑄥𑄬𑄉𑄬𑄚𑄴'),
    minute: TimeAgoPluralLabels.same('{0} 𑄟𑄨𑄚𑄨�'),
    hour: TimeAgoPluralLabels.same('{0} 𑄊𑄮𑄚𑄴𑄓'),
    day: TimeAgoPluralLabels.same('{0} 𑄘𑄨𑄚�'),
    week: TimeAgoPluralLabels.same('{0} 𑄥𑄛𑄴𑄖'),
    month: TimeAgoPluralLabels(one: '{0} �', other: '{0} 𑄟𑄏�'),
    quarter: TimeAgoPluralLabels.same('{0}𑄖𑄨𑄚𑄴𑄟𑄏𑄧𑄢𑄴'),
    year: TimeAgoPluralLabels.same('{0} 𑄝𑄧𑄏𑄧𑄢�'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𑄃𑄉𑄬',
    future: '{0}𑄘𑄬',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: '𑄃𑄨𑄇𑄴𑄅𑄚𑄪',
        past: TimeAgoPluralLabels.same('{0} 𑄥𑄬𑄉𑄬𑄚𑄴 𑄃𑄉𑄬'),
        future: TimeAgoPluralLabels(
            one: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴', other: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴𑄘𑄬')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄟𑄨𑄚𑄨𑄖𑄴',
        past: '{0} 𑄟𑄨𑄚𑄨𑄖𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄟𑄨𑄚𑄨𑄘𑄬'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄊𑄮𑄚𑄴𑄓𑄠𑄴',
        past: '{0} 𑄊𑄮𑄚𑄴𑄓 𑄃𑄉𑄬',
        future: '{0} 𑄊𑄮𑄚𑄴𑄓𑄠𑄴'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄬𑄌𑄴𑄥𑄳𑄠𑄬',
        past: '{0} 𑄘𑄨𑄚𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄘𑄨𑄚𑄮 𑄟𑄧𑄖𑄴𑄙𑄳𑄠'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄥𑄛𑄴𑄖',
        past: '{0} 𑄥𑄛𑄴𑄖𑄢𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄥𑄛𑄴𑄖𑄠𑄴'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄟𑄏𑄴',
        past: '{0} 𑄟𑄏𑄧 𑄃𑄉𑄬',
        future: '{0} 𑄟𑄏𑄬'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄖𑄨𑄚𑄴𑄟𑄏𑄧𑄢𑄴',
        past: '{0} 𑄖𑄨𑄚𑄴𑄟𑄏𑄧𑄢𑄴 𑄃𑄬𑄉',
        future: '{0} 𑄖𑄨𑄚𑄴𑄟𑄏𑄬'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '𑄃𑄳𑄆𑄬 𑄝𑄧𑄏𑄧𑄢𑄴',
        past: '{0} 𑄝𑄧𑄏𑄧𑄢𑄴 𑄃𑄉𑄬',
        future: '{0} 𑄝𑄧𑄏𑄧𑄢𑄬'),
  ),
  units: TimeAgoUnitLabels(
    second:
        TimeAgoPluralLabels(one: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴', other: '{0} 𑄥𑄬𑄉𑄬𑄚𑄴'),
    minute: TimeAgoPluralLabels.same('{0} 𑄟𑄨𑄚𑄨�'),
    hour: TimeAgoPluralLabels.same('{0} 𑄊𑄮𑄚𑄴𑄓'),
    day: TimeAgoPluralLabels.same('{0} 𑄘𑄨𑄚�'),
    week: TimeAgoPluralLabels.same('{0} 𑄥𑄛𑄴𑄖�'),
    month: TimeAgoPluralLabels.same('{0} 𑄟𑄏�'),
    quarter: TimeAgoPluralLabels.same('{0} 𑄖𑄨𑄚𑄴𑄟𑄏�'),
    year: TimeAgoPluralLabels.same('{0} 𑄝𑄧𑄏𑄧𑄢�'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𑄃𑄉𑄬',
    future: '{0}𑄘𑄬',
  ),
);
