import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ka'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 წამის წინ',
    current: 'ახლა',
    future: '1 წამში',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ka';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ახლა', past: '{0} წამის წინ', future: '{0} წამში'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ამ წუთში', past: '{0} წუთის წინ', future: '{0} წუთში'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ამ საათში', past: '{0} საათის წინ', future: '{0} საათში'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'დღეს', past: '{0} დღის წინ', future: '{0} დღეში'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ამ კვირაში', past: '{0} კვირის წინ', future: '{0} კვირაში'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ამ თვეში', past: '{0} თვის წინ', future: '{0} თვეში'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ამ კვარტალში',
        past: '{0} კვარტალის წინ',
        future: '{0} კვარტალში'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ამ წელს', past: '{0} წლის წინ', future: '{0} წელიწადში'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} წამ'),
    minute: TimeAgoPluralLabels.same('{0} წუთ'),
    hour: TimeAgoPluralLabels.same('{0} საათ'),
    day: TimeAgoPluralLabels.same('{0} დღ'),
    week: TimeAgoPluralLabels.same('{0} კვირ'),
    month: TimeAgoPluralLabels.same('{0} თვ'),
    quarter: TimeAgoPluralLabels.same('{0} კვარტალ'),
    year: TimeAgoPluralLabels.same('{0} წ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ის წინ',
    future: '{0}ში',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ახლა', past: '{0} წმ წინ', future: '{0} წამში'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ამ წუთში', past: '{0} წთ წინ', future: '{0} წუთში'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ამ საათში', past: '{0} სთ წინ', future: '{0} საათში'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'დღეს', past: '{0} დღის წინ', future: '{0} დღეში'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ამ კვირაში', past: '{0} კვ. წინ', future: '{0} კვირაში'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ამ თვეში', past: '{0} თვის წინ', future: '{0} თვეში'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ამ კვარტალში',
        past: '{0} კვარტ. წინ',
        future: '{0} კვარტალში'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ამ წელს', past: '{0} წლის წინ', future: '{0} წელში'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} წ'),
    minute: TimeAgoPluralLabels.same('{0} წ'),
    hour: TimeAgoPluralLabels.same('{0} ს'),
    day: TimeAgoPluralLabels.same('{0} დღ'),
    week: TimeAgoPluralLabels.same('{0} კვ'),
    month: TimeAgoPluralLabels.same('{0} თვ'),
    quarter: TimeAgoPluralLabels.same('{0} კვარტ'),
    year: TimeAgoPluralLabels.same('{0} წ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}მ წინ',
    future: '{0}ამში',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ახლა', past: '{0} წმ წინ', future: '{0} წამში'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ამ წუთში', past: '{0} წთ წინ', future: '{0} წუთში'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ამ საათში', past: '{0} სთ წინ', future: '{0} საათში'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'დღეს', past: '{0} დღის წინ', future: '{0} დღეში'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ამ კვირაში', past: '{0} კვირის წინ', future: '{0} კვირაში'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ამ თვეში', past: '{0} თვის წინ', future: '{0} თვეში'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ამ კვარტალში',
        past: '{0} კვარტ. წინ',
        future: '{0} კვარტალში'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ამ წელს', past: '{0} წლის წინ', future: '{0} წელში'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} წ'),
    minute: TimeAgoPluralLabels.same('{0} წ'),
    hour: TimeAgoPluralLabels.same('{0} ს'),
    day: TimeAgoPluralLabels.same('{0} დღ'),
    week: TimeAgoPluralLabels.same('{0} კვირ'),
    month: TimeAgoPluralLabels.same('{0} თვ'),
    quarter: TimeAgoPluralLabels.same('{0} კვარტ'),
    year: TimeAgoPluralLabels.same('{0} წ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}მ წინ',
    future: '{0}ამში',
  ),
);
