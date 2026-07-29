import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ne'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 सेकेन्ड पहिले',
    current: 'अहिले',
    future: '1 सेकेन्डमा',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ne';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'अहिले', past: '{0} सेकेन्ड पहिले', future: '{0} सेकेन्डमा'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'यही मिनेटमा', past: '{0} मिनेट पहिले', future: '{0} मिनेटमा'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'यस घडीमा', past: '{0} घण्टा पहिले', future: '{0} घण्टामा'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आज', past: '{0} दिन पहिले', future: '{0} दिनमा'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'यो हप्ता', past: '{0} हप्ता पहिले', future: '{0} हप्तामा'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'यो महिना', past: '{0} महिना पहिले', future: '{0} महिनामा'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'यो सत्र',
        past: TimeAgoPluralLabels.same('{0}सत्र अघि'),
        future: TimeAgoPluralLabels(one: '+{0} सत्रमा', other: '{0}सत्रमा')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'यो वर्ष', past: '{0} वर्ष अघि', future: '{0} वर्षमा'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेन्ड'),
    minute: TimeAgoPluralLabels.same('{0} मिनेट'),
    hour: TimeAgoPluralLabels.same('{0} घण्टा'),
    day: TimeAgoPluralLabels.same('{0} दिन'),
    week: TimeAgoPluralLabels.same('{0} हप्ता'),
    month: TimeAgoPluralLabels.same('{0} महिना'),
    quarter: TimeAgoPluralLabels(one: '{0}सत्र', other: '{0}सत्र'),
    year: TimeAgoPluralLabels.same('{0} वर्ष'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहिले',
    future: '{0}मा',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'अहिले', past: '{0} सेकेन्ड पहिले', future: '{0} सेकेन्डमा'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'यही मिनेटमा', past: '{0} मिनेट पहिले', future: '{0} मिनेटमा'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'यस घडीमा', past: '{0} घण्टा पहिले', future: '{0} घण्टामा'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आज', past: '{0} दिन पहिले', future: '{0} दिनमा'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'यो हप्ता', past: '{0} हप्ता पहिले', future: '{0} हप्तामा'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'यो महिना', past: '{0} महिना पहिले', future: '{0} महिनामा'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'यो सत्र', past: '{0}सत्र अघि', future: '{0}सत्रमा'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'यो वर्ष', past: '{0} वर्ष अघि', future: '{0} वर्षमा'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेन्ड'),
    minute: TimeAgoPluralLabels.same('{0} मिनेट'),
    hour: TimeAgoPluralLabels.same('{0} घण्टा'),
    day: TimeAgoPluralLabels.same('{0} दिन'),
    week: TimeAgoPluralLabels.same('{0} हप्ता'),
    month: TimeAgoPluralLabels.same('{0} महिना'),
    quarter: TimeAgoPluralLabels.same('{0}सत्र'),
    year: TimeAgoPluralLabels.same('{0} वर्ष'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहिले',
    future: '{0}मा',
  ),
);
