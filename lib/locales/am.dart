import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'am'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'ከ1 ሰከንድ በፊት',
    current: 'አሁን',
    future: 'በ1 ሰከንድ ውስጥ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'am';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'አሁን',
        past:
            TimeAgoPluralLabels(one: 'ከ{0} ሰከንድ በፊት', other: 'ከ{0} ሰከንዶች በፊት'),
        future:
            TimeAgoPluralLabels(one: 'በ{0} ሰከንድ ውስጥ', other: 'በ{0} ሰከንዶች ውስጥ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ይህ ደቂቃ',
        past: TimeAgoPluralLabels(one: 'ከ{0} ደቂቃ በፊት', other: 'ከ{0} ደቂቃዎች በፊት'),
        future:
            TimeAgoPluralLabels(one: 'በ{0} ደቂቃ ውስጥ', other: 'በ{0} ደቂቃዎች ውስጥ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ይህ ሰዓት',
        past: TimeAgoPluralLabels(one: 'ከ{0} ሰዓት በፊት', other: 'ከ{0} ሰዓቶች በፊት'),
        future:
            TimeAgoPluralLabels(one: 'በ{0} ሰዓት ውስጥ', other: 'በ{0} ሰዓቶች ውስጥ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ዛሬ',
        past: TimeAgoPluralLabels(one: 'ከ{0} ቀን በፊት', other: 'ከ{0} ቀናት በፊት'),
        future: TimeAgoPluralLabels(one: 'በ{0} ቀን ውስጥ', other: 'በ{0} ቀናት ውስጥ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'በዚህ ሳምንት',
        past:
            TimeAgoPluralLabels(one: 'ከ{0} ሳምንት በፊት', other: 'ከ{0} ሳምንታት በፊት'),
        future:
            TimeAgoPluralLabels(one: 'በ{0} ሳምንት ውስጥ', other: 'በ{0} ሳምንታት ውስጥ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'በዚህ ወር',
        past: TimeAgoPluralLabels(one: 'ከ{0} ወር በፊት', other: 'ከ{0} ወራት በፊት'),
        future: TimeAgoPluralLabels(one: 'በ{0} ወር ውስጥ', other: 'በ{0} ወራት ውስጥ')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ይህ ሩብ', past: '{0} ሩብ በፊት', future: 'በ{0} ሩብ'),
    year: TimeAgoRelativeUnitLabels(
        current: 'በዚህ ዓመት',
        past: TimeAgoPluralLabels(one: 'ከ{0} ዓመት በፊት', other: 'ከ{0} ዓመታት በፊት'),
        future: TimeAgoPluralLabels.same('በ{0} ዓመታት ውስጥ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ሰከንድ', other: '{0} ሰከንዶች'),
    minute: TimeAgoPluralLabels(one: '{0} ደቂቃ', other: '{0} ደቂቃዎች'),
    hour: TimeAgoPluralLabels(one: '{0} ሰዓት', other: '{0} ሰዓቶች'),
    day: TimeAgoPluralLabels(one: '{0} ቀን', other: '{0} ቀናት'),
    week: TimeAgoPluralLabels(one: '{0} ሳምንት', other: '{0} ሳምንታት'),
    month: TimeAgoPluralLabels(one: '{0} ወር', other: '{0} ወራት'),
    quarter: TimeAgoPluralLabels.same('{0} ሩብ'),
    year: TimeAgoPluralLabels(one: '{0} ዓመ', other: '{0} ዓመታት'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ከ{0} በፊት',
    future: 'በ{0} ውስጥ',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'አሁን',
        past:
            TimeAgoPluralLabels(one: 'ከ{0} ሰከንድ በፊት', other: 'ከ{0} ሰከንዶች በፊት'),
        future:
            TimeAgoPluralLabels(one: 'በ{0} ሰከንድ ውስጥ', other: 'በ{0} ሰከንዶች ውስጥ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ይህ ደቂቃ',
        past: TimeAgoPluralLabels(one: 'ከ{0} ደቂቃ በፊት', other: 'ከ{0} ደቂቃዎች በፊት'),
        future:
            TimeAgoPluralLabels(one: 'በ{0} ደቂቃ ውስጥ', other: 'በ{0} ደቂቃዎች ውስጥ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ይህ ሰዓት',
        past: TimeAgoPluralLabels(one: 'ከ{0} ሰዓት በፊት', other: 'ከ{0} ሰዓቶች በፊት'),
        future:
            TimeAgoPluralLabels(one: 'በ{0} ሰዓት ውስጥ', other: 'በ{0} ሰዓቶች ውስጥ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ዛሬ',
        past: TimeAgoPluralLabels(one: 'ከ {0} ቀን በፊት', other: 'ከ{0} ቀኖች በፊት'),
        future: TimeAgoPluralLabels(one: 'በ{0} ቀን ውስጥ', other: 'በ{0} ቀኖች ውስጥ')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'በዚህ ሣምንት', past: 'ከ{0} ሳምንታት በፊት', future: 'በ{0} ሳምንታት ውስጥ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'በዚህ ወር', past: 'ከ{0} ወራት በፊት', future: 'በ{0} ወራት ውስጥ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ይህ ሩብ', past: '{0} ሩብ በፊት', future: 'በ{0} ሩብ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'በዚህ ዓመት', past: 'ከ{0} ዓመታት በፊት', future: 'በ{0} ዓመታት ውስጥ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ሰከንድ', other: '{0} ሰከንዶች'),
    minute: TimeAgoPluralLabels(one: '{0} ደቂቃ', other: '{0} ደቂቃዎች'),
    hour: TimeAgoPluralLabels(one: '{0} ሰዓት', other: '{0} ሰዓቶች'),
    day: TimeAgoPluralLabels(one: '{0} ቀን', other: '{0} ቀኖች'),
    week: TimeAgoPluralLabels.same('{0} ሳምንታት'),
    month: TimeAgoPluralLabels.same('{0} ወራት'),
    quarter: TimeAgoPluralLabels.same('{0} ሩብ'),
    year: TimeAgoPluralLabels.same('{0} ዓመታት'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ከ{0} በፊት',
    future: 'በ{0} ውስጥ',
  ),
);
