import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'fa'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'دیروز',
    today: 'امروز',
    tomorrow: 'فردا',
    dateTime: '{1} ساعت {0}',
    relativeDateTime: '{1}، ساعت {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 ثانیه پیش',
    current: 'اکنون',
    future: '1 ثانیه بعد',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'fa';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اکنون', past: '{0} ثانیه پیش', future: '{0} ثانیه بعد'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'همین دقیقه', past: '{0} دقیقه پیش', future: '{0} دقیقه بعد'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'همین ساعت', past: '{0} ساعت پیش', future: '{0} ساعت بعد'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'امروز', past: '{0} روز پیش', future: '{0} روز دیگر'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'این هفته', past: '{0} هفته پیش', future: '{0} هفته بعد'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'این ماه', past: '{0} ماه پیش', future: '{0} ماه بعد'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'سه‌ماههٔ کنونی',
        past: '{0} سه‌ماههٔ پیش',
        future: '{0} سه‌ماههٔ بعد'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'امسال', past: '{0} سال پیش', future: '{0} سال بعد'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ثانیه'),
    minute: TimeAgoPluralLabels.same('{0} دقیقه'),
    hour: TimeAgoPluralLabels.same('{0} ساعت'),
    day: TimeAgoPluralLabels.same('{0} روز'),
    week: TimeAgoPluralLabels.same('{0} هفته'),
    month: TimeAgoPluralLabels.same('{0} ماه'),
    quarter: TimeAgoPluralLabels.same('{0} سه‌ماههٔ'),
    year: TimeAgoPluralLabels.same('{0} سال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} پیش',
    future: '{0} بعد',
  ),
);

const _shortNarrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} ثانیه'),
  minute: TimeAgoPluralLabels.same('{0} دقیقه'),
  hour: TimeAgoPluralLabels.same('{0} ساعت'),
  day: TimeAgoPluralLabels.same('{0} روز'),
  week: TimeAgoPluralLabels.same('{0} هفته'),
  month: TimeAgoPluralLabels.same('{0} ماه'),
  quarter: TimeAgoPluralLabels.same('{0} سه‌ماههٔ'),
  year: TimeAgoPluralLabels.same('{0} سال'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اکنون', past: '{0} ثانیه پیش', future: '{0} ثانیه بعد'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'همین دقیقه', past: '{0} دقیقه پیش', future: '{0} دقیقه بعد'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'همین ساعت', past: '{0} ساعت پیش', future: '{0} ساعت بعد'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'امروز', past: '{0} روز پیش', future: '{0} روز دیگر'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'این هفته', past: '{0} هفته پیش', future: '{0} هفته بعد'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'این ماه', past: '{0} ماه پیش', future: '{0} ماه بعد'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'سه‌ماههٔ کنونی',
        past: '{0} سه‌ماههٔ پیش',
        future: '{0} سه‌ماههٔ بعد'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'امسال', past: '{0} سال پیش', future: '{0} سال بعد'),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} پیش',
    future: '{0} بعد',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اکنون', past: '{0} ثانیه پیش', future: '{0} ثانیه بعد'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'همین دقیقه', past: '{0} دقیقه پیش', future: '{0} دقیقه بعد'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'همین ساعت', past: '{0} ساعت پیش', future: '{0} ساعت بعد'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'امروز', past: '{0} روز پیش', future: '{0} روز بعد'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'این هفته', past: '{0} هفته پیش', future: '{0} هفته بعد'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'این ماه', past: '{0} ماه پیش', future: '{0} ماه بعد'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'سه‌ماههٔ کنونی',
        past: '{0} سه‌ماههٔ پیش',
        future: '{0} سه‌ماههٔ بعد'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'امسال', past: '{0} سال پیش', future: '{0} سال بعد'),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} پیش',
    future: '{0} بعد',
  ),
);
