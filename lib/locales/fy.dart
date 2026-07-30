import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'fy'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'gisteren',
    today: 'vandaag',
    tomorrow: 'morgen',
    dateTime: '{1} om {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekonde lyn',
    current: 'nu',
    future: 'Oer 1 sekonde',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'fy';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nu',
        past: TimeAgoPluralLabels(
            one: '{0} sekonde lyn', other: '{0} sekonden lyn'),
        future: TimeAgoPluralLabels(
            one: 'Oer {0} sekonde', other: 'Oer {0} sekonden')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past:
            TimeAgoPluralLabels(one: '{0} minút lyn', other: '{0} minuten lyn'),
        future: TimeAgoPluralLabels(
            one: 'Oer {0} minút', other: 'Oer {0} minuten')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} oere lyn', future: 'Oer {0} oere'),
    day: TimeAgoRelativeUnitLabels(
        current: 'vandaag',
        past: TimeAgoPluralLabels(one: '{0} dei lyn', other: '{0} deien lyn'),
        future:
            TimeAgoPluralLabels(one: 'Oer {0} dei', other: 'Oer {0} deien')),
    week: TimeAgoRelativeUnitLabels(
        current: 'dizze wike',
        past: TimeAgoPluralLabels(one: '{0} wike lyn', other: '{0} wiken lyn'),
        future:
            TimeAgoPluralLabels(one: 'Oer {0} wike', other: 'Oer {0} wiken')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dizze moanne',
        past: TimeAgoPluralLabels(
            one: '{0} moanne lyn', other: '{0} moannen lyn'),
        future: TimeAgoPluralLabels(
            one: 'Oer {0} moanne', other: 'Oer {0} moannen')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'dit jier', past: '{0} jier lyn', future: 'Oer {0} jier'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekonde', other: '{0} sekonden'),
    minute: TimeAgoPluralLabels(one: '{0} minút', other: '{0} minuten'),
    hour: TimeAgoPluralLabels.same('{0} oere'),
    day: TimeAgoPluralLabels(one: '{0} dei', other: '{0} deien'),
    week: TimeAgoPluralLabels(one: '{0} wike', other: '{0} wiken'),
    month: TimeAgoPluralLabels(one: '{0} moanne', other: '{0} moannen'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} jier'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} lyn',
    future: 'Oer {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nu',
        past: TimeAgoPluralLabels(
            one: '{0} sekonde lyn', other: '{0} sekonden lyn'),
        future: TimeAgoPluralLabels(
            one: 'Oer {0} sekonde', other: 'Oer {0} sekonden')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past:
            TimeAgoPluralLabels(one: '{0} minút lyn', other: '{0} minuten lyn'),
        future: TimeAgoPluralLabels(
            one: 'Oer {0} minút', other: 'Oer {0} minuten')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '{0} oere lyn', future: 'Oer {0} oere'),
    day: TimeAgoRelativeUnitLabels(
        current: 'vandaag',
        past: TimeAgoPluralLabels(one: '{0} dei lyn', other: '{0} deien lyn'),
        future:
            TimeAgoPluralLabels(one: 'Oer {0} dei', other: 'Oer {0} deien')),
    week: TimeAgoRelativeUnitLabels(
        current: 'dizze wike',
        past: TimeAgoPluralLabels(one: '{0} wike lyn', other: '{0} wiken lyn'),
        future:
            TimeAgoPluralLabels(one: 'Oer {0} wike', other: 'Oer {0} wiken')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dizze moanne',
        past: TimeAgoPluralLabels(
            one: '{0} moanne lyn', other: '{0} moannen lyn'),
        future: TimeAgoPluralLabels(
            one: 'Oer {0} moanne', other: 'Oer {0} moannen')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'dit jier', past: '{0} jier lyn', future: 'Oer {0} jier'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekonde', other: '{0} sekonden'),
    minute: TimeAgoPluralLabels(one: '{0} minút', other: '{0} minuten'),
    hour: TimeAgoPluralLabels.same('{0} oere'),
    day: TimeAgoPluralLabels(one: '{0} dei', other: '{0} deien'),
    week: TimeAgoPluralLabels(one: '{0} wike', other: '{0} wiken'),
    month: TimeAgoPluralLabels(one: '{0} moanne', other: '{0} moannen'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} jier'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} lyn',
    future: 'Oer {0}',
  ),
);
