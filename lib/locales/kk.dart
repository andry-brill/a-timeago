import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kk'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 секунд бұрын',
    current: 'қазір',
    future: '1 секундтан кейін',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kk';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'қазір',
        past: '{0} секунд бұрын',
        future: '{0} секундтан кейін'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'осы минут',
        past: '{0} минут бұрын',
        future: '{0} минуттан кейін'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'осы сағат',
        past: '{0} сағат бұрын',
        future: '{0} сағаттан кейін'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бүгін', past: '{0} күн бұрын', future: '{0} күннен кейін'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'осы апта',
        past: '{0} апта бұрын',
        future: '{0} аптадан кейін'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'осы ай', past: '{0} ай бұрын', future: '{0} айдан кейін'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'осы тоқсан',
        past: '{0} тоқсан бұрын',
        future: '{0} тоқсаннан кейін'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'биылғы жыл',
        past: '{0} жыл бұрын',
        future: '{0} жылдан кейін'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} секунд'),
    minute: TimeAgoPluralLabels.same('{0} минут'),
    hour: TimeAgoPluralLabels.same('{0} сағат'),
    day: TimeAgoPluralLabels.same('{0} күн'),
    week: TimeAgoPluralLabels.same('{0} апта'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} тоқсан'),
    year: TimeAgoPluralLabels.same('{0} жыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} бұрын',
    future: '{0}тан кейін',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'қазір', past: '{0} сек. бұрын', future: '{0} сек. кейін'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'осы минут', past: '{0} мин. бұрын', future: '{0} мин. кейін'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'осы сағат', past: '{0} сағ. бұрын', future: '{0} сағ. кейін'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бүгін', past: '{0} күн бұрын', future: '{0} күннен кейін'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'осы апта', past: '{0} ап. бұрын', future: '{0} ап. кейін'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'осы ай', past: '{0} ай бұрын', future: '{0} айдан кейін'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'осы тоқсан',
        past: '{0} тқс. бұрын',
        future: '{0} тқс. кейін'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'биылғы жыл', past: '{0} ж. бұрын', future: '{0} ж. кейін'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мин.'),
    hour: TimeAgoPluralLabels.same('{0} сағ.'),
    day: TimeAgoPluralLabels.same('{0} күн'),
    week: TimeAgoPluralLabels.same('{0} ап.'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} тқс.'),
    year: TimeAgoPluralLabels.same('{0} ж.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} бұрын',
    future: '{0} кейін',
  ),
);
