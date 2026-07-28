import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ms', scriptCode: 'Arab'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 ساعت لالو',
    current: 'now',
    future: 'دالم 1 ساعت',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ms_Arab';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} ساعت لالو', future: 'دالم {0} ساعت'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} مينيت لالو',
        future: 'دالم {0} مينيت'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} جم لالو', future: 'دالم {0} جم'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'today', past: '{0} هاري لالو', future: 'دالم {0} هاري'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week', past: '{0} ميڠݢو لالو', future: 'دالم {0} ميڠݢو'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: '{0} بولن لالو', future: 'دالم {0} بولن'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year', past: '{0} تاهون لالو', future: 'دالم {0} تاهون'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ساعت'),
    minute: TimeAgoPluralLabels.same('{0} مينيت'),
    hour: TimeAgoPluralLabels.same('{0} جم'),
    day: TimeAgoPluralLabels.same('{0} هاري'),
    week: TimeAgoPluralLabels.same('{0} ميڠݢو'),
    month: TimeAgoPluralLabels.same('{0} بولن'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} تاهون'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} لالو',
    future: 'دالم {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} ساعت لالو', future: 'دالم {0} ساعت'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} مينيت لالو',
        future: 'دالم {0} مينيت'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} جم لالو', future: 'دالم {0} جم'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'today', past: '{0} هاري لالو', future: 'دالم {0} هاري'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week', past: '{0} ميڠݢو لالو', future: 'دالم {0} ميڠݢو'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: '{0} بولن لالو', future: 'دالم {0} بولن'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year', past: '{0} تاهون لالو', future: 'دالم {0} تاهون'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ساعت'),
    minute: TimeAgoPluralLabels.same('{0} مينيت'),
    hour: TimeAgoPluralLabels.same('{0} جم'),
    day: TimeAgoPluralLabels.same('{0} هاري'),
    week: TimeAgoPluralLabels.same('{0} ميڠݢو'),
    month: TimeAgoPluralLabels.same('{0} بولن'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} تاهون'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} لالو',
    future: 'دالم {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} ساعت لالو', future: 'دالم {0} ساعت'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} مينيت لالو',
        future: 'دالم {0} مينيت'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} جم لالو', future: 'دالم {0} جم'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'today', past: '{0} هاري لالو', future: 'دالم {0} هاري'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week', past: '{0} ميڠݢو لالو', future: 'دالم {0} ميڠݢو'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: '{0} بولن لالو', future: 'دالم {0} بولن'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year', past: '{0} تاهون لالو', future: 'دالم {0} تاهون'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ساعت'),
    minute: TimeAgoPluralLabels.same('{0} مينيت'),
    hour: TimeAgoPluralLabels.same('{0} جم'),
    day: TimeAgoPluralLabels.same('{0} هاري'),
    week: TimeAgoPluralLabels.same('{0} ميڠݢو'),
    month: TimeAgoPluralLabels.same('{0} بولن'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} تاهون'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} لالو',
    future: 'دالم {0}',
  ),
);
