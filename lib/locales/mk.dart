import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'mk'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'пред 1 секунда',
    current: 'сега',
    future: 'за 1 секунда',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'mk';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'сега',
        past: TimeAgoPluralLabels(
            one: 'пред {0} секунда', other: 'пред {0} секунди'),
        future: TimeAgoPluralLabels(
            one: 'за {0} секунда', other: 'за {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'оваа минута',
        past: TimeAgoPluralLabels(
            one: 'пред {0} минута', other: 'пред {0} минути'),
        future:
            TimeAgoPluralLabels(one: 'за {0} минута', other: 'за {0} минути')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овој час',
        past: TimeAgoPluralLabels(one: 'пред {0} час', other: 'пред {0} часа'),
        future: TimeAgoPluralLabels(one: 'за {0} час', other: 'за {0} часа')),
    day: TimeAgoRelativeUnitLabels(
        current: 'денес',
        past: TimeAgoPluralLabels(one: 'пред {0} ден', other: 'пред {0} дена'),
        future: TimeAgoPluralLabels(one: 'за {0} ден', other: 'за {0} дена')),
    week: TimeAgoRelativeUnitLabels(
        current: 'оваа седмица',
        past: TimeAgoPluralLabels(
            one: 'пред {0} седмица', other: 'пред {0} седмици'),
        future: TimeAgoPluralLabels(
            one: 'за {0} седмица', other: 'за {0} седмици')),
    month: TimeAgoRelativeUnitLabels(
        current: 'овој месец',
        past: TimeAgoPluralLabels(
            one: 'пред {0} месец', other: 'пред {0} месеци'),
        future:
            TimeAgoPluralLabels(one: 'за {0} месец', other: 'за {0} месеци')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ова тримесечје',
        past: TimeAgoPluralLabels(
            one: 'пред {0} тримесечје', other: 'пред {0} тримесечја'),
        future: TimeAgoPluralLabels(
            one: 'за {0} тримесечје', other: 'за {0} тримесечја')),
    year: TimeAgoRelativeUnitLabels(
        current: 'оваа година',
        past: TimeAgoPluralLabels(
            one: 'пред {0} година', other: 'пред {0} години'),
        future:
            TimeAgoPluralLabels(one: 'за {0} година', other: 'за {0} години')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} секунда', other: '{0} секунди'),
    minute: TimeAgoPluralLabels(one: '{0} минута', other: '{0} минути'),
    hour: TimeAgoPluralLabels(one: '{0} час', other: '{0} часа'),
    day: TimeAgoPluralLabels(one: '{0} ден', other: '{0} дена'),
    week: TimeAgoPluralLabels(one: '{0} седмица', other: '{0} седмици'),
    month: TimeAgoPluralLabels(one: '{0} месец', other: '{0} месеци'),
    quarter:
        TimeAgoPluralLabels(one: '{0} тримесечје', other: '{0} тримесечја'),
    year: TimeAgoPluralLabels(one: '{0} година', other: '{0} години'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'пред {0}',
    future: 'за {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сега', past: 'пред {0} сек.', future: 'за {0} сек.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'оваа минута', past: 'пред {0} мин.', future: 'за {0} мин.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овој час',
        past: TimeAgoPluralLabels(one: 'пред {0} час', other: 'пред {0} часа'),
        future: TimeAgoPluralLabels(one: 'за {0} час', other: 'за {0} часа')),
    day: TimeAgoRelativeUnitLabels(
        current: 'денес',
        past: TimeAgoPluralLabels(one: 'пред {0} ден', other: 'пред {0} дена'),
        future: TimeAgoPluralLabels(one: 'за {0} ден', other: 'за {0} дена')),
    week: TimeAgoRelativeUnitLabels(
        current: 'оваа седмица',
        past: TimeAgoPluralLabels(
            one: 'пред {0} седмица', other: 'пред {0} седмици'),
        future: TimeAgoPluralLabels(
            one: 'за {0} седмица', other: 'за {0} седмици')),
    month: TimeAgoRelativeUnitLabels(
        current: 'овој месец',
        past: TimeAgoPluralLabels(
            one: 'пред {0} месец', other: 'пред {0} месеци'),
        future:
            TimeAgoPluralLabels(one: 'за {0} месец', other: 'за {0} месеци')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ова тримесечје',
        past: 'пред {0} тримес.',
        future: 'за {0} тримес.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'оваа год.', past: 'пред {0} год.', future: 'за {0} год.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels(one: '{0} час', other: '{0} часа'),
    day: TimeAgoPluralLabels(one: '{0} ден', other: '{0} дена'),
    week: TimeAgoPluralLabels(one: '{0} седмица', other: '{0} седмици'),
    month: TimeAgoPluralLabels(one: '{0} месец', other: '{0} месеци'),
    quarter: TimeAgoPluralLabels.same('{0} тримес.'),
    year: TimeAgoPluralLabels.same('{0} год.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'пред {0}',
    future: 'за {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сега', past: 'пред {0} сек.', future: 'за {0} сек.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'оваа минута', past: 'пред {0} мин.', future: 'за {0} мин.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'овој час',
        past: TimeAgoPluralLabels(one: 'пред {0} час', other: 'пред {0} часа'),
        future: TimeAgoPluralLabels(one: 'за {0} час', other: 'за {0} часа')),
    day: TimeAgoRelativeUnitLabels(
        current: 'денес',
        past: TimeAgoPluralLabels(one: 'пред {0} ден', other: 'пред {0} дена'),
        future: TimeAgoPluralLabels(one: 'за {0} ден', other: 'за {0} дена')),
    week: TimeAgoRelativeUnitLabels(
        current: 'оваа седмица',
        past: TimeAgoPluralLabels(
            one: 'пред {0} седмица', other: 'пред {0} седмици'),
        future: TimeAgoPluralLabels(
            one: 'за {0} седмица', other: 'за {0} седмици')),
    month: TimeAgoRelativeUnitLabels(
        current: 'овој месец',
        past: TimeAgoPluralLabels(
            one: 'пред {0} месец', other: 'пред {0} месеци'),
        future:
            TimeAgoPluralLabels(one: 'за {0} месец', other: 'за {0} месеци')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ова тримесечје',
        past: 'пред {0} тримес.',
        future: 'за {0} тримес.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'оваа год.', past: 'пред {0} год.', future: 'за {0} год.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels(one: '{0} час', other: '{0} часа'),
    day: TimeAgoPluralLabels(one: '{0} ден', other: '{0} дена'),
    week: TimeAgoPluralLabels(one: '{0} седмица', other: '{0} седмици'),
    month: TimeAgoPluralLabels(one: '{0} месец', other: '{0} месеци'),
    quarter: TimeAgoPluralLabels.same('{0} тримес.'),
    year: TimeAgoPluralLabels.same('{0} год.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'пред {0}',
    future: 'за {0}',
  ),
);
