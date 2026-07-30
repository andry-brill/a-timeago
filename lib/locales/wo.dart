import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'wo'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'démb',
    today: 'tay',
    tomorrow: 'suba',
    dateTime: '{1} ci {0}',
    relativeDateTime: '{1} - {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 saa ci ginaaw',
    current: 'leegi',
    future: 'fileek 1 saa',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'wo';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'leegi', past: '{0} saa ci ginaaw', future: 'fileek {0} saa'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ci simili bii',
        past: '{0} simili ci ginaaw',
        future: 'fileek {0} simili'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ci waxtu wii',
        past: '{0} waxtu ci ginaaw',
        future: 'fileek {0} waxtu'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'tay', past: '{0} fan ci ginaaw', future: 'fileek {0} fan'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ayu-bis bii',
        past: '{0} ayi-bis ci ginaaw',
        future: 'fileek {0} ayi-bis'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'weer wii',
        past: '{0} weer ci ginaaw',
        future: 'fileek {0} weer'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'trimestre bii',
        past: '{0} trimestre ci ginaaw',
        future: 'fileek {0} trimestre'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ren', past: '{0} at ci ginaaw', future: 'fileek {0} at'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saa'),
    minute: TimeAgoPluralLabels.same('{0} simili'),
    hour: TimeAgoPluralLabels.same('{0} waxtu'),
    day: TimeAgoPluralLabels.same('{0} fan'),
    week: TimeAgoPluralLabels.same('{0} ayi-bis'),
    month: TimeAgoPluralLabels.same('{0} weer'),
    quarter: TimeAgoPluralLabels.same('{0} trimestre'),
    year: TimeAgoPluralLabels.same('{0} at'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ci ginaaw',
    future: 'fileek {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'leegi', past: '{0} saa ci ginaaw', future: 'fileek {0} saa'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ci simili bii',
        past: '{0} sim. ci ginaaw',
        future: 'fileek {0} sim.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ci waxtu wii',
        past: '{0} wax. ci ginaaw',
        future: 'fileek {0} wax.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'tay', past: '{0} fan ci ginaaw', future: 'fileek {0} fan'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ayu-b bii',
        past: '{0} ayi-b. ci ginaaw',
        future: 'fileek {0} ayi-b.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'we. wii',
        past: '{0} we. ci ginaaw',
        future: 'fileek {0} we.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'trimestre bii',
        past: '{0} trim. ci ginaaw',
        future: 'fileek {0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ren', past: '{0} at ci ginaaw', future: 'fileek {0} at'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saa'),
    minute: TimeAgoPluralLabels.same('{0} sim.'),
    hour: TimeAgoPluralLabels.same('{0} wax.'),
    day: TimeAgoPluralLabels.same('{0} fan'),
    week: TimeAgoPluralLabels.same('{0} ayi-b.'),
    month: TimeAgoPluralLabels.same('{0} we.'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} at'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ci ginaaw',
    future: 'fileek {0}',
  ),
);
