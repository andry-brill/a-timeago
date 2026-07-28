import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'uz'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 soniya oldin',
    current: 'hozir',
    future: '1 soniyadan keyin',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'uz';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'hozir',
        past: '{0} soniya oldin',
        future: '{0} soniyadan keyin'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'shu daqiqada',
        past: '{0} daqiqa oldin',
        future: '{0} daqiqadan keyin'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'shu soatda',
        past: '{0} soat oldin',
        future: '{0} soatdan keyin'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bugun', past: '{0} kun oldin', future: '{0} kundan keyin'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'shu hafta',
        past: '{0} hafta oldin',
        future: '{0} haftadan keyin'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'shu oy', past: '{0} oy oldin', future: '{0} oydan keyin'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'shu chorak',
        past: '{0} chorak oldin',
        future: '{0} chorakdan keyin'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'shu yil', past: '{0} yil oldin', future: '{0} yildan keyin'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} soniya'),
    minute: TimeAgoPluralLabels.same('{0} daqiqa'),
    hour: TimeAgoPluralLabels.same('{0} soat'),
    day: TimeAgoPluralLabels.same('{0} kun'),
    week: TimeAgoPluralLabels.same('{0} hafta'),
    month: TimeAgoPluralLabels.same('{0} oy'),
    quarter: TimeAgoPluralLabels.same('{0} chorak'),
    year: TimeAgoPluralLabels.same('{0} yil'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} oldin',
    future: '{0}dan keyin',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'hozir',
        past: '{0} soniya oldin',
        future: '{0} soniyadan keyin'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'shu daqiqada',
        past: '{0} daqiqa oldin',
        future: '{0} daqiqadan keyin'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'shu soatda',
        past: '{0} soat oldin',
        future: '{0} soatdan keyin'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bugun', past: '{0} kun oldin', future: '{0} kundan keyin'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu hafta',
        past: '{0} hafta oldin',
        future: '{0} haftadan keyin'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu oy', past: '{0} oy oldin', future: '{0} oydan keyin'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'shu chorak',
        past: '{0} chorak oldin',
        future: '{0} chorakdan keyin'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu yil', past: '{0} yil oldin', future: '{0} yildan keyin'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} soniya'),
    minute: TimeAgoPluralLabels.same('{0} daqiqa'),
    hour: TimeAgoPluralLabels.same('{0} soat'),
    day: TimeAgoPluralLabels.same('{0} kun'),
    week: TimeAgoPluralLabels.same('{0} hafta'),
    month: TimeAgoPluralLabels.same('{0} oy'),
    quarter: TimeAgoPluralLabels.same('{0} chorak'),
    year: TimeAgoPluralLabels.same('{0} yil'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} oldin',
    future: '{0}dan keyin',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'hozir',
        past: '{0} soniya oldin',
        future: '{0} soniyadan keyin'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'shu daqiqada',
        past: '{0} daqiqa oldin',
        future: '{0} daqiqadan keyin'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'shu soatda',
        past: '{0} soat oldin',
        future: '{0} soatdan keyin'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bugun', past: '{0} kun oldin', future: '{0} kundan keyin'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu hafta',
        past: '{0} hafta oldin',
        future: '{0} haftadan keyin'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu oy', past: '{0} oy oldin', future: '{0} oydan keyin'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'shu chorak',
        past: '{0} chorak oldin',
        future: '{0} chorakdan keyin'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu yil', past: '{0} yil oldin', future: '{0} yildan keyin'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} soniya'),
    minute: TimeAgoPluralLabels.same('{0} daqiqa'),
    hour: TimeAgoPluralLabels.same('{0} soat'),
    day: TimeAgoPluralLabels.same('{0} kun'),
    week: TimeAgoPluralLabels.same('{0} hafta'),
    month: TimeAgoPluralLabels.same('{0} oy'),
    quarter: TimeAgoPluralLabels.same('{0} chorak'),
    year: TimeAgoPluralLabels.same('{0} yil'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} oldin',
    future: '{0}dan keyin',
  ),
);
