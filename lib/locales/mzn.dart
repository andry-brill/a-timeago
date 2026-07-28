import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'mzn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 ثانیه پیش',
    current: 'now',
    future: '1 ثانیه دله',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'mzn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} ثانیه پیش', future: '{0} ثانیه دله'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '{0} دَقه پیش', future: '{0} دقیقه دله'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} ساعِت پیش', future: '{0} ساعِت دله'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'اَمروز', past: '{0} روز پیش', future: '{0} روز دله'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'این هفته', past: '{0} هفته پیش', future: '{0} هفته دله'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'این ماه', past: '{0} ماه پیش', future: '{0} ماه دله'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '{0} ربع پیش', future: '{0} ربع دله'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'امسال', past: '{0} سال پیش', future: '{0} سال دله'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ثانیه'),
    minute: TimeAgoPluralLabels.same('{0} د'),
    hour: TimeAgoPluralLabels.same('{0} ساعِت'),
    day: TimeAgoPluralLabels.same('{0} روز'),
    week: TimeAgoPluralLabels.same('{0} هفته'),
    month: TimeAgoPluralLabels.same('{0} ماه'),
    quarter: TimeAgoPluralLabels.same('{0} ربع'),
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
    future: '{0} دله',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} ثانیه پیش', future: '{0} ثانیه دله'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '{0} دَقه پیش', future: '{0} دَقه دله'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} ساعت پیش', future: '{0} ساعت دله'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'اَمروز', past: '{0} روز پیش', future: '{0} روز دله'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'این هفته', past: '{0} هفته پیش', future: '{0} هفته دله'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'این ماه', past: '{0} ماه پیش', future: '{0} ماه دله'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '{0} ربع پیش', future: '{0} ربع دله'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'امسال', past: '{0} سال پیش', future: '{0} سال دله'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ثانیه'),
    minute: TimeAgoPluralLabels.same('{0} دَقه'),
    hour: TimeAgoPluralLabels.same('{0} ساعت'),
    day: TimeAgoPluralLabels.same('{0} روز'),
    week: TimeAgoPluralLabels.same('{0} هفته'),
    month: TimeAgoPluralLabels.same('{0} ماه'),
    quarter: TimeAgoPluralLabels.same('{0} ربع'),
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
    future: '{0} دله',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} ثانیه پیش', future: '{0} ثانیه دله'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '{0} دَقه پیش', future: '{0} دَقه دله'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} ساعت پیش', future: '{0} ساعت دله'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'اَمروز', past: '{0} روز پیش', future: '{0} روز دله'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'این هفته', past: '{0} هفته پیش', future: '{0} هفته دله'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'این ماه', past: '{0} ماه پیش', future: '{0} ماه دله'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '{0} ربع پیش', future: '{0} ربع دله'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'امسال', past: '{0} سال پیش', future: '{0} سال دله'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ثانیه'),
    minute: TimeAgoPluralLabels.same('{0} دَقه'),
    hour: TimeAgoPluralLabels.same('{0} ساعت'),
    day: TimeAgoPluralLabels.same('{0} روز'),
    week: TimeAgoPluralLabels.same('{0} هفته'),
    month: TimeAgoPluralLabels.same('{0} ماه'),
    quarter: TimeAgoPluralLabels.same('{0} ربع'),
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
    future: '{0} دله',
  ),
);
