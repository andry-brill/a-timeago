import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'pt'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: _mini,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ontem',
    today: 'hoje',
    tomorrow: 'amanhã',
    dateTime: '{1} às {0}',
    relativeDateTime: '{1} às {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'há 1 segundo',
    current: 'agora',
    future: 'em 1 segundo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'pt';

/// Ten-year unit using Unicode CLDR 48.1 Portuguese duration labels.
const TimeAgoStep decade = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 10,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} década',
        other: '{0} décadas',
      ),
      short: TimeAgoPluralLabels.same('{0} déc.'),
      narrow: TimeAgoPluralLabels.same('{0} déc.'),
    ),
  ),
);

/// Hundred-year unit using Unicode CLDR 48.1 Portuguese duration labels.
const TimeAgoStep century = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 100,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} século',
        other: '{0} séculos',
      ),
      short: TimeAgoPluralLabels.oneOther(
        one: '{0} séc.',
        other: '{0} sécs.',
      ),
      narrow: TimeAgoPluralLabels.oneOther(
        one: '{0} séc.',
        other: '{0} sécs.',
      ),
    ),
  ),
);

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'agora',
        past: TimeAgoPluralLabels(
            one: 'há {0} segundo', other: 'há {0} segundos'),
        future: TimeAgoPluralLabels(
            one: 'em {0} segundo', other: 'em {0} segundos')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'este minuto',
        past:
            TimeAgoPluralLabels(one: 'há {0} minuto', other: 'há {0} minutos'),
        future:
            TimeAgoPluralLabels(one: 'em {0} minuto', other: 'em {0} minutos')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'esta hora',
        past: TimeAgoPluralLabels(one: 'há {0} hora', other: 'há {0} horas'),
        future: TimeAgoPluralLabels(one: 'em {0} hora', other: 'em {0} horas')),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoje',
        past: TimeAgoPluralLabels(one: 'há {0} dia', other: 'há {0} dias'),
        future: TimeAgoPluralLabels(one: 'em {0} dia', other: 'em {0} dias')),
    week: TimeAgoRelativeUnitLabels(
        current: 'esta semana',
        past:
            TimeAgoPluralLabels(one: 'há {0} semana', other: 'há {0} semanas'),
        future:
            TimeAgoPluralLabels(one: 'em {0} semana', other: 'em {0} semanas')),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mês',
        past: TimeAgoPluralLabels(one: 'há {0} mês', other: 'há {0} meses'),
        future: TimeAgoPluralLabels(one: 'em {0} mês', other: 'em {0} meses')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'este trimestre',
        past: TimeAgoPluralLabels(
            one: 'há {0} trimestre', other: 'há {0} trimestres'),
        future: TimeAgoPluralLabels(
            one: 'em {0} trimestre', other: 'em {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: 'há {0} ano', other: 'há {0} anos'),
        future: TimeAgoPluralLabels(one: 'em {0} ano', other: 'em {0} anos')),
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
    future: 'em {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'agora', past: 'há {0} seg.', future: 'em {0} seg.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'este minuto', past: 'há {0} min.', future: 'em {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: 'há {0} h', future: 'em {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hoje',
        past: TimeAgoPluralLabels(one: 'há {0} dia', other: 'há {0} dias'),
        future: TimeAgoPluralLabels(one: 'em {0} dia', other: 'em {0} dias')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta semana', past: 'há {0} sem.', future: 'em {0} sem.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'este mês',
        past: TimeAgoPluralLabels(one: 'há {0} mês', other: 'há {0} meses'),
        future: TimeAgoPluralLabels(one: 'em {0} mês', other: 'em {0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'este trimestre',
        past: 'há {0} trim.',
        future: 'em {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'este ano',
        past: TimeAgoPluralLabels(one: 'há {0} ano', other: 'há {0} anos'),
        future: TimeAgoPluralLabels(one: 'em {0} ano', other: 'em {0} anos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} seg.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
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
    future: 'em {0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0} s'),
        future: TimeAgoPluralLabels.same('em {0} s')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0} m'),
        future: TimeAgoPluralLabels.same('em {0} m')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0} h'),
        future: TimeAgoPluralLabels.same('em {0} h')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0} d'),
        future: TimeAgoPluralLabels.same('em {0} d')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0}sem.'),
        future: TimeAgoPluralLabels.same('em {0}sem.')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0}mes'),
        future: TimeAgoPluralLabels.same('em {0}mes')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0} trim.'),
        future: TimeAgoPluralLabels.same('em {0} trim.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('há {0}ano'),
        future: TimeAgoPluralLabels.same('em {0}ano')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0}sem.'),
    month: TimeAgoPluralLabels.same('{0}mes'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0}ano'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'há {0}',
    future: 'em {0}',
  ),
  now: 'agora',
);
