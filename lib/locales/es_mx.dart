import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/es.dart' as es;
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'es', countryCode: 'MX'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'hace 1 segundo',
    current: 'ahora',
    future: 'dentro de 1 segundo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'es_MX';

/// Ten-year unit shared with the reviewed Spanish CLDR labels.
const TimeAgoStep decade = es.decade;

/// Hundred-year unit shared with the reviewed Spanish CLDR labels.
const TimeAgoStep century = es.century;

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ahora',
        past: TimeAgoPluralLabels(
            one: 'hace {0} segundo', other: 'hace {0} segundos'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} segundo', other: 'dentro de {0} segundos')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'este minuto',
        past: TimeAgoPluralLabels(
            one: 'hace {0} minuto', other: 'hace {0} minutos'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} minuto', other: 'dentro de {0} minutos')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'esta hora',
        past:
            TimeAgoPluralLabels(one: 'hace {0} hora', other: 'hace {0} horas'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} hora', other: 'dentro de {0} horas')),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoy',
        past: TimeAgoPluralLabels(one: 'hace {0} día', other: 'hace {0} días'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} día', other: 'dentro de {0} días')),
    week: TimeAgoRelativeUnitLabels(
        current: 'esta semana',
        past: TimeAgoPluralLabels(
            one: 'hace {0} semana', other: 'hace {0} semanas'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} semana', other: 'dentro de {0} semanas')),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mes',
        past: TimeAgoPluralLabels(one: 'hace {0} mes', other: 'hace {0} meses'),
        future: TimeAgoPluralLabels(one: 'en {0} mes', other: 'en {0} meses')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'este trimestre',
        past: TimeAgoPluralLabels(
            one: 'hace {0} trimestre', other: 'hace {0} trimestres'),
        future: TimeAgoPluralLabels(
            one: 'en {0} trimestre', other: 'dentro de {0} trimetres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'este año',
        past: TimeAgoPluralLabels(one: 'hace {0} año', other: 'hace {0} años'),
        future: TimeAgoPluralLabels(
            one: 'dentro de {0} año', other: 'dentro de {0} años')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segundo', other: '{0} segundos'),
    minute: TimeAgoPluralLabels(one: '{0} minuto', other: '{0} minutos'),
    hour: TimeAgoPluralLabels(one: '{0} hora', other: '{0} horas'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} días'),
    week: TimeAgoPluralLabels(one: '{0} semana', other: '{0} semanas'),
    month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} meses'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trime'),
    year: TimeAgoPluralLabels(one: '{0} año', other: '{0} años'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'hace {0}',
    future: 'dentro de {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ahora', past: 'hace {0} s', future: 'en {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'este minuto',
        past: 'hace {0} min',
        future: 'dentro de {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: 'hace {0} h', future: 'en {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoy',
        past: TimeAgoPluralLabels(one: 'hace {0} día', other: 'hace {0} días'),
        future: TimeAgoPluralLabels(one: 'en {0} día', other: 'en {0} días')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta sem.', past: 'hace {0} sem.', future: 'en {0} sem.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'este mes', past: 'hace {0} m', future: 'en {0} m'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'este trimestre',
        past: TimeAgoPluralLabels.same('hace {0} trim.'),
        future: TimeAgoPluralLabels(one: 'en {0} trim.', other: 'en {0} trim')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'este año', past: 'hace {0} a', future: 'en {0} a'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} días'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels(one: '{0} trim.', other: '{0} trim'),
    year: TimeAgoPluralLabels.same('{0} a'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'hace {0}',
    future: 'en {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ahora', past: 'hace {0} s', future: 'en {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'este minuto',
        past: 'hace {0} min',
        future: 'dentro de {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: 'hace {0} h', future: 'en {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoy',
        past: TimeAgoPluralLabels(one: 'hace {0} día', other: 'hace {0} días'),
        future: TimeAgoPluralLabels(one: 'en {0} día', other: 'en {0} días')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta sem.', past: 'hace {0} sem.', future: 'en {0} sem.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'este mes', past: 'hace {0} m', future: 'en {0} m'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'este trimestre',
        past: 'hace {0} trim.',
        future: 'en {0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'este año', past: 'hace {0} a', future: 'en {0} a'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} días'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels.same('{0} m'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} a'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'hace {0}',
    future: 'en {0}',
  ),
);
