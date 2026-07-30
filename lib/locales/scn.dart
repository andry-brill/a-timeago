import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'scn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ajeri',
    today: 'oji',
    tomorrow: 'dumani',
    dateTime: '{1} a l’uri {0}',
    relativeDateTime: '{1} a l’uri {0}',
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'ora',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'scn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ora', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'oji',
        past: TimeAgoPluralLabels(
            one: 'un jornu nnarrè', other: '{0} jorna nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra un jornu', other: 'ntra {0} jorna')),
    week: TimeAgoRelativeUnitLabels(
        current: 'sta simana',
        past: TimeAgoPluralLabels(
            one: 'na simana nnarrè', other: '{0} simani nnarrè'),
        future: TimeAgoPluralLabels(
            one: 'ntra na simana', other: 'ntra {0} simani')),
    month: TimeAgoRelativeUnitLabels(
        current: 'stu misi',
        past: TimeAgoPluralLabels(
            one: 'un misi nnarrè', other: '{0} misi nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra un misi', other: 'ntra {0} misi')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'stu trimestri',
        past: TimeAgoPluralLabels(
            one: 'un trimestri nnarrè', other: '{0} trimestri nnarrè'),
        future: TimeAgoPluralLabels(
            one: 'ntra un trimestri', other: 'ntra {0} trimestri')),
    year: TimeAgoRelativeUnitLabels(
        current: 'st’annu',
        past:
            TimeAgoPluralLabels(one: 'n’annu nnarrè', other: '{0} anni nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra n’annu', other: 'ntra {0} anni')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: 'un jornu', other: '{0} jorna'),
    week: TimeAgoPluralLabels(one: 'na simana', other: '{0} simani'),
    month: TimeAgoPluralLabels(one: 'un misi', other: '{0} misi'),
    quarter: TimeAgoPluralLabels(one: 'un trimestri', other: '{0} trimestri'),
    year: TimeAgoPluralLabels(one: 'n’annu', other: '{0} anni'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ora', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'oji',
        past: TimeAgoPluralLabels(
            one: 'un jornu nnarrè', other: '{0} jorna nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra un jornu', other: 'ntra {0} jorna')),
    week: TimeAgoRelativeUnitLabels(
        current: 'sta smn.',
        past: TimeAgoPluralLabels(
            one: 'na simana nnarrè', other: '{0} simani nnarrè'),
        future: TimeAgoPluralLabels(
            one: 'ntra na simana', other: 'ntra {0} simani')),
    month: TimeAgoRelativeUnitLabels(
        current: 'stu m.',
        past: TimeAgoPluralLabels(one: 'un m. nnarrè', other: '{0} m. nnarrè'),
        future: TimeAgoPluralLabels(one: 'ntra un m.', other: 'ntra {0} m.')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'stu trimestri',
        past: TimeAgoPluralLabels(
            one: 'un tri. nnarrè', other: '{0} tri. nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra un tri.', other: 'ntra {0} tri.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'st’a.',
        past:
            TimeAgoPluralLabels(one: 'n’annu nnarrè', other: '{0} anni nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra n’annu', other: 'ntra {0} anni')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: 'un jornu', other: '{0} jorna'),
    week: TimeAgoPluralLabels(one: 'na simana', other: '{0} simani'),
    month: TimeAgoPluralLabels(one: 'un m.', other: '{0} m.'),
    quarter: TimeAgoPluralLabels(one: 'un tri.', other: '{0} tri.'),
    year: TimeAgoPluralLabels(one: 'n’annu', other: '{0} anni'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ora', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'oji',
        past: TimeAgoPluralLabels(
            one: 'un jornu nnarrè', other: '{0} jorna nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra un jornu', other: 'ntra {0} jorna')),
    week: TimeAgoRelativeUnitLabels(
        current: 'sta smn.',
        past: TimeAgoPluralLabels(
            one: 'na simana nnarrè', other: '{0} simani nnarrè'),
        future: TimeAgoPluralLabels(
            one: 'ntra na simana', other: 'ntra {0} simani')),
    month: TimeAgoRelativeUnitLabels(
        current: 'stu m.',
        past: TimeAgoPluralLabels(one: 'un m. nnarrè', other: '{0} m. nnarrè'),
        future: TimeAgoPluralLabels(one: 'ntra un m.', other: 'ntra {0} m.')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'stu trimestri',
        past: TimeAgoPluralLabels(one: 'un t. nnarrè', other: '{0} t. nnarrè'),
        future: TimeAgoPluralLabels(one: 'ntra un t.', other: 'ntra {0} t.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'st’.a',
        past:
            TimeAgoPluralLabels(one: 'n’annu nnarrè', other: '{0} anni nnarrè'),
        future:
            TimeAgoPluralLabels(one: 'ntra n’annu', other: 'ntra {0} anni')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: 'un jornu', other: '{0} jorna'),
    week: TimeAgoPluralLabels(one: 'na simana', other: '{0} simani'),
    month: TimeAgoPluralLabels(one: 'un m.', other: '{0} m.'),
    quarter: TimeAgoPluralLabels(one: 'un t.', other: '{0} t.'),
    year: TimeAgoPluralLabels(one: 'n’annu', other: '{0} anni'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);
