import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ur', countryCode: 'IN'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'گزشتہ کل',
    today: 'آج',
    tomorrow: 'آئندہ کل',
    dateTime: '{1} کو {0}',
    relativeDateTime: '{1} کو {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 سیکنڈ قبل',
    current: 'اب',
    future: '1 سیکنڈ میں',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ur_IN';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اب', past: '{0} سیکنڈ قبل', future: '{0} سیکنڈ میں'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'اس منٹ', past: '{0} منٹ قبل', future: '{0} منٹ میں'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'اس گھنٹے',
        past:
            TimeAgoPluralLabels(one: '{0} گھنٹہ پہلے', other: '{0} گھنٹے پہلے'),
        future: TimeAgoPluralLabels.same('{0} گھنٹے میں')),
    day: TimeAgoRelativeUnitLabels(
        current: 'آج',
        past: TimeAgoPluralLabels(one: '{0} دن پہلے', other: '{0} دنوں پہلے'),
        future: TimeAgoPluralLabels(one: '{0} دن میں', other: '{0} دنوں میں')),
    week: TimeAgoRelativeUnitLabels(
        current: 'اس ہفتہ',
        past: TimeAgoPluralLabels(one: '{0} ہفتہ قبل', other: '{0} ہفتے قبل'),
        future:
            TimeAgoPluralLabels(one: '{0} ہفتہ میں', other: '{0} ہفتوں میں')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'اس ماہ', past: '{0} ماہ قبل', future: '{0} ماہ میں'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'اس سہ ماہی',
        past: '{0} سہ ماہی پہلے',
        future: '{0} سہ ماہی میں'),
    year: TimeAgoRelativeUnitLabels(
        current: 'اس سال',
        past: TimeAgoPluralLabels.same('{0} سال پہلے'),
        future:
            TimeAgoPluralLabels(one: '{0} سال میں', other: '{0} سالوں میں')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} سیکنڈ'),
    minute: TimeAgoPluralLabels.same('{0} منٹ'),
    hour: TimeAgoPluralLabels(one: '{0} گھنٹ', other: '{0} گھنٹے'),
    day: TimeAgoPluralLabels(one: '{0} دن', other: '{0} دنوں'),
    week: TimeAgoPluralLabels(one: '{0} ہفتہ', other: '{0} ہفت'),
    month: TimeAgoPluralLabels.same('{0} ماہ'),
    quarter: TimeAgoPluralLabels.same('{0} سہ ماہی'),
    year: TimeAgoPluralLabels(one: '{0} سال', other: '{0} سال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} قبل',
    future: '{0} میں',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اب', past: '{0} سیکنڈ قبل', future: '{0} سیکنڈ میں'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'اس منٹ', past: '{0} منٹ قبل', future: '{0} منٹ میں'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'اس گھنٹے', past: '{0} گھنٹے قبل', future: '{0} گھنٹے میں'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'آج', past: '{0} دن پہلے', future: '{0} دنوں میں'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'اس ہفتہ', past: '{0} ہفتے قبل', future: '{0} ہفتے میں'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'اس مہینہ', past: '{0} ماہ قبل', future: '{0} ماہ میں'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'اس سہ ماہی',
        past: '{0} سہ ماہی قبل',
        future: '{0} سہ ماہی میں'),
    year: TimeAgoRelativeUnitLabels(
        current: 'اس سال',
        past: TimeAgoPluralLabels(one: '{0} سال پہلے', other: '{0} سالوں پہلے'),
        future:
            TimeAgoPluralLabels(one: '{0} سال میں', other: '{0} سالوں میں')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} سیکنڈ'),
    minute: TimeAgoPluralLabels.same('{0} منٹ'),
    hour: TimeAgoPluralLabels.same('{0} گھنٹے'),
    day: TimeAgoPluralLabels.same('{0} دن'),
    week: TimeAgoPluralLabels.same('{0} ہفتے'),
    month: TimeAgoPluralLabels.same('{0} ماہ'),
    quarter: TimeAgoPluralLabels.same('{0} سہ ماہی'),
    year: TimeAgoPluralLabels(one: '{0} سال', other: '{0} سالوں'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} قبل',
    future: '{0} میں',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اب', past: '{0} سیکنڈ قبل', future: '{0} سیکنڈ میں'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'اس منٹ', past: '{0} منٹ قبل', future: '{0} منٹ میں'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'اس گھنٹے',
        past: TimeAgoPluralLabels(one: '{0} گھنٹہ قبل', other: '{0} گھنٹے قبل'),
        future:
            TimeAgoPluralLabels(one: '{0} گھنٹے میں', other: '{0} گھنٹوں میں')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'آج', past: '{0} دن قبل', future: '{0} دنوں میں'),
    week: TimeAgoRelativeUnitLabels(
        current: 'اس ہفتہ',
        past: TimeAgoPluralLabels(one: '{0} ہفتہ قبل', other: '{0} ہفتے قبل'),
        future:
            TimeAgoPluralLabels(one: '{0} ہفتہ میں', other: '{0} ہفتے میں')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'اس ماہ', past: '{0} ماہ قبل', future: '{0} ماہ میں'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'اس سہ ماہی',
        past: '{0} سہ ماہی پہلے',
        future: '{0} سہ ماہی میں'),
    year: TimeAgoRelativeUnitLabels(
        current: 'اس سال',
        past: TimeAgoPluralLabels(one: '{0} سال پہلے', other: '{0} سالوں پہلے'),
        future:
            TimeAgoPluralLabels(one: '{0} سال میں', other: '{0} سالوں میں')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} سیکنڈ'),
    minute: TimeAgoPluralLabels.same('{0} منٹ'),
    hour: TimeAgoPluralLabels(one: '{0} گھنٹ', other: '{0} گھنٹ'),
    day: TimeAgoPluralLabels.same('{0} دن'),
    week: TimeAgoPluralLabels(one: '{0} ہفتہ', other: '{0} ہفتے'),
    month: TimeAgoPluralLabels.same('{0} ماہ'),
    quarter: TimeAgoPluralLabels.same('{0} سہ ماہی'),
    year: TimeAgoPluralLabels(one: '{0} سال', other: '{0} سالوں'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} قبل',
    future: '{0} میں',
  ),
);
