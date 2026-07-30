import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'om'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'kaleessa',
    today: 'har’a',
    tomorrow: 'boru',
    dateTime: '{1} {0} tti',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'sekoondii 1 darbe',
    current: 'amma',
    future: 'sekoondii 1 keessatti',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'om';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'amma',
        past: TimeAgoPluralLabels(
            one: 'sekoondii {0} darbe', other: 'sekoondiiwwan {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'sekoondii {0} keessatti',
            other: 'sekoondiiwwan {0} keessatti')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: 'daqiiqaa {0} darbe', other: 'daqiiqaawwan {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'daqiiqaa {0} keessatti',
            other: 'daqiiqaawwan {0} keessatti')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'sa’aatii kana',
        past: TimeAgoPluralLabels(
            one: 'sa’aatii {0} darbe', other: 'sa’aatiiwwan {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'sa’aatii {0} keessatti',
            other: 'sa’aatiiwwan {0} keessatti')),
    day: TimeAgoRelativeUnitLabels(
        current: 'har’a',
        past: TimeAgoPluralLabels(
            one: 'guyyaa {0} darbe', other: 'guyyoota {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'guyyaa {0} keessatti', other: 'guyyoota {0} keessatti')),
    week: TimeAgoRelativeUnitLabels(
        current: 'torbee kana',
        past: TimeAgoPluralLabels(
            one: 'torbee {0} darbe', other: 'torbanoota {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'torbee {0} keessatti', other: 'torbanoota {0} keessatti')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ji’a kana',
        past: TimeAgoPluralLabels(
            one: 'ji’a {0} darbe', other: 'ji’oota {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'ji’a {0} keessatti', other: 'ji’oota {0} keessatti')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'kurmaana kana',
        past: TimeAgoPluralLabels(
            one: 'kurmaana {0} darbe', other: 'kurmaanota {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'kurmaana {0} keessatti', other: 'kurmaanota {0} keessatti')),
    year: TimeAgoRelativeUnitLabels(
        current: 'waggaa kana',
        past: TimeAgoPluralLabels(
            one: 'waggaa {0} dura', other: 'waggoota {0} dura'),
        future: TimeAgoPluralLabels(
            one: 'waggaa {0} keessatti', other: 'waggoota {0} keessatti')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekoondiiwwan {0} darban'),
    minute: TimeAgoPluralLabels.same('daqiiqaawwan {0} darban'),
    hour: TimeAgoPluralLabels.same('sa’aatiiwwan {0} darban'),
    day: TimeAgoPluralLabels.same('guyyoota {0} darban'),
    week: TimeAgoPluralLabels.same('torbanoota {0} darban'),
    month: TimeAgoPluralLabels.same('ji’oota {0} darban'),
    quarter: TimeAgoPluralLabels.same('kurmaanota {0} darban'),
    year: TimeAgoPluralLabels.same('waggoota {0} dura'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'amma', past: 'sek. {0} darbe', future: 'sek. {0} keessatti'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'daqiiqaa kana',
        past: 'daq. {0} darbe',
        future: 'daq. {0} keessatti'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'sa’aatii kana',
        past: 'sa. {0} darbe',
        future: 'sa. {0} keessatti'),
    day: TimeAgoRelativeUnitLabels(
        current: 'har’a',
        past: TimeAgoPluralLabels(
            one: 'guyyaa {0} darbe', other: 'guyyoota {0} darban'),
        future: TimeAgoPluralLabels(
            one: 'guyyaa {0} keessatti', other: 'guyyoota {0} keessatti')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tr. kana',
        past: 'tr. {0} darbe',
        future: 'tr. {0} keessatti'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ji. kana',
        past: 'ji. {0} darbe',
        future: 'ji. {0} keessatti'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kr. kana',
        past: 'kr. {0} darbe',
        future: 'kr. {0} keessatti'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'wg. kana', past: 'wg. {0} dura', future: 'wg. {0} keessatti'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sek. {0} darbe'),
    minute: TimeAgoPluralLabels.same('daq. {0} darbe'),
    hour: TimeAgoPluralLabels.same('sa. {0} darbe'),
    day: TimeAgoPluralLabels.same('guyyoota {0} darban'),
    week: TimeAgoPluralLabels.same('tr. {0} darbe'),
    month: TimeAgoPluralLabels.same('ji. {0} darbe'),
    quarter: TimeAgoPluralLabels.same('kr. {0} darbe'),
    year: TimeAgoPluralLabels.same('wg. {0} dura'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'amma', past: 's {0} darbe', future: 's {0} keessatti'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'daqiiqaa kana',
        past: 'd {0} darbe',
        future: 'd {0} keessatti'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'sa’aatii kana',
        past: 'h {0} darbe',
        future: 'h {0} keessatti'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'har’a', past: 'g {0} darbe', future: 'g {0} keessatti'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tr. kana', past: 'w {0} darbe', future: 'w {0} keessatti'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ji. kana', past: 'ji {0} darbe', future: 'ji {0} keessatti'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'q kana', past: 'q {0} darbe', future: 'q {0} keessatti'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'wg. kana', past: 'w {0} dura', future: 'w {0} keessatti'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('s {0} darbe'),
    minute: TimeAgoPluralLabels.same('d {0} darbe'),
    hour: TimeAgoPluralLabels.same('h {0} darbe'),
    day: TimeAgoPluralLabels.same('g {0} darbe'),
    week: TimeAgoPluralLabels.same('w {0} darbe'),
    month: TimeAgoPluralLabels.same('ji {0} darbe'),
    quarter: TimeAgoPluralLabels.same('q {0} darbe'),
    year: TimeAgoPluralLabels.same('w {0} dura'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);
