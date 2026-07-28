import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'gl'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'hai 1 segundo',
    current: 'agora',
    future: 'en 1 segundo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'gl';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'agora',
        past: TimeAgoPluralLabels(
            one: 'hai {0} segundo', other: 'hai {0} segundos'),
        future: TimeAgoPluralLabels(
            one: 'en {0} segundo', other: 'en {0} segundos')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'este minuto',
        past: TimeAgoPluralLabels(
            one: 'hai {0} minuto', other: 'hai {0} minutos'),
        future:
            TimeAgoPluralLabels(one: 'en {0} minuto', other: 'en {0} minutos')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'esta hora',
        past: TimeAgoPluralLabels(one: 'hai {0} hora', other: 'hai {0} horas'),
        future: TimeAgoPluralLabels(one: 'en {0} hora', other: 'en {0} horas')),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoxe',
        past: TimeAgoPluralLabels(one: 'hai {0} día', other: 'hai {0} días'),
        future: TimeAgoPluralLabels(one: 'en {0} día', other: 'en {0} días')),
    week: TimeAgoRelativeUnitLabels(
        current: 'esta semana',
        past: TimeAgoPluralLabels(
            one: 'hai {0} semana', other: 'hai {0} semanas'),
        future:
            TimeAgoPluralLabels(one: 'en {0} semana', other: 'en {0} semanas')),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mes',
        past: TimeAgoPluralLabels(one: 'hai {0} mes', other: 'hai {0} meses'),
        future: TimeAgoPluralLabels(one: 'en {0} mes', other: 'en {0} meses')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'este trimestre',
        past: TimeAgoPluralLabels(
            one: 'hai {0} trimestre', other: 'hai {0} trimestres'),
        future: TimeAgoPluralLabels(
            one: 'en {0} trimestre', other: 'en {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: 'hai {0} ano', other: 'hai {0} anos'),
        future: TimeAgoPluralLabels(one: 'en {0} ano', other: 'en {0} anos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segundo', other: '{0} segundos'),
    minute: TimeAgoPluralLabels(one: '{0} minuto', other: '{0} minutos'),
    hour: TimeAgoPluralLabels(one: '{0} hora', other: '{0} horas'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} días'),
    week: TimeAgoPluralLabels(one: '{0} semana', other: '{0} semanas'),
    month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} meses'),
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
    past: 'hai {0}',
    future: 'en {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora', past: 'hai {0} s', future: 'en {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'este minuto', past: 'hai {0} min', future: 'en {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: 'hai {0} h', future: 'en {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoxe',
        past: TimeAgoPluralLabels(one: 'hai {0} día', other: 'hai {0} días'),
        future: TimeAgoPluralLabels(one: 'en {0} día', other: 'en {0} días')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta sem.', past: 'hai {0} sem.', future: 'en {0} sem.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mes',
        past: TimeAgoPluralLabels(one: 'hai {0} mes', other: 'hai {0} meses'),
        future: TimeAgoPluralLabels(one: 'en {0} mes', other: 'en {0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'este trim.', past: 'hai {0} trim.', future: 'en {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: 'hai {0} ano', other: 'hai {0} anos'),
        future: TimeAgoPluralLabels(one: 'en {0} ano', other: 'en {0} anos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} días'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} meses'),
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
    past: 'hai {0}',
    future: 'en {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora', past: 'hai {0} s', future: 'en {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'este minuto', past: 'hai {0} min', future: 'en {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: 'hai {0} h', future: 'en {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoxe',
        past: TimeAgoPluralLabels(one: 'hai {0} día', other: 'hai {0} días'),
        future: TimeAgoPluralLabels(one: 'en {0} día', other: 'en {0} días')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta sem.', past: 'hai {0} sem.', future: 'en {0} sem.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mes',
        past: TimeAgoPluralLabels(one: 'hai {0} mes', other: 'hai {0} meses'),
        future: TimeAgoPluralLabels(one: 'en {0} mes', other: 'en {0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'este trim.', past: 'hai {0} trim.', future: 'en {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: 'hai {0} ano', other: 'hai {0} anos'),
        future: TimeAgoPluralLabels(one: 'en {0} ano', other: 'en {0} anos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} días'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} meses'),
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
    past: 'hai {0}',
    future: 'en {0}',
  ),
);
