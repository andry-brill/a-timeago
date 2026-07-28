import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'bg'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'преди 1 секунда',
    current: 'сега',
    future: 'след 1 секунда',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'bg';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'сега',
        past: TimeAgoPluralLabels(
            one: 'преди {0} секунда', other: 'преди {0} секунди'),
        future: TimeAgoPluralLabels(
            one: 'след {0} секунда', other: 'след {0} секунди')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'в тази минута',
        past: TimeAgoPluralLabels(
            one: 'преди {0} минута', other: 'преди {0} минути'),
        future: TimeAgoPluralLabels(
            one: 'след {0} минута', other: 'след {0} минути')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'в този час',
        past:
            TimeAgoPluralLabels(one: 'преди {0} час', other: 'преди {0} часа'),
        future:
            TimeAgoPluralLabels(one: 'след {0} час', other: 'след {0} часа')),
    day: TimeAgoRelativeUnitLabels(
        current: 'днес',
        past: TimeAgoPluralLabels(one: 'преди {0} ден', other: 'преди {0} дни'),
        future:
            TimeAgoPluralLabels(one: 'след {0} ден', other: 'след {0} дни')),
    week: TimeAgoRelativeUnitLabels(
        current: 'тази седмица',
        past: TimeAgoPluralLabels(
            one: 'преди {0} седмица', other: 'преди {0} седмици'),
        future: TimeAgoPluralLabels(
            one: 'след {0} седмица', other: 'след {0} седмици')),
    month: TimeAgoRelativeUnitLabels(
        current: 'този месец',
        past: TimeAgoPluralLabels(
            one: 'преди {0} месец', other: 'преди {0} месеца'),
        future: TimeAgoPluralLabels(
            one: 'след {0} месец', other: 'след {0} месеца')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'това тримесечие',
        past: TimeAgoPluralLabels(
            one: 'преди {0} тримесечие', other: 'преди {0} тримесечия'),
        future: TimeAgoPluralLabels(
            one: 'след {0} тримесечие', other: 'след {0} тримесечия')),
    year: TimeAgoRelativeUnitLabels(
        current: 'тази година',
        past: TimeAgoPluralLabels(
            one: 'преди {0} година', other: 'преди {0} години'),
        future: TimeAgoPluralLabels(
            one: 'след {0} година', other: 'след {0} години')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} секунда', other: '{0} секунди'),
    minute: TimeAgoPluralLabels(one: '{0} минута', other: '{0} минути'),
    hour: TimeAgoPluralLabels(one: '{0} час', other: '{0} часа'),
    day: TimeAgoPluralLabels(one: '{0} ден', other: '{0} дни'),
    week: TimeAgoPluralLabels(one: '{0} седмица', other: '{0} седмици'),
    month: TimeAgoPluralLabels(one: '{0} месец', other: '{0} месеца'),
    quarter:
        TimeAgoPluralLabels(one: '{0} тримесечие', other: '{0} тримесечия'),
    year: TimeAgoPluralLabels(one: '{0} година', other: '{0} години'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'преди {0}',
    future: 'след {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сега', past: 'преди {0} сек', future: 'след {0} сек'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'в тази минута',
        past: 'преди {0} мин',
        future: 'след {0} мин'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'в този час', past: 'преди {0} ч', future: 'след {0} ч'),
    day: TimeAgoRelativeUnitLabels(
        current: 'днес',
        past: TimeAgoPluralLabels(one: 'преди {0} ден', other: 'преди {0} дни'),
        future:
            TimeAgoPluralLabels(one: 'след {0} ден', other: 'след {0} дни')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'тази седм.',
        past: 'преди {0} седм.',
        future: 'след {0} седм.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'този мес.', past: 'преди {0} м.', future: 'след {0} м.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'това трим.',
        past: 'преди {0} трим.',
        future: 'след {0} трим.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'т. г.', past: 'преди {0} г.', future: 'след {0} г.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек'),
    minute: TimeAgoPluralLabels.same('{0} мин'),
    hour: TimeAgoPluralLabels.same('{0} ч'),
    day: TimeAgoPluralLabels(one: '{0} ден', other: '{0} дни'),
    week: TimeAgoPluralLabels.same('{0} седм.'),
    month: TimeAgoPluralLabels.same('{0} м.'),
    quarter: TimeAgoPluralLabels.same('{0} трим.'),
    year: TimeAgoPluralLabels.same('{0} г.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'преди {0}',
    future: 'след {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'сега', past: 'пр. {0} сек', future: 'сл. {0} сек'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'в тази минута', past: 'пр. {0} мин', future: 'сл. {0} мин'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'в този час', past: 'пр. {0} ч', future: 'сл. {0} ч'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'днес', past: 'пр. {0} д', future: 'сл. {0} д'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'тази седм.', past: 'пр. {0} седм.', future: 'сл. {0} седм.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'т. м.', past: 'пр. {0} м.', future: 'сл. {0} м.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'това трим.', past: 'пр. {0} трим.', future: 'сл. {0} трим.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'т. г.', past: 'пр. {0} г.', future: 'сл. {0} г.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек'),
    minute: TimeAgoPluralLabels.same('{0} мин'),
    hour: TimeAgoPluralLabels.same('{0} ч'),
    day: TimeAgoPluralLabels.same('{0} д'),
    week: TimeAgoPluralLabels.same('{0} седм.'),
    month: TimeAgoPluralLabels.same('{0} м.'),
    quarter: TimeAgoPluralLabels.same('{0} трим.'),
    year: TimeAgoPluralLabels.same('{0} г.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'пр. {0}',
    future: 'сл. {0}',
  ),
);
