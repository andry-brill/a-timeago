import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sc'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 segundu a como',
    current: 'como',
    future: 'intro de 1 segundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sc';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'como',
        past: TimeAgoPluralLabels(
            one: '{0} segundu a como', other: '{0} segundos a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} segundu', other: 'intro de {0} segundos')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'custu minutu',
        past: TimeAgoPluralLabels(
            one: '{0} minutu a como', other: '{0} minutos a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} minutu', other: 'intro de {0} minutos')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'cust’ora',
        past: TimeAgoPluralLabels(
            one: '{0} ora a como', other: '{0} oras a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} ora', other: 'intro de {0} oras')),
    day: TimeAgoRelativeUnitLabels(
        current: 'oe',
        past: TimeAgoPluralLabels(
            one: '{0} die a como', other: '{0} dies a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} die', other: 'intro de {0} dies')),
    week: TimeAgoRelativeUnitLabels(
        current: 'custa chida',
        past: TimeAgoPluralLabels(
            one: '{0} chida a como', other: '{0} chidas a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} chida', other: 'intro de {0} chidas')),
    month: TimeAgoRelativeUnitLabels(
        current: 'custu mese',
        past: TimeAgoPluralLabels(
            one: '{0} mese a como', other: '{0} meses a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} mese', other: 'intro de {0} meses')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'custu trimestre',
        past: TimeAgoPluralLabels(
            one: '{0} trimestre a como', other: '{0} trimestres a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} trimestre', other: 'intro de {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ocannu',
        past: TimeAgoPluralLabels(
            one: '{0} annu a como', other: '{0} annos a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} annu', other: 'intro de {0} annos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segundu', other: '{0} segundos'),
    minute: TimeAgoPluralLabels(one: '{0} minutu', other: '{0} minutos'),
    hour: TimeAgoPluralLabels(one: '{0} ora', other: '{0} oras'),
    day: TimeAgoPluralLabels(one: '{0} die', other: '{0} dies'),
    week: TimeAgoPluralLabels(one: '{0} chida', other: '{0} chidas'),
    month: TimeAgoPluralLabels(one: '{0} mese', other: '{0} meses'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trimestres'),
    year: TimeAgoPluralLabels(one: '{0} annu', other: '{0} annos'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} a como',
    future: 'intro de {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'como', past: '{0} seg. a como', future: 'intro de {0} seg.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'custu minutu',
        past: '{0} min. a como',
        future: 'intro de {0} min.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'cust’ora',
        past: TimeAgoPluralLabels(
            one: '{0} ora a como', other: '{0} oras a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} ora', other: 'intro de {0} oras')),
    day: TimeAgoRelativeUnitLabels(
        current: 'oe',
        past: TimeAgoPluralLabels(
            one: '{0} die a como', other: '{0} dies a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} die', other: 'intro de {0} dies')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'custa chida',
        past: '{0} ch. a como',
        future: 'intro de {0} ch.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'custu mese',
        past: TimeAgoPluralLabels(
            one: '{0} mese a como', other: '{0} meses a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} mese', other: 'intro de {0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'custu trim.',
        past: '{0} trim. a como',
        future: 'intro de {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ocannu',
        past: TimeAgoPluralLabels(
            one: '{0} annu a como', other: '{0} annos a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} annu', other: 'intro de {0} annos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} seg.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} ora', other: '{0} oras'),
    day: TimeAgoPluralLabels(one: '{0} die', other: '{0} dies'),
    week: TimeAgoPluralLabels.same('{0} ch.'),
    month: TimeAgoPluralLabels(one: '{0} mese', other: '{0} meses'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} annu', other: '{0} annos'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} a como',
    future: 'intro de {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'como', past: '{0} s a como', future: 'intro de {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'custu minutu',
        past: '{0} m a como',
        future: 'intro de {0} m'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'cust’ora', past: '{0} o a como', future: 'intro de {0} o'),
    day: TimeAgoRelativeUnitLabels(
        current: 'oe',
        past: TimeAgoPluralLabels(
            one: '{0} die a como', other: '{0} dies a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} die', other: 'intro de {0} dies')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'custa chida',
        past: '{0} ch. a como',
        future: 'intro de {0} ch.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'custu mese',
        past: TimeAgoPluralLabels(
            one: '{0} mese a como', other: '{0} meses a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} mese', other: 'intro de {0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'custu trim.',
        past: '{0} trim. a como',
        future: 'intro de {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ocannu',
        past: TimeAgoPluralLabels(
            one: '{0} annu a como', other: '{0} annos a como'),
        future: TimeAgoPluralLabels(
            one: 'intro de {0} annu', other: 'intro de {0} annos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} o'),
    day: TimeAgoPluralLabels(one: '{0} die', other: '{0} dies'),
    week: TimeAgoPluralLabels.same('{0} ch.'),
    month: TimeAgoPluralLabels(one: '{0} mese', other: '{0} meses'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} annu', other: '{0} annos'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} a como',
    future: 'intro de {0}',
  ),
);
