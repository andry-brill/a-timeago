import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'en', countryCode: 'GB'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: 'just now',
    current: 'now',
    future: 'in a moment',
  ),
  functions: IntlTimeAgoLocaleFunctions('en_GB'),
);

/// Two-week unit with reviewed British English labels.
const TimeAgoStep fortnight = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.week,
    unitMultiplier: 2,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} fortnight',
        other: '{0} fortnights',
      ),
      short: TimeAgoPluralLabels.same('{0} fortn'),
      narrow: TimeAgoPluralLabels.same('{0}fn'),
    ),
  ),
);

/// Ten-year unit using Unicode CLDR 48.1 English duration labels.
const TimeAgoStep decade = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 10,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} decade',
        other: '{0} decades',
      ),
      short: TimeAgoPluralLabels.same('{0} dec'),
      narrow: TimeAgoPluralLabels.same('{0}dec'),
    ),
  ),
);

/// Hundred-year unit using Unicode CLDR 48.1 English duration labels.
const TimeAgoStep century = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 100,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} century',
        other: '{0} centuries',
      ),
      short: TimeAgoPluralLabels.same('{0} c'),
      narrow: TimeAgoPluralLabels.same('{0}c'),
    ),
  ),
);

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
      current: 'now',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} second ago',
        other: '{0} seconds ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} second',
        other: 'in {0} seconds',
      ),
    ),
    minute: TimeAgoRelativeUnitLabels(
      current: 'this minute',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} minute ago',
        other: '{0} minutes ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} minute',
        other: 'in {0} minutes',
      ),
    ),
    hour: TimeAgoRelativeUnitLabels(
      current: 'this hour',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} hour ago',
        other: '{0} hours ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} hour',
        other: 'in {0} hours',
      ),
    ),
    day: TimeAgoRelativeUnitLabels(
      current: 'today',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} day ago',
        other: '{0} days ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} day',
        other: 'in {0} days',
      ),
    ),
    week: TimeAgoRelativeUnitLabels(
      current: 'this week',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} week ago',
        other: '{0} weeks ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} week',
        other: 'in {0} weeks',
      ),
    ),
    month: TimeAgoRelativeUnitLabels(
      current: 'this month',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} month ago',
        other: '{0} months ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} month',
        other: 'in {0} months',
      ),
    ),
    quarter: TimeAgoRelativeUnitLabels(
      current: 'this quarter',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} quarter ago',
        other: '{0} quarters ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} quarter',
        other: 'in {0} quarters',
      ),
    ),
    year: TimeAgoRelativeUnitLabels(
      current: 'this year',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} year ago',
        other: '{0} years ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} year',
        other: 'in {0} years',
      ),
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.oneOther(
      one: '{0} second',
      other: '{0} seconds',
    ),
    minute: TimeAgoPluralLabels.oneOther(
      one: '{0} minute',
      other: '{0} minutes',
    ),
    hour: TimeAgoPluralLabels.oneOther(
      one: '{0} hour',
      other: '{0} hours',
    ),
    day: TimeAgoPluralLabels.oneOther(
      one: '{0} day',
      other: '{0} days',
    ),
    week: TimeAgoPluralLabels.oneOther(
      one: '{0} week',
      other: '{0} weeks',
    ),
    month: TimeAgoPluralLabels.oneOther(
      one: '{0} month',
      other: '{0} months',
    ),
    quarter: TimeAgoPluralLabels.oneOther(
      one: '{0} quarter',
      other: '{0} quarters',
    ),
    year: TimeAgoPluralLabels.oneOther(
      one: '{0} year',
      other: '{0} years',
    ),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} and {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, and {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ago',
    future: 'in {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
      current: 'now',
      past: '{0} sec ago',
      future: 'in {0} sec',
    ),
    minute: TimeAgoRelativeUnitLabels.same(
      current: 'this minute',
      past: '{0} min ago',
      future: 'in {0} min',
    ),
    hour: TimeAgoRelativeUnitLabels.same(
      current: 'this hour',
      past: '{0} hr ago',
      future: 'in {0} hr',
    ),
    day: TimeAgoRelativeUnitLabels(
      current: 'today',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} day ago',
        other: '{0} days ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} day',
        other: 'in {0} days',
      ),
    ),
    week: TimeAgoRelativeUnitLabels.same(
      current: 'this wk',
      past: '{0} wk ago',
      future: 'in {0} wk',
    ),
    month: TimeAgoRelativeUnitLabels.same(
      current: 'this mo',
      past: '{0} mo ago',
      future: 'in {0} mo',
    ),
    quarter: TimeAgoRelativeUnitLabels(
      current: 'this qtr',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} qtr ago',
        other: '{0} qtrs ago',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'in {0} qtr',
        other: 'in {0} qtrs',
      ),
    ),
    year: TimeAgoRelativeUnitLabels.same(
      current: 'this yr',
      past: '{0} yr ago',
      future: 'in {0} yr',
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} hr'),
    day: TimeAgoPluralLabels.oneOther(
      one: '{0} day',
      other: '{0} days',
    ),
    week: TimeAgoPluralLabels.same('{0} wk'),
    month: TimeAgoPluralLabels.same('{0} mo'),
    quarter: TimeAgoPluralLabels.same('{0} qtr'),
    year: TimeAgoPluralLabels.same('{0} yr'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} and {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, and {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ago',
    future: 'in {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
      current: 'now',
      past: '{0}s ago',
      future: 'in {0}s',
    ),
    minute: TimeAgoRelativeUnitLabels.same(
      current: 'this minute',
      past: '{0}m ago',
      future: 'in {0}m',
    ),
    hour: TimeAgoRelativeUnitLabels.same(
      current: 'this hour',
      past: '{0}h ago',
      future: 'in {0}h',
    ),
    day: TimeAgoRelativeUnitLabels.same(
      current: 'today',
      past: '{0}d ago',
      future: 'in {0}d',
    ),
    week: TimeAgoRelativeUnitLabels.same(
      current: 'this wk.',
      past: '{0}w ago',
      future: 'in {0}w',
    ),
    month: TimeAgoRelativeUnitLabels.same(
      current: 'this mo.',
      past: '{0}mo ago',
      future: 'in {0}mo',
    ),
    quarter: TimeAgoRelativeUnitLabels.same(
      current: 'this qtr.',
      past: '{0}q ago',
      future: 'in {0}q',
    ),
    year: TimeAgoRelativeUnitLabels.same(
      current: 'this yr.',
      past: '{0}y ago',
      future: 'in {0}y',
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}s'),
    minute: TimeAgoPluralLabels.same('{0}m'),
    hour: TimeAgoPluralLabels.same('{0}h'),
    day: TimeAgoPluralLabels.same('{0}d'),
    week: TimeAgoPluralLabels.same('{0}w'),
    month: TimeAgoPluralLabels.same('{0}mo'),
    quarter: TimeAgoPluralLabels.same('{0}q'),
    year: TimeAgoPluralLabels.same('{0}y'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} and {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, and {1}',
  ),
  direction: TimeAgoDirectionPatterns(past: '{0} ago', future: 'in {0}'),
);

const _miniRelative = TimeAgoRelativeLabels(
  second: TimeAgoRelativeUnitLabels.same(past: '{0}s', future: '{0}s'),
  minute: TimeAgoRelativeUnitLabels.same(past: '{0}m', future: '{0}m'),
  hour: TimeAgoRelativeUnitLabels.same(past: '{0}h', future: '{0}h'),
  day: TimeAgoRelativeUnitLabels.same(past: '{0}d', future: '{0}d'),
  week: TimeAgoRelativeUnitLabels.same(past: '{0}wk', future: '{0}wk'),
  month: TimeAgoRelativeUnitLabels.same(past: '{0}mo', future: '{0}mo'),
  quarter: TimeAgoRelativeUnitLabels.same(past: '{0}q', future: '{0}q'),
  year: TimeAgoRelativeUnitLabels.same(past: '{0}yr', future: '{0}yr'),
);

const _mini = TimeAgoFormatLabels(
  relative: _miniRelative,
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}s'),
    minute: TimeAgoPluralLabels.same('{0}m'),
    hour: TimeAgoPluralLabels.same('{0}h'),
    day: TimeAgoPluralLabels.same('{0}d'),
    week: TimeAgoPluralLabels.same('{0}wk'),
    month: TimeAgoPluralLabels.same('{0}mo'),
    quarter: TimeAgoPluralLabels.same('{0}q'),
    year: TimeAgoPluralLabels.same('{0}yr'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(past: '{0} ago', future: 'in {0}'),
  now: 'now',
);
