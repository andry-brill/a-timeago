import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'en', countryCode: 'CA'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'yesterday',
    today: 'today',
    tomorrow: 'tomorrow',
    dateTime: '{1} at {0}',
    relativeDateTime: '{1} at {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 second ago',
    current: 'now',
    future: 'in 1 second',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'en_CA';

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
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(one: '{0} sec ago', other: '{0} secs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} sec', other: 'in {0} secs')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(one: '{0} min ago', other: '{0} mins ago'),
        future: TimeAgoPluralLabels(one: 'in {0} min', other: 'in {0} mins')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(one: '{0} hr ago', other: '{0} hrs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} hr', other: 'in {0} hrs')),
    day: TimeAgoRelativeUnitLabels(
        current: 'today',
        past: TimeAgoPluralLabels(one: '{0} day ago', other: '{0} days ago'),
        future: TimeAgoPluralLabels(one: 'in {0} day', other: 'in {0} days')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this wk',
        past: TimeAgoPluralLabels(one: '{0} wk ago', other: '{0} wks ago'),
        future: TimeAgoPluralLabels(one: 'in {0} wk', other: 'in {0} wks')),
    month: TimeAgoRelativeUnitLabels(
        current: 'this mo',
        past: TimeAgoPluralLabels(one: '{0} mo ago', other: '{0} mos ago'),
        future: TimeAgoPluralLabels(one: 'in {0} mo', other: 'in {0} mos')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this qtr.',
        past: TimeAgoPluralLabels(one: '{0} qtr ago', other: '{0} qtrs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} qtr', other: 'in {0} qtrs')),
    year: TimeAgoRelativeUnitLabels(
        current: 'this yr',
        past: TimeAgoPluralLabels(one: '{0} yr ago', other: '{0} yrs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} yr', other: 'in {0} yrs')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sec', other: '{0} secs'),
    minute: TimeAgoPluralLabels(one: '{0} min', other: '{0} mins'),
    hour: TimeAgoPluralLabels(one: '{0} hr', other: '{0} hrs'),
    day: TimeAgoPluralLabels(one: '{0} day', other: '{0} days'),
    week: TimeAgoPluralLabels(one: '{0} wk', other: '{0} wks'),
    month: TimeAgoPluralLabels(one: '{0} mo', other: '{0} mos'),
    quarter: TimeAgoPluralLabels(one: '{0} qtr', other: '{0} qtrs'),
    year: TimeAgoPluralLabels(one: '{0} yr', other: '{0} yrs'),
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
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(one: '{0} sec ago', other: '{0} secs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} sec', other: 'in {0} secs')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(one: '{0} min ago', other: '{0} mins ago'),
        future: TimeAgoPluralLabels(one: 'in {0} min', other: 'in {0} mins')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(one: '{0} hr ago', other: '{0} hrs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} hr', other: 'in {0} hrs')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'today', past: '{0}d ago', future: 'in {0}d'),
    week: TimeAgoRelativeUnitLabels(
        current: 'this wk',
        past: TimeAgoPluralLabels(one: '{0} wk ago', other: '{0} wks ago'),
        future: TimeAgoPluralLabels(one: 'in {0} wk', other: 'in {0} wks')),
    month: TimeAgoRelativeUnitLabels(
        current: 'this mo',
        past: TimeAgoPluralLabels(one: '{0} mo ago', other: '{0} mos ago'),
        future: TimeAgoPluralLabels(one: 'in {0} mo', other: 'in {0} mos')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this qtr.',
        past: TimeAgoPluralLabels(one: '{0} qtr ago', other: '{0} qtrs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} qtr', other: 'in {0} qtrs')),
    year: TimeAgoRelativeUnitLabels(
        current: 'this yr',
        past: TimeAgoPluralLabels(one: '{0} yr ago', other: '{0} yrs ago'),
        future: TimeAgoPluralLabels(one: 'in {0} yr', other: 'in {0} yrs')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sec', other: '{0} secs'),
    minute: TimeAgoPluralLabels(one: '{0} min', other: '{0} mins'),
    hour: TimeAgoPluralLabels(one: '{0} hr', other: '{0} hrs'),
    day: TimeAgoPluralLabels.same('{0}d'),
    week: TimeAgoPluralLabels(one: '{0} wk', other: '{0} wks'),
    month: TimeAgoPluralLabels(one: '{0} mo', other: '{0} mos'),
    quarter: TimeAgoPluralLabels(one: '{0} qtr', other: '{0} qtrs'),
    year: TimeAgoPluralLabels(one: '{0} yr', other: '{0} yrs'),
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
