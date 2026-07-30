import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sd'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ڪل',
    today: 'اڄ',
    tomorrow: 'سڀاڻي',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 سيڪنڊ پهرين',
    current: 'هاڻي',
    future: '1 سيڪنڊ ۾',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sd';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'هاڻي',
        past: TimeAgoPluralLabels.same('{0} سيڪنڊ پهرين'),
        future: TimeAgoPluralLabels(one: '{0} سيڪنڊ ۾', other: '{0} سيڪنڊن ۾')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'هن منٽ',
        past: TimeAgoPluralLabels.same('{0} منٽ پهرين'),
        future: TimeAgoPluralLabels(one: '{0} منٽن ۾', other: '+{0} min')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'هن ڪلڪ', past: '{0} ڪلاڪ پهرين', future: '{0} ڪلاڪ ۾'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'اڄ', past: '{0} ڏينهن پهرين', future: '{0} ڏينهن ۾'),
    week: TimeAgoRelativeUnitLabels(
        current: 'هن هفتي',
        past:
            TimeAgoPluralLabels(one: '{0} هفتو پهرين', other: '{0} هفتا پهرين'),
        future: TimeAgoPluralLabels(one: '{0} هفتي ۾', other: '{0} هفتن ۾')),
    month: TimeAgoRelativeUnitLabels(
        current: 'هن مهيني',
        past: TimeAgoPluralLabels.same('{0} مهينا پهرين'),
        future: TimeAgoPluralLabels(one: '{0} مهيني ۾', other: '{0} مهينن ۾')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'هن ٽي ماهي',
        past: TimeAgoPluralLabels.same('{0} ٽي ماهي پهرين'),
        future: TimeAgoPluralLabels(one: '{0} ٽماهي ۾', other: '{0} ٽماهين ۾')),
    year: TimeAgoRelativeUnitLabels(
        current: 'پويون سال',
        past: TimeAgoPluralLabels.same('{0} سال پهرين'),
        future: TimeAgoPluralLabels(one: '{0} سال ۾', other: '{0} سالن ۾')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} سيڪنڊ', other: '{0} سيڪنڊ'),
    minute: TimeAgoPluralLabels(one: '{0} منٽ', other: '{0} منٽ'),
    hour: TimeAgoPluralLabels.same('{0} ڪلاڪ'),
    day: TimeAgoPluralLabels.same('{0} ڏينهن'),
    week: TimeAgoPluralLabels(one: '{0} هفت', other: '{0} هفت'),
    month: TimeAgoPluralLabels(one: '{0} مهين', other: '{0} مهين'),
    quarter: TimeAgoPluralLabels(one: '{0} ٽ', other: '{0} ٽ'),
    year: TimeAgoPluralLabels(one: '{0} سال', other: '{0} سال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} پهرين',
    future: '{0}ن ۾',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'هاڻي',
        past: TimeAgoPluralLabels.same('{0} سيڪنڊ پهرين'),
        future: TimeAgoPluralLabels(one: '{0} سيڪنڊ ۾', other: '{0} سيڪنڊن ۾')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'هن منٽ', past: '{0} منٽ پهرين', future: '{0} منٽن ۾'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'هن ڪلڪ', past: '{0} ڪلاڪ پهرين', future: '{0} ڪلاڪ ۾'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'اڄ', past: '{0} ڏينهن پهرين', future: '{0} ڏينهن ۾'),
    week: TimeAgoRelativeUnitLabels(
        current: 'هن هفتي',
        past:
            TimeAgoPluralLabels(one: '{0} هفتو پهرين', other: '{0} هفتا پهرين'),
        future: TimeAgoPluralLabels(one: '{0} هفتي ۾', other: '{0} هفتن ۾')),
    month: TimeAgoRelativeUnitLabels(
        current: 'هن مهيني',
        past: TimeAgoPluralLabels.same('{0} مهينا پهرين'),
        future: TimeAgoPluralLabels(one: '{0} مهيني ۾', other: '{0} مهينن ۾')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'هن ٽي ماهي',
        past: TimeAgoPluralLabels.same('{0} ٽي ماهي پهرين'),
        future: TimeAgoPluralLabels(one: '{0} ٽماهي ۾', other: '{0} ٽماهين ۾')),
    year: TimeAgoRelativeUnitLabels(
        current: 'هن سال',
        past: TimeAgoPluralLabels.same('{0} سال پهرين'),
        future: TimeAgoPluralLabels(one: '{0} سال ۾', other: '{0} سالن ۾')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} سيڪنڊ', other: '{0} سيڪنڊ'),
    minute: TimeAgoPluralLabels.same('{0} منٽ'),
    hour: TimeAgoPluralLabels.same('{0} ڪلاڪ'),
    day: TimeAgoPluralLabels.same('{0} ڏينهن'),
    week: TimeAgoPluralLabels(one: '{0} هفت', other: '{0} هفت'),
    month: TimeAgoPluralLabels(one: '{0} مهين', other: '{0} مهين'),
    quarter: TimeAgoPluralLabels(one: '{0} ٽ', other: '{0} ٽ'),
    year: TimeAgoPluralLabels(one: '{0} سال', other: '{0} سال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} پهرين',
    future: '{0}ن ۾',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'هاڻي',
        past: TimeAgoPluralLabels.same('{0} سيڪنڊ پهرين'),
        future: TimeAgoPluralLabels(one: '{0} سيڪنڊ ۾', other: '{0} سيڪنڊن ۾')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'هن منٽ',
        past: TimeAgoPluralLabels.same('{0} منٽ پهرين'),
        future: TimeAgoPluralLabels(one: '{0} منٽ ۾', other: '{0} منٽن ۾')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'هن ڪلڪ', past: '{0} ڪلاڪ پهرين', future: '{0} ڪلاڪ ۾'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'اڄ', past: '{0} ڏينهن پهرين', future: '{0} ڏينهن ۾'),
    week: TimeAgoRelativeUnitLabels(
        current: 'هن هفتي',
        past:
            TimeAgoPluralLabels(one: '{0} هفتو پهرين', other: '{0} هفتا پهرين'),
        future: TimeAgoPluralLabels(one: '{0}هفتي ۾', other: '{0}هفتن ۾')),
    month: TimeAgoRelativeUnitLabels(
        current: 'هن مهيني',
        past: TimeAgoPluralLabels.same('{0} مهينا پهرين'),
        future: TimeAgoPluralLabels(one: '{0} مهيني ۾', other: '{0} مهينن ۾')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'هن ٽي ماهي',
        past: TimeAgoPluralLabels.same('{0} ٽي ماهي پهرين'),
        future: TimeAgoPluralLabels(one: '{0} ٽماهي ۾', other: '{0} ٽماهين ۾')),
    year: TimeAgoRelativeUnitLabels(
        current: 'هن سال',
        past: TimeAgoPluralLabels.same('{0}سال پهرين'),
        future: TimeAgoPluralLabels(one: '{0}سال ۾', other: '{0}سالن ۾')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} سيڪنڊ', other: '{0} سيڪنڊ'),
    minute: TimeAgoPluralLabels(one: '{0} منٽ', other: '{0} منٽ'),
    hour: TimeAgoPluralLabels.same('{0} ڪلاڪ'),
    day: TimeAgoPluralLabels.same('{0} ڏينهن'),
    week: TimeAgoPluralLabels.same('{0} هفتا'),
    month: TimeAgoPluralLabels(one: '{0} مهين', other: '{0} مهين'),
    quarter: TimeAgoPluralLabels(one: '{0} ٽ', other: '{0} ٽ'),
    year: TimeAgoPluralLabels(one: '{0}سال', other: '{0}سال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} پهرين',
    future: '{0}ن ۾',
  ),
);
