import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'eo'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: 'antaŭ 1 sekundo',
    current: 'nun',
    future: 'post 1 sekundo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'eo';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nun',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} sekundo', other: 'antaŭ {0} sekundoj'),
        future: TimeAgoPluralLabels(
            one: 'post {0} sekundo', other: 'post {0} sekundoj')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ĉi-minute',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} minuto', other: 'antaŭ {0} minutoj'),
        future: TimeAgoPluralLabels(
            one: 'post {0} minuto', other: 'post {0} minutoj')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ĉi-hore',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} horo', other: 'antaŭ {0} horoj'),
        future:
            TimeAgoPluralLabels(one: 'post {0} horo', other: 'post {0} horoj')),
    day: TimeAgoRelativeUnitLabels(
        current: 'hodiaŭ',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} tago', other: 'antaŭ {0} tagoj'),
        future:
            TimeAgoPluralLabels(one: 'post {0} tago', other: 'post {0} tagoj')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ĉi tiun semajnon',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} semajno', other: 'antaŭ {0} semajnoj'),
        future: TimeAgoPluralLabels(
            one: 'post {0} semajno', other: 'post {0} semajnoj')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ĉi tiun monaton',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} monato', other: 'antaŭ {0} monatoj'),
        future: TimeAgoPluralLabels(
            one: 'post {0} monato', other: 'post {0} monatoj')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ĉi tiun kvaronjaron',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} kvaronjaro', other: 'antaŭ {0} kvaronjaroj'),
        future: TimeAgoPluralLabels(
            one: 'post {0} kvaronjaro', other: 'post {0} kvaronjaroj')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ĉi tiun jaron',
        past: TimeAgoPluralLabels(
            one: 'antaŭ {0} jaro', other: 'antaŭ {0} jaroj'),
        future:
            TimeAgoPluralLabels(one: 'post {0} jaro', other: 'post {0} jaroj')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekundo', other: '{0} sekundoj'),
    minute: TimeAgoPluralLabels(one: '{0} minuto', other: '{0} minutoj'),
    hour: TimeAgoPluralLabels(one: '{0} horo', other: '{0} horoj'),
    day: TimeAgoPluralLabels(one: '{0} tago', other: '{0} tagoj'),
    week: TimeAgoPluralLabels(one: '{0} semajno', other: '{0} semajnoj'),
    month: TimeAgoPluralLabels(one: '{0} monato', other: '{0} monatoj'),
    quarter:
        TimeAgoPluralLabels(one: '{0} kvaronjaro', other: '{0} kvaronjaroj'),
    year: TimeAgoPluralLabels(one: '{0} jaro', other: '{0} jaroj'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'antaŭ {0}',
    future: 'post {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nun', past: 'antaŭ {0} s', future: 'post {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi-minute', past: 'antaŭ {0} min', future: 'post {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi-hore', past: 'antaŭ {0} h', future: 'post {0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hodiaŭ', past: 'antaŭ {0} t', future: 'post {0} t'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi-sem.', past: 'antaŭ {0} sem.', future: 'post {0} sem.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi tiun monaton', past: 'antaŭ {0} m', future: 'post {0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi tiun kvaronjaron',
        past: 'antaŭ {0} kvaronjar.',
        future: 'post {0} kvaronjar.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi tiun jaron', past: 'antaŭ {0} j', future: 'post {0} j'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} hor.'),
    day: TimeAgoPluralLabels.same('{0} ta.'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels.same('{0} mo.'),
    quarter: TimeAgoPluralLabels.same('{0} kvaronjar.'),
    year: TimeAgoPluralLabels.same('{0} ja.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'antaŭ {0}',
    future: 'post {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nun', past: 'antaŭ {0} s', future: 'post {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi-minute', past: 'antaŭ {0} min', future: 'post {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi-hore', past: 'antaŭ {0} h', future: 'post {0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hodiaŭ', past: 'antaŭ {0} d', future: 'post {0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi-sem.', past: 'antaŭ {0} sem.', future: 'post {0} sem.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi tiun monaton', past: 'antaŭ {0} m', future: 'post {0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi tiun kvaronjaron',
        past: 'antaŭ {0} kvaronjar.',
        future: 'post {0} kvaronjar.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ĉi tiun jaron', past: 'antaŭ {0} j', future: 'post {0} j'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('{0} kvaronjar.'),
    year: TimeAgoPluralLabels.same('{0} j'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'antaŭ {0}',
    future: 'post {0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} sek.'),
        future: TimeAgoPluralLabels.same('post {0} sek.')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} m.'),
        future: TimeAgoPluralLabels.same('post {0} m.')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} h.'),
        future: TimeAgoPluralLabels.same('post {0} h.')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} t.'),
        future: TimeAgoPluralLabels.same('post {0} t.')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} sem.'),
        future: TimeAgoPluralLabels.same('post {0} sem.')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} m.'),
        future: TimeAgoPluralLabels.same('post {0} m.')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} kvaronjar.'),
        future: TimeAgoPluralLabels.same('post {0} kvaronjar.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('antaŭ {0} j.'),
        future: TimeAgoPluralLabels.same('post {0} j.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m.'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('{0} kvaronjar.'),
    year: TimeAgoPluralLabels.same('{0} j'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'antaŭ {0}',
    future: 'post {0}',
  ),
  now: 'nun',
);
