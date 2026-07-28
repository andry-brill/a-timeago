import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'en', countryCode: 'SG'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 second ago',
    current: 'now',
    future: 'in 1 second',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'en_SG';

/// Ten-year unit shared with the English CLDR core.
const TimeAgoStep decade = en.decade;

/// Hundred-year unit shared with the English CLDR core.
const TimeAgoStep century = en.century;

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: '{0} second ago', other: '{0} seconds ago'),
        future:
            TimeAgoPluralLabels(one: 'in {0} second', other: 'in {0} seconds')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: '{0} minute ago', other: '{0} minutes ago'),
        future:
            TimeAgoPluralLabels(one: 'in {0} minute', other: 'in {0} minutes')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(one: '{0} hour ago', other: '{0} hours ago'),
        future: TimeAgoPluralLabels(one: 'in {0} hour', other: 'in {0} hours')),
    day: TimeAgoRelativeUnitLabels(
        current: 'today',
        past: TimeAgoPluralLabels(one: '{0} day ago', other: '{0} days ago'),
        future: TimeAgoPluralLabels(one: 'in {0} day', other: 'in {0} days')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(one: '{0} week ago', other: '{0} weeks ago'),
        future: TimeAgoPluralLabels(one: 'in {0} week', other: 'in {0} weeks')),
    month: TimeAgoRelativeUnitLabels(
        current: 'this month',
        past:
            TimeAgoPluralLabels(one: '{0} month ago', other: '{0} months ago'),
        future:
            TimeAgoPluralLabels(one: 'in {0} month', other: 'in {0} months')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this quarter',
        past: TimeAgoPluralLabels(
            one: '{0} quarter ago', other: '{0} quarters ago'),
        future: TimeAgoPluralLabels(
            one: 'in {0} quarter', other: 'in {0} quarters')),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past: TimeAgoPluralLabels(one: '{0} year ago', other: '{0} years ago'),
        future: TimeAgoPluralLabels(one: 'in {0} year', other: 'in {0} years')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} second', other: '{0} seconds'),
    minute: TimeAgoPluralLabels(one: '{0} minute', other: '{0} minutes'),
    hour: TimeAgoPluralLabels(one: '{0} hour', other: '{0} hours'),
    day: TimeAgoPluralLabels(one: '{0} day', other: '{0} days'),
    week: TimeAgoPluralLabels(one: '{0} week', other: '{0} weeks'),
    month: TimeAgoPluralLabels(one: '{0} month', other: '{0} months'),
    quarter: TimeAgoPluralLabels(one: '{0} quarter', other: '{0} quarters'),
    year: TimeAgoPluralLabels(one: '{0} year', other: '{0} years'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ago',
    future: 'in {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} sec ago', future: 'in {0} sec'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '{0} min ago', future: 'in {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} hr ago', future: 'in {0} hr'),
    day: TimeAgoRelativeUnitLabels(
        current: 'today',
        past: TimeAgoPluralLabels(one: '{0} day ago', other: '{0} days ago'),
        future: TimeAgoPluralLabels(one: 'in {0} day', other: 'in {0} days')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this wk', past: '{0} wk ago', future: 'in {0} wk'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this mth', past: '{0} mth ago', future: 'in {0} mth'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this qtr',
        past: TimeAgoPluralLabels(one: '{0} qtr ago', other: '{0} qtrs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} qtr', other: 'in {0} qtrs')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this yr', past: '{0} yr ago', future: 'in {0} yr'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} hr'),
    day: TimeAgoPluralLabels(one: '{0} day', other: '{0} days'),
    week: TimeAgoPluralLabels.same('{0} wk'),
    month: TimeAgoPluralLabels.same('{0} mth'),
    quarter: TimeAgoPluralLabels(one: '{0} qtr', other: '{0} qtrs'),
    year: TimeAgoPluralLabels.same('{0} yr'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ago',
    future: 'in {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} sec ago', future: 'in {0} sec'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '{0} min ago', future: 'in {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} hr ago', future: 'in {0} hr'),
    day: TimeAgoRelativeUnitLabels(
        current: 'today',
        past: TimeAgoPluralLabels(one: '{0} day ago', other: '{0} days ago'),
        future: TimeAgoPluralLabels(one: 'in {0} day', other: 'in {0} days')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this wk', past: '{0} wk ago', future: 'in {0} wk'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this mo', past: '{0} mo ago', future: 'in {0} mo'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this qtr', past: '{0} qtr ago', future: 'in {0} qtr'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this yr', past: '{0} yr ago', future: 'in {0} yr'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} hr'),
    day: TimeAgoPluralLabels(one: '{0} day', other: '{0} days'),
    week: TimeAgoPluralLabels.same('{0} wk'),
    month: TimeAgoPluralLabels.same('{0} mo'),
    quarter: TimeAgoPluralLabels.same('{0} qtr'),
    year: TimeAgoPluralLabels.same('{0} yr'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ago',
    future: 'in {0}',
  ),
);
