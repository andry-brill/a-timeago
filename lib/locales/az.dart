import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'az'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 saniyə öncə',
    current: 'indi',
    future: '1 saniyə ərzində',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'az';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'indi', past: '{0} saniyə öncə', future: '{0} saniyə ərzində'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'bu dəqiqə',
        past: '{0} dəqiqə öncə',
        future: '{0} dəqiqə ərzində'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'bu saat', past: '{0} saat öncə', future: '{0} saat ərzində'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bu gün', past: '{0} gün öncə', future: '{0} gün ərzində'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu həftə',
        past: '{0} həftə öncə',
        future: '{0} həftə ərzində'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu ay', past: '{0} ay öncə', future: '{0} ay ərzində'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'bu rüb', past: '{0} rüb öncə', future: '{0} rüb ərzində'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu il', past: '{0} il öncə', future: '{0} il ərzində'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saniyə'),
    minute: TimeAgoPluralLabels.same('{0} dəqiqə'),
    hour: TimeAgoPluralLabels.same('{0} saat'),
    day: TimeAgoPluralLabels.same('{0} gün'),
    week: TimeAgoPluralLabels.same('{0} həftə'),
    month: TimeAgoPluralLabels.same('{0} ay'),
    quarter: TimeAgoPluralLabels.same('{0} rüb'),
    year: TimeAgoPluralLabels.same('{0} il'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} öncə',
    future: '{0} ərzində',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'indi', past: '{0} saniyə öncə', future: '{0} saniyə ərzində'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'bu dəqiqə',
        past: '{0} dəqiqə öncə',
        future: '{0} dəqiqə ərzində'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'bu saat', past: '{0} saat öncə', future: '{0} saat ərzində'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bu gün', past: '{0} gün öncə', future: '{0} gün ərzində'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu həftə',
        past: '{0} həftə öncə',
        future: '{0} həftə ərzində'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu ay', past: '{0} ay öncə', future: '{0} ay ərzində'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'bu rüb', past: '{0} rüb öncə', future: '{0} rüb ərzində'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu il', past: '{0} il öncə', future: '{0} il ərzində'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saniyə'),
    minute: TimeAgoPluralLabels.same('{0} dəqiqə'),
    hour: TimeAgoPluralLabels.same('{0} saat'),
    day: TimeAgoPluralLabels.same('{0} gün'),
    week: TimeAgoPluralLabels.same('{0} həftə'),
    month: TimeAgoPluralLabels.same('{0} ay'),
    quarter: TimeAgoPluralLabels.same('{0} rüb'),
    year: TimeAgoPluralLabels.same('{0} il'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} öncə',
    future: '{0} ərzində',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'indi', past: '{0} saniyə öncə', future: '{0} saniyə ərzində'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'bu dəqiqə',
        past: '{0} dəqiqə öncə',
        future: '{0} dəqiqə ərzində'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'bu saat', past: '{0} saat öncə', future: '{0} saat ərzində'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bu gün', past: '{0} gün öncə', future: '{0} gün ərzində'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu həftə',
        past: '{0} həftə öncə',
        future: '{0} həftə ərzində'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu ay', past: '{0} ay öncə', future: '{0} ay ərzində'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'bu rüb', past: '{0} rüb öncə', future: '{0} rüb ərzində'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu il', past: '{0} il öncə', future: '{0} il ərzində'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saniyə'),
    minute: TimeAgoPluralLabels.same('{0} dəqiqə'),
    hour: TimeAgoPluralLabels.same('{0} saat'),
    day: TimeAgoPluralLabels.same('{0} gün'),
    week: TimeAgoPluralLabels.same('{0} həftə'),
    month: TimeAgoPluralLabels.same('{0} ay'),
    quarter: TimeAgoPluralLabels.same('{0} rüb'),
    year: TimeAgoPluralLabels.same('{0} il'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} öncə',
    future: '{0} ərzində',
  ),
);
