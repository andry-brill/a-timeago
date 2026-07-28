import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'as'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 ছেকেণ্ড পূৰ্বে',
    current: 'এতিয়া',
    future: '1 ছেকেণ্ডত',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'as';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'এতিয়া', past: '{0} ছেকেণ্ড পূৰ্বে', future: '{0} ছেকেণ্ডত'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'এইটো মিনিটত', past: '{0} মিনিট পূৰ্বে', future: '{0} মিনিটত'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'এইটো ঘণ্টাত', past: '{0} ঘণ্টা পূৰ্বে', future: '{0} ঘণ্টাত'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'আজি', past: '{0} দিন পূৰ্বে', future: '{0} দিনত'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'এই সপ্তাহ', past: '{0} সপ্তাহ পূৰ্বে', future: '{0} সপ্তাহত'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'এই মাহ', past: '{0} মাহ পূৰ্বে', future: '{0} মাহত'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'এই তিনি মাহ',
        past: '{0} তিনি মাহ পূৰ্বে',
        future: '{0} তিনি মাহত'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'এই বছৰ', past: '{0} বছৰৰ পূৰ্বে', future: '{0} বছৰত'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ছেকেণ্ড'),
    minute: TimeAgoPluralLabels.same('{0} মিনিট'),
    hour: TimeAgoPluralLabels.same('{0} ঘণ্টা'),
    day: TimeAgoPluralLabels.same('{0} দিন'),
    week: TimeAgoPluralLabels.same('{0} সপ্তাহ'),
    month: TimeAgoPluralLabels.same('{0} মাহ'),
    quarter: TimeAgoPluralLabels.same('{0} তিনি মাহ'),
    year: TimeAgoPluralLabels.same('{0} বছৰ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} পূৰ্বে',
    future: '{0}ত',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'এতিয়া', past: '{0} ছেকেণ্ড পূৰ্বে', future: '{0} ছেকেণ্ডত'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'এইটো মিনিটত', past: '{0} মিনিট পূৰ্বে', future: '{0} মিনিটত'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'এইটো ঘণ্টাত', past: '{0} ঘণ্টা পূৰ্বে', future: '{0} ঘণ্টাত'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'আজি', past: '{0} দিন পূৰ্বে', future: '{0} দিনত'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'এই সপ্তাহ', past: '{0} সপ্তাহ পূৰ্বে', future: '{0} সপ্তাহত'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'এই মাহ', past: '{0} মাহ পূৰ্বে', future: '{0} মাহত'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'এই তিনি মাহ',
        past: '{0} তিনি মাহ পূৰ্বে',
        future: '{0} তিনি মাহত'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'এই বছৰ', past: '{0} বছৰৰ পূৰ্বে', future: '{0} বছৰত'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ছেকেণ্ড'),
    minute: TimeAgoPluralLabels.same('{0} মিনিট'),
    hour: TimeAgoPluralLabels.same('{0} ঘণ্টা'),
    day: TimeAgoPluralLabels.same('{0} দিন'),
    week: TimeAgoPluralLabels.same('{0} সপ্তাহ'),
    month: TimeAgoPluralLabels.same('{0} মাহ'),
    quarter: TimeAgoPluralLabels.same('{0} তিনি মাহ'),
    year: TimeAgoPluralLabels.same('{0} বছৰ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} পূৰ্বে',
    future: '{0}ত',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'এতিয়া', past: '{0} ছেকেণ্ড পূৰ্বে', future: '{0} ছেকেণ্ডত'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'এইটো মিনিটত', past: '{0} মিনিট পূৰ্বে', future: '{0} মিনিটত'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'এইটো ঘণ্টাত', past: '{0} ঘণ্টা পূৰ্বে', future: '{0} ঘণ্টাত'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'আজি', past: '{0} দিন পূৰ্বে', future: '{0} দিনত'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'এই সপ্তাহ', past: '{0} সপ্তাহ পূৰ্বে', future: '{0} সপ্তাহত'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'এই মা.', past: '{0} মাহ পূৰ্বে', future: '{0} মাহত'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'এই তিনি মাহ',
        past: '{0} তিনি মাহ পূৰ্বে',
        future: '{0} তিনি মাহত'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'এই বছৰ', past: '{0} বছৰৰ পূৰ্বে', future: '{0} বছৰত'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ছেকেণ্ড'),
    minute: TimeAgoPluralLabels.same('{0} মিনিট'),
    hour: TimeAgoPluralLabels.same('{0} ঘণ্টা'),
    day: TimeAgoPluralLabels.same('{0} দিন'),
    week: TimeAgoPluralLabels.same('{0} সপ্তাহ'),
    month: TimeAgoPluralLabels.same('{0} মাহ'),
    quarter: TimeAgoPluralLabels.same('{0} তিনি মাহ'),
    year: TimeAgoPluralLabels.same('{0} বছৰ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} পূৰ্বে',
    future: '{0}ত',
  ),
);
