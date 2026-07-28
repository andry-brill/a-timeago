import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'hi', scriptCode: 'Latn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 second pahle',
    current: 'abhi',
    future: '1 second mein',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'hi_Latn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'abhi', past: '{0} second pahle', future: '{0} second mein'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'yah minute',
        past: '{0} minute pahle',
        future: '{0} minute mein'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'yah ghanta',
        past: '{0} ghante pahle',
        future: '{0} ghante mein'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'aaj', past: '{0} din pahle', future: '{0} din mein'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'is hafte', past: '{0} hafte pahle', future: '{0} hafte mein'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'yah maheena',
        past: '{0} maheene pahle',
        future: '{0} maheene mein'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'is quarter',
        past: TimeAgoPluralLabels(
            one: '{0} quarter pahle', other: '{0} quarters pahle'),
        future: TimeAgoPluralLabels(
            one: '{0} quarter mein', other: '{0} quarters mein')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'is saal', past: '{0} saal pahle', future: '{0} saal mein'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} second'),
    minute: TimeAgoPluralLabels.same('{0} minute'),
    hour: TimeAgoPluralLabels.same('{0} ghante'),
    day: TimeAgoPluralLabels.same('{0} din'),
    week: TimeAgoPluralLabels.same('{0} hafte'),
    month: TimeAgoPluralLabels.same('{0} maheene'),
    quarter: TimeAgoPluralLabels(one: '{0} quarter', other: '{0} quarters'),
    year: TimeAgoPluralLabels.same('{0} saal'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} pahle',
    future: '{0} mein',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} sec. pahle', future: '{0} sec. mein'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'yah minute', past: '{0} min. pahle', future: '{0} min. mein'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'yah ghanta',
        past: TimeAgoPluralLabels(one: '{0} hr pahle', other: '{0} hr mein'),
        future: TimeAgoPluralLabels.same('{0} hr mein')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'aaj', past: '{0} din pahle', future: '{0} din mein'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'is wk.', past: '{0} wk. pahle', future: '{0} wk. mein'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'is mo', past: '{0} mo. pahle', future: '{0} mo. mein'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this qtr.',
        past: TimeAgoPluralLabels(
            one: '{0} qtr. pahle', other: '{0} qtrs. pahle'),
        future:
            TimeAgoPluralLabels(one: '{0} qtr. mein', other: '{0} qtrs. mein')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'is yr.', past: '{0} yr. pahle', future: '{0} yr. mein'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} hr', other: '{0} hr mein'),
    day: TimeAgoPluralLabels.same('{0} din'),
    week: TimeAgoPluralLabels.same('{0} wk.'),
    month: TimeAgoPluralLabels.same('{0} mo.'),
    quarter: TimeAgoPluralLabels(one: '{0} qtr.', other: '{0} qtrs.'),
    year: TimeAgoPluralLabels.same('{0} yr.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} pahle',
    future: '{0} mein',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0}s pahle', future: '{0}s mein'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'yah minute', past: '{0} min. pahle', future: '{0} min. mein'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'yah ghanta', past: '{0}hr pahle', future: '{0}hr mein'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'aaj', past: '{0} din pahle', future: '{0} din mein'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'is wk', past: '{0}w pahle', future: '{0}w mein'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'is mo.', past: '{0}mo pahle', future: '{0}mo mein'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this qtr.', past: '{0}q pahle', future: '{0}q mein'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'is yr.', past: '{0}y pahle', future: '{0}y mein'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}s'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0}hr'),
    day: TimeAgoPluralLabels.same('{0} din'),
    week: TimeAgoPluralLabels.same('{0}w'),
    month: TimeAgoPluralLabels.same('{0}mo'),
    quarter: TimeAgoPluralLabels.same('{0}q'),
    year: TimeAgoPluralLabels.same('{0}y'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} pahle',
    future: '{0} mein',
  ),
);
