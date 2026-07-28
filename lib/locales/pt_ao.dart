import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/pt.dart' as pt;
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'pt', countryCode: 'AO'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'há 1 segundo',
    current: 'agora',
    future: 'dentro de 1 segundo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'pt_AO';

/// Ten-year unit shared with the reviewed Portuguese CLDR labels.
const TimeAgoStep decade = pt.decade;

/// Hundred-year unit shared with the reviewed Portuguese CLDR labels.
const TimeAgoStep century = pt.century;

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'agora',
        past: TimeAgoPluralLabels(
            one: 'há {0} segundo', other: 'há {0} segundos'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} segundo', other: 'dentro de {0} segundos')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'este minuto',
        past:
            TimeAgoPluralLabels(one: 'há {0} minuto', other: 'há {0} minutos'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} minuto', other: 'dentro de {0} minutos')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'esta hora',
        past: TimeAgoPluralLabels(one: 'há {0} hora', other: 'há {0} horas'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} hora', other: 'dentro de {0} horas')),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoje',
        past: TimeAgoPluralLabels(one: 'há {0} dia', other: 'há {0} dias'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} dia', other: 'dentro de {0} dias')),
    week: TimeAgoRelativeUnitLabels(
        current: 'esta semana',
        past:
            TimeAgoPluralLabels(one: 'há {0} semana', other: 'há {0} semanas'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} semana', other: 'dentro de {0} semanas')),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mês',
        past: TimeAgoPluralLabels(one: 'há {0} mês', other: 'há {0} meses'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} mês', other: 'dentro de {0} meses')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'este trimestre',
        past: TimeAgoPluralLabels(
            one: 'há {0} trimestre', other: 'há {0} trimestres'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} trimestre', other: 'dentro de {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: 'há {0} ano', other: 'há {0} anos'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} ano', other: 'dentro de {0} anos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segundo', other: '{0} segundos'),
    minute: TimeAgoPluralLabels(one: '{0} minuto', other: '{0} minutos'),
    hour: TimeAgoPluralLabels(one: '{0} hora', other: '{0} horas'),
    day: TimeAgoPluralLabels(one: '{0} dia', other: '{0} dias'),
    week: TimeAgoPluralLabels(one: '{0} semana', other: '{0} semanas'),
    month: TimeAgoPluralLabels(one: '{0} mês', other: '{0} meses'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trimestres'),
    year: TimeAgoPluralLabels(one: '{0} ano', other: '{0} anos'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'há {0}',
    future: 'dentro de {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora', past: 'há {0} s', future: 'dentro de {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'este minuto',
        past: 'há {0} min',
        future: 'dentro de {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: 'há {0} h', future: 'dentro de {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoje',
        past: TimeAgoPluralLabels(one: 'há {0} dia', other: 'há {0} dias'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} dia', other: 'dentro de {0} dias')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta semana',
        past: 'há {0} sem.',
        future: 'dentro de {0} sem.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mês',
        past: TimeAgoPluralLabels(one: 'há {0} mês', other: 'há {0} meses'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} mês', other: 'dentro de {0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'este trim.',
        past: 'há {0} trim.',
        future: 'dentro de {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: 'há {0} ano', other: 'há {0} anos'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} ano', other: 'dentro de {0} anos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} dia', other: '{0} dias'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels(one: '{0} mês', other: '{0} meses'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} ano', other: '{0} anos'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'há {0}',
    future: 'dentro de {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'este minuto', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoje',
        past: TimeAgoPluralLabels(one: '-{0} dia', other: '-{0} dias'),
        future: TimeAgoPluralLabels(one: '+{0} dia', other: '+{0} dias')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta semana', past: '-{0} sem.', future: '+{0} sem.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mês',
        past: TimeAgoPluralLabels(one: '-{0} mês', other: '-{0} meses'),
        future: TimeAgoPluralLabels(one: '+{0} mês', other: '+{0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'este trim.', past: '-{0} trim.', future: '+{0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: '-{0} ano', other: '-{0} anos'),
        future: TimeAgoPluralLabels(one: '+{0} ano', other: '+{0} anos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} dia', other: '{0} dias'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels(one: '{0} mês', other: '{0} meses'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} ano', other: '{0} anos'),
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
