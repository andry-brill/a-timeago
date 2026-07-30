import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ff', scriptCode: 'Adlm'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: '𞤸𞤢𞤲𞤳𞤭',
    today: '𞤸𞤢𞤲𞤣𞤫',
    tomorrow: '𞤶𞤢𞤲𞤺𞤮',
    dateTime: '{1} 𞤉 {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 𞤳𞤭𞤲𞤰𞤢𞤤 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤺𞤢𞤤',
    current: '𞤶𞤮𞥅𞤲𞤭',
    future: '𞤲𞥋𞤣𞤫𞤪 1 𞤳𞤭𞤲𞤰𞤢𞤤',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ff_Adlm';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: '𞤶𞤮𞥅𞤲𞤭',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤳𞤭𞤲𞤰𞤢𞤤 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤺𞤢𞤤',
            other: '{0} 𞤳𞤭𞤲𞤰𞤫 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤳𞤭𞤲𞤰𞤢𞤤',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤳𞤭𞤲𞤰𞤫')),
    minute: TimeAgoRelativeUnitLabels(
        current: '𞤲𞥋𞤣𞤫𞥅 𞤯𞤮𞤮 𞤸𞤮𞤶𞤮𞤥𞤪𞤫',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤸𞤮𞤶𞤮𞤥𞤪𞤫 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤳𞤮𞤶𞤮𞤥𞤶𞤫 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤸𞤮𞤶𞤮𞤥𞤪𞤫',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤳𞤮𞤶𞤮𞤥𞤶𞤫')),
    hour: TimeAgoRelativeUnitLabels(
        current: '𞤲𞥋𞤣𞤭𞥅 𞤯𞤮𞤮 𞤲𞥋𞤶𞤢𞤥𞤲𞥋𞤣𞤭',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤲𞥋𞤶𞤢𞤥𞤲𞥋𞤣𞤭 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤭',
            other: '{0} 𞤲𞥋𞤶𞤢𞤥𞤤𞤭 𞤱𞤵𞤤𞤭𞥅𞤯𞤭'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤲𞥋𞤶𞤢𞤥𞤲𞥋𞤣𞤭',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤲𞥋𞤶𞤢𞤥𞤤𞤭')),
    day: TimeAgoRelativeUnitLabels(
        current: '𞤸𞤢𞤲𞤣𞤫',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤻𞤢𞤤𞥆𞤢𞤤 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤻𞤢𞤤𞥆𞤫 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤻𞤢𞤤𞥆𞤢𞤤',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤻𞤢𞤤𞥆𞤫')),
    week: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤫𞥅 𞤯𞤮𞤮 𞤴𞤮𞤲𞤼𞤫𞤪𞤫',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤴𞤮𞤲𞤼𞤫𞤪𞤫 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤶𞤮𞤲𞤼𞤫 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤴𞤮𞤲𞤼𞤫𞤪𞤫',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤶𞤮𞤲𞤼𞤫')),
    month: TimeAgoRelativeUnitLabels(
        current: '𞤲𞥋𞤣𞤵𞥅 𞤯𞤮𞤮 𞤤𞤫𞤱𞤪𞤵',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤤𞤫𞤱𞤪𞤵 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤵',
            other: '{0} 𞤤𞤫𞤦𞥆𞤭 𞤱𞤵𞤤𞤭𞥅𞤯𞤭'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤤𞤫𞤱𞤪𞤵',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤤𞤫𞤦𞥆𞤭')),
    quarter: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤫𞥅 𞤲𞤢𞤴𞤩𞤭𞥅𞤪𞤫',
        past: TimeAgoPluralLabels(
            one: '𞤱𞤢𞤯𞤭𞥅 𞤲𞤢𞤴𞤩𞤭𞥅𞤪𞤫 {0}',
            other: '{0} 𞤲𞤢𞤴𞤢𞤩𞤭𞥅𞤶𞤫 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞤣𞤫𞤪 𞤲𞤢𞤴𞤩𞤭𞥅𞤪𞤫 {0}',
            other: '𞤲𞤣𞤫𞤪 𞤲𞤢𞤴𞤩𞤭𞥅𞤶𞤫 {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: '𞤸𞤭𞤳𞥆𞤢',
        past: TimeAgoPluralLabels(
            one: '𞤱𞤢𞤯𞤭𞥅 𞤸𞤭𞤼𞤢𞥄𞤲𞤣𞤫 {0}',
            other: '{0} 𞤳𞤭𞤼𞤢𞥄𞤯𞤫 𞤪𞤫𞤱𞤢𞤲𞤭'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞤣𞤫𞤪 {0} 𞤸𞤭𞤼𞤢𞥄𞤲𞤣𞤫',
            other: '𞤲𞤣𞤫𞤪 {0} 𞤳𞤭𞤼𞤢𞥄𞤤𞤫')),
  ),
  units: TimeAgoUnitLabels(
    second:
        TimeAgoPluralLabels(one: '{0} 𞤳𞤭𞤲𞤰𞤢𞤤', other: '{0} 𞤳𞤭𞤲𞤰𞤫'),
    minute: TimeAgoPluralLabels(
        one: '{0} 𞤸𞤮𞤶𞤮𞤥𞤪𞤫', other: '{0} 𞤳𞤮𞤶𞤮𞤥𞤶𞤫'),
    hour: TimeAgoPluralLabels(
        one: '{0} 𞤲𞥋𞤶𞤢𞤥𞤲𞥋𞤣𞤭', other: '{0} 𞤲𞥋𞤶𞤢𞤥𞤤𞤭'),
    day: TimeAgoPluralLabels(one: '{0} 𞤻𞤢𞤤𞥆𞤢𞤤', other: '{0} 𞤻𞤢𞤤𞥆𞤫'),
    week:
        TimeAgoPluralLabels(one: '{0} 𞤴𞤮𞤲𞤼𞤫𞤪𞤫', other: '{0} 𞤶𞤮𞤲𞤼𞤫'),
    month: TimeAgoPluralLabels(one: '{0} 𞤤𞤫𞤱𞤪𞤵', other: '{0} 𞤤𞤫𞤦𞥆𞤭'),
    quarter: TimeAgoPluralLabels.same('{0} 𞤲𞤢𞤴𞤢𞤩𞤭𞥅𞤶𞤫'),
    year: TimeAgoPluralLabels(
        one: '𞤱𞤢𞤯𞤭𞥅 𞤸𞤭𞤼𞤢𞥄𞤲𞤣𞤫 {0}', other: '{0} 𞤳𞤭𞤼𞤢𞥄�'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𞤱𞤵𞤤𞤭𞥅𞤯𞤫',
    future: '𞤲𞥋𞤣𞤫𞤪 {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: '𞤶𞤮𞥅𞤲𞤭',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤳𞤭𞤲. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤺𞤢𞤤',
            other: '{0} 𞤳𞤭𞤲. 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels.same('𞤲𞥋𞤣𞤫𞤪 {0} 𞤳𞤭𞤲.')),
    minute: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤫𞥅 𞤸𞤮𞤶𞤮𞤥𞤢𞥄𞤪𞤫',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤸𞤮𞤶. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤳𞤮𞤶. 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels.same('𞤲𞥋𞤣𞤫𞤪 {0} 𞤸𞤮𞤶.')),
    hour: TimeAgoRelativeUnitLabels(
        current: '𞤐𞤣𞤭𞥅 𞤲𞤶𞤢𞤥𞤲𞤣𞤭',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤶𞤢. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤭',
            other: '{0} 𞤶𞤢. 𞤱𞤵𞤤𞤭𞥅𞤯𞤭'),
        future: TimeAgoPluralLabels.same('𞤲𞥋𞤣𞤫𞤪 {0} 𞤶𞤢.')),
    day: TimeAgoRelativeUnitLabels(
        current: '𞤸𞤢𞤲𞤣𞤫',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤻𞤢𞤤𞥆𞤢𞤤 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤻𞤢𞤤𞥆𞤫 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤻𞤢𞤤𞥆𞤢𞤤',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤻𞤢𞤤𞥆𞤫')),
    week: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤫𞥅 𞤯𞤮𞤮 𞤴𞤼.',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤴𞤼. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤶𞤼. 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤴𞤼.', other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤶𞤼.')),
    month: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤮𞥅 𞤯𞤮𞤮 𞤤𞤫𞤱.',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤤𞤫𞤱. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤵',
            other: '{0} 𞤤𞤫𞤦. 𞤱𞤵𞤤𞤭𞥅𞤯𞤭'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤤𞤫𞤱.', other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤤𞤫𞤦.')),
    quarter: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤫𞥅 𞤲𞤢𞤴.',
        past: TimeAgoPluralLabels(
            one: '𞤱𞤢𞤯𞤭𞥅 𞤲𞤢𞤴. {0}',
            other: '{0} 𞤲𞤢𞤴𞤶. 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels.same('𞤲𞤣𞤫𞤪 𞤲𞤢𞤴. {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: '𞤸𞤭𞤳𞥆𞤢',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤸𞤭𞤼. 𞤪𞤫𞤱𞤢𞤲𞤭', other: '{0} 𞤳𞤭𞤼. 𞤪𞤫𞤱𞤢𞤲𞤭'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞤣𞤫𞤪 𞤸𞤭𞤼. {0}', other: '𞤲𞤣𞤫𞤪 𞤳𞤭𞤼. {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} 𞤳𞤭𞤲.', other: '{0} 𞤳𞤭𞤲.'),
    minute: TimeAgoPluralLabels(one: '{0} 𞤸𞤮𞤶.', other: '{0} �'),
    hour: TimeAgoPluralLabels(one: '{0} 𞤶𞤢.', other: '{0} 𞤶𞤢.'),
    day: TimeAgoPluralLabels(one: '{0} 𞤻𞤢𞤤𞥆𞤢𞤤', other: '{0} 𞤻𞤢𞤤𞥆𞤫'),
    week: TimeAgoPluralLabels(one: '{0} 𞤴𞤼.', other: '{0} 𞤶𞤼.'),
    month: TimeAgoPluralLabels(one: '{0} 𞤤𞤫𞤱.', other: '{0} 𞤤𞤫𞤦.'),
    quarter: TimeAgoPluralLabels.same('{0} 𞤲𞤢𞤴𞤶.'),
    year: TimeAgoPluralLabels.same('{0} 𞤳𞤭𞤼. 𞤪𞤫𞤱𞤢𞤲𞤭'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𞤱𞤵𞤤𞤭𞥅𞤯𞤫',
    future: '𞤲𞥋𞤣𞤫𞤪 {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: '𞤶𞤮𞥅𞤲𞤭',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤳𞤭𞤲. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤺𞤢𞤤',
            other: '{0} 𞤳𞤭𞤲. 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels.same('𞤲𞥋𞤣𞤫𞤪 {0} 𞤳𞤭𞤲.')),
    minute: TimeAgoRelativeUnitLabels(
        current: '𞤐𞤣𞤫𞥅 𞤸𞤮𞤶𞤮𞤥𞤢𞥄𞤪𞤫',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤸𞤮𞤶. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤸𞤮𞤶. 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels.same('𞤲𞥋𞤣𞤫𞤪 {0} 𞤸𞤮𞤶.')),
    hour: TimeAgoRelativeUnitLabels(
        current: '𞤐𞤣𞤭𞥅 𞤲𞤶𞤢𞤥𞤲𞤣𞤭',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤶𞤢. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤭',
            other: '{0} 𞤶𞤢. 𞤱𞤵𞤤𞤭𞥅𞤯𞤭'),
        future: TimeAgoPluralLabels.same('𞤲𞥋𞤣𞤫𞤪 {0} 𞤶𞤢.')),
    day: TimeAgoRelativeUnitLabels(
        current: '𞤸𞤢𞤲𞤣𞤫',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤻𞤢𞤤𞥆𞤢𞤤 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤻𞤢𞤤𞥆𞤫 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤻𞤢𞤤𞥆𞤢𞤤',
            other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤻𞤢𞤤𞥆𞤫')),
    week: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤫𞥅 𞤯𞤮𞤮 𞤴𞤼.',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤴𞤼. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤶𞤼. 𞤱𞤵𞤤𞤭𞥅𞤯𞤫'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤴𞤼.', other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤶𞤼.')),
    month: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤮𞥅 𞤯𞤮𞤮 𞤤𞤫𞤱.',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤤𞤫𞤱. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤵',
            other: '{0} 𞤤𞤫𞤦. 𞤱𞤵𞤤𞤭𞥅𞤯𞤭'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤤𞤫𞤱.', other: '𞤲𞥋𞤣𞤫𞤪 {0} 𞤤𞤫𞤦.')),
    quarter: TimeAgoRelativeUnitLabels(
        current: '𞤲𞤣𞤫𞥅 𞤲𞤢𞤴.',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤲𞤢𞤴. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫',
            other: '{0} 𞤲𞤢𞤴𞤶. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫'),
        future: TimeAgoPluralLabels.same('𞤲𞤣𞤫𞤪 𞤲𞤢𞤴. {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: '𞤸𞤭𞤳𞥆𞤢',
        past: TimeAgoPluralLabels(
            one: '{0} 𞤸𞤭𞤼. 𞤪𞤫𞤱𞤢𞤲𞤭', other: '{0} 𞤳𞤭𞤼. 𞤪𞤫𞤱𞤢𞤲𞤭'),
        future: TimeAgoPluralLabels(
            one: '𞤲𞤣𞤫𞤪 𞤸𞤭𞤼. {0}', other: '𞤲𞤣𞤫𞤪 𞤳𞤭𞤼. {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} 𞤳𞤭𞤲.', other: '{0} 𞤳𞤭𞤲.'),
    minute: TimeAgoPluralLabels(one: '{0} 𞤸𞤮𞤶.', other: '{0} 𞤸𞤮𞤶.'),
    hour: TimeAgoPluralLabels(one: '{0} 𞤶𞤢.', other: '{0} 𞤶𞤢.'),
    day: TimeAgoPluralLabels(one: '{0} 𞤻𞤢𞤤𞥆𞤢𞤤', other: '{0} 𞤻𞤢𞤤𞥆𞤫'),
    week: TimeAgoPluralLabels(one: '{0} 𞤴𞤼.', other: '{0} 𞤶𞤼.'),
    month: TimeAgoPluralLabels(one: '{0} 𞤤𞤫𞤱.', other: '{0} 𞤤𞤫𞤦.'),
    quarter: TimeAgoPluralLabels.same('{0} 𞤲𞤢𞤴𞤶. 𞤱𞤵𞤤𞤭𞥅𞤲𞥋𞤣𞤫'),
    year: TimeAgoPluralLabels.same('{0} 𞤳𞤭𞤼. 𞤪𞤫𞤱𞤢𞤲𞤭'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 𞤱𞤵𞤤𞤭𞥅𞤯𞤫',
    future: '𞤲𞥋𞤣𞤫𞤪 {0}',
  ),
);
