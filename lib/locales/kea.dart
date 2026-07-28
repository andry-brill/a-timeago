import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kea'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'a ten 1 sigundu',
    current: 'agora',
    future: 'di li 1 sigundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kea';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora',
        past: 'a ten {0} sigundu',
        future: 'di li {0} sigundu'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'es minutu li',
        past: 'a ten {0} minutu',
        future: 'di li {0} minutu'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'es ora li', past: 'a ten {0} ora', future: 'di li {0} ora'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'oji', past: 'a ten {0} dia', future: 'di li {0} dia'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'es simana li',
        past: 'a ten {0} simana',
        future: 'di li {0} simana'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'es mes li', past: 'a ten {0} mes', future: 'di li {0} mes'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'es trimestri li',
        past: 'a ten {0} trimestri',
        future: 'di li {0} trimestri'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'es anu li', past: 'a ten {0} anu', future: 'di li {0} anu'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sigundu'),
    minute: TimeAgoPluralLabels.same('{0} minutu'),
    hour: TimeAgoPluralLabels.same('{0} ora'),
    day: TimeAgoPluralLabels.same('{0} dia'),
    week: TimeAgoPluralLabels.same('{0} simana'),
    month: TimeAgoPluralLabels.same('{0} mes'),
    quarter: TimeAgoPluralLabels.same('{0} trimestri'),
    year: TimeAgoPluralLabels.same('{0} anu'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'a ten {0}',
    future: 'di li {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora', past: 'a ten {0} sig', future: 'di li {0} sig'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'es minutu li',
        past: 'a ten {0} min',
        future: 'di li {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'es ora li', past: 'a ten {0} ora', future: 'di li {0} ora'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'oji', past: 'a ten {0} dia', future: 'di li {0} dia'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'es simana li',
        past: 'a ten {0} sim.',
        future: 'di li {0} sim.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'es mes li', past: 'a ten {0} mes', future: 'di li {0} mes'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'es trimestri li',
        past: 'a ten {0} trim.',
        future: 'di li {0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'es anu li', past: 'a ten {0} anu', future: 'di li {0} anu'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sig'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} ora'),
    day: TimeAgoPluralLabels.same('{0} dia'),
    week: TimeAgoPluralLabels.same('{0} sim.'),
    month: TimeAgoPluralLabels.same('{0} mes'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} anu'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'a ten {0}',
    future: 'di li {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora', past: 'a ten {0} s', future: 'di li {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'es minutu li', past: 'a ten {0} m', future: 'di li {0} m'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'es ora li', past: 'a ten {0} ora', future: 'di li {0} ora'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'oji', past: 'a ten {0} dia', future: 'di li {0} dia'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'es simana li',
        past: 'a ten {0} sim.',
        future: 'di li {0} sim.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'es mes li', past: 'a ten {0} mes', future: 'di li {0} mes'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'es trimestri li',
        past: 'a ten {0} trim.',
        future: 'di li {0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'es anu li', past: 'a ten {0} anu', future: 'di li {0} anu'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} ora'),
    day: TimeAgoPluralLabels.same('{0} dia'),
    week: TimeAgoPluralLabels.same('{0} sim.'),
    month: TimeAgoPluralLabels.same('{0} mes'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} anu'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'a ten {0}',
    future: 'di li {0}',
  ),
);
