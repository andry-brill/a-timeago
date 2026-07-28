import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'bn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 সেকেন্ড আগে',
    current: 'এখন',
    future: '1 সেকেন্ডে',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'bn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'এখন',
        past: TimeAgoPluralLabels(
            one: '{0} সেকেন্ড আগে', other: '{0} সেকেন্ড পূর্বে'),
        future: TimeAgoPluralLabels.same('{0} সেকেন্ডে')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'এই মিনিট', past: '{0} মিনিট আগে', future: '{0} মিনিটে'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'এই ঘণ্টায়', past: '{0} ঘণ্টা আগে', future: '{0} ঘণ্টায়'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'আজ', past: '{0} দিন আগে', future: '{0} দিনের মধ্যে'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'এই সপ্তাহ', past: '{0} সপ্তাহ আগে', future: '{0} সপ্তাহে'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'এই মাস', past: '{0} মাস আগে', future: '{0} মাসে'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'এই ত্রৈমাসিক',
        past: '{0} ত্রৈমাসিক আগে',
        future: '{0} ত্রৈমাসিকে'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'এই বছর', past: '{0} বছর পূর্বে', future: '{0} বছরে'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} সেকেন্ড', other: '{0} সেকেন্ড'),
    minute: TimeAgoPluralLabels.same('{0} মিনিট'),
    hour: TimeAgoPluralLabels.same('{0} ঘণ্টা'),
    day: TimeAgoPluralLabels.same('{0} দিন'),
    week: TimeAgoPluralLabels.same('{0} সপ্তাহ'),
    month: TimeAgoPluralLabels.same('{0} মাস'),
    quarter: TimeAgoPluralLabels.same('{0} ত্রৈমাসিক'),
    year: TimeAgoPluralLabels.same('{0} বছর'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} পূর্বে',
    future: '{0}ে',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'এখন', past: '{0} সেকেন্ড আগে', future: '{0} সেকেন্ডে'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'এই মিনিট', past: '{0} মিনিট আগে', future: '{0} মিনিটে'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'এই ঘণ্টায়', past: '{0} ঘণ্টা আগে', future: '{0} ঘণ্টায়'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'আজ', past: '{0} দিন আগে', future: '{0} দিনের মধ্যে'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'এই সপ্তাহ', past: '{0} সপ্তাহ আগে', future: '{0} সপ্তাহে'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'এই মাস', past: '{0} মাস আগে', future: '{0} মাসে'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'এই ত্রৈমাসিক',
        past: '{0} ত্রৈমাসিক আগে',
        future: '{0} ত্রৈমাসিকে'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'এই বছর', past: '{0} বছর পূর্বে', future: '{0} বছরে'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} সেকেন্ড'),
    minute: TimeAgoPluralLabels.same('{0} মিনিট'),
    hour: TimeAgoPluralLabels.same('{0} ঘণ্টা'),
    day: TimeAgoPluralLabels.same('{0} দিন'),
    week: TimeAgoPluralLabels.same('{0} সপ্তাহ'),
    month: TimeAgoPluralLabels.same('{0} মাস'),
    quarter: TimeAgoPluralLabels.same('{0} ত্রৈমাসিক'),
    year: TimeAgoPluralLabels.same('{0} বছর'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} আগে',
    future: '{0}ে',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'এখন', past: '{0} সেকেন্ড আগে', future: '{0} সেকেন্ডে'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'এই মিনিট', past: '{0} মিনিট আগে', future: '{0} মিনিটে'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'এই ঘণ্টায়', past: '{0} ঘণ্টা আগে', future: '{0} ঘণ্টায়'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'আজ', past: '{0} দিন আগে', future: '{0} দিনের মধ্যে'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'এই সপ্তাহ', past: '{0} সপ্তাহ আগে', future: '{0} সপ্তাহে'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'এই মাস', past: '{0} মাস আগে', future: '{0} মাসে'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'এই ত্রৈমাসিক',
        past: '{0} ত্রৈমাসিক আগে',
        future: '{0} ত্রৈমাসিকে'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'এই বছর', past: '{0} বছর পূর্বে', future: '{0} বছরে'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} সেকেন্ড'),
    minute: TimeAgoPluralLabels.same('{0} মিনিট'),
    hour: TimeAgoPluralLabels.same('{0} ঘণ্টা'),
    day: TimeAgoPluralLabels.same('{0} দিন'),
    week: TimeAgoPluralLabels.same('{0} সপ্তাহ'),
    month: TimeAgoPluralLabels.same('{0} মাস'),
    quarter: TimeAgoPluralLabels.same('{0} ত্রৈমাসিক'),
    year: TimeAgoPluralLabels.same('{0} বছর'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} আগে',
    future: '{0}ে',
  ),
);
