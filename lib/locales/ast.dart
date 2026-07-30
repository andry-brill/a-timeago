import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ast'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ayeri',
    today: 'güei',
    tomorrow: 'mañana',
    dateTime: '{1} a les {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'hai 1 segundu',
    current: 'agora',
    future: 'en 1 segundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ast';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'agora',
        past: TimeAgoPluralLabels(
            one: 'hai {0} segundu', other: 'hai {0} segundos'),
        future: TimeAgoPluralLabels(
            one: 'en {0} segundu', other: 'en {0} segundos')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'esti minutu',
        past: TimeAgoPluralLabels(
            one: 'hai {0} minutu', other: 'hai {0} minutos'),
        future:
            TimeAgoPluralLabels(one: 'en {0} minutu', other: 'en {0} minutos')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'esta hora',
        past: TimeAgoPluralLabels(one: 'hai {0} hora', other: 'hai {0} hores'),
        future: TimeAgoPluralLabels(one: 'en {0} hora', other: 'en {0} hores')),
    day: TimeAgoRelativeUnitLabels(
        current: 'güei',
        past: TimeAgoPluralLabels(one: 'hai {0} día', other: 'hai {0} díes'),
        future: TimeAgoPluralLabels(one: 'en {0} día', other: 'en {0} díes')),
    week: TimeAgoRelativeUnitLabels(
        current: 'esta selmana',
        past: TimeAgoPluralLabels(
            one: 'hai {0} selmana', other: 'hai {0} selmanes'),
        future: TimeAgoPluralLabels(
            one: 'en {0} selmana', other: 'en {0} selmanes')),
    month: TimeAgoRelativeUnitLabels(
        current: 'esti mes',
        past: TimeAgoPluralLabels(one: 'hai {0} mes', other: 'hai {0} meses'),
        future: TimeAgoPluralLabels(one: 'en {0} mes', other: 'en {0} meses')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'esti trimestre',
        past: TimeAgoPluralLabels(
            one: 'hai {0} trimestre', other: 'hai {0} trimestres'),
        future: TimeAgoPluralLabels(
            one: 'en {0} trimestre', other: 'en {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'esti añu',
        past: TimeAgoPluralLabels(one: 'hai {0} añu', other: 'hai {0} años'),
        future: TimeAgoPluralLabels(one: 'en {0} añu', other: 'en {0} años')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segundu', other: '{0} segundos'),
    minute: TimeAgoPluralLabels(one: '{0} minutu', other: '{0} minutos'),
    hour: TimeAgoPluralLabels(one: '{0} hora', other: '{0} hores'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} díes'),
    week: TimeAgoPluralLabels(one: '{0} selmana', other: '{0} selmanes'),
    month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} meses'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trimestres'),
    year: TimeAgoPluralLabels(one: '{0} añu', other: '{0} años'),
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
        current: 'agora', past: 'hai {0} seg.', future: 'en {0} seg.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'esti min.', past: 'hai {0} min.', future: 'en {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta hora', past: 'hai {0} h.', future: 'en {0} h.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'güei',
        past: TimeAgoPluralLabels(one: 'hai {0} día', other: 'hai {0} díes'),
        future: TimeAgoPluralLabels(one: 'en {0} día', other: 'en {0} díes')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta selm.', past: 'hai {0} selm.', future: 'en {0} selm.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'esti mes',
        past: TimeAgoPluralLabels(one: 'hai {0} mes', other: 'hai {0} meses'),
        future: TimeAgoPluralLabels(one: 'en {0} mes', other: 'en {0} meses')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'esti trim.', past: 'hai {0} trim.', future: 'en {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'esti añu',
        past: TimeAgoPluralLabels(one: 'hai {0} añu', other: 'hai {0} años'),
        future: TimeAgoPluralLabels(one: 'en {0} añu', other: 'en {0} años')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} seg.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} h.'),
    day: TimeAgoPluralLabels(one: '{0} día', other: '{0} díes'),
    week: TimeAgoPluralLabels.same('{0} selm.'),
    month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} meses'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} añu', other: '{0} años'),
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
        current: 'agora', past: 'hai {0} s.', future: 'en {0} s.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'esti min.', past: 'hai {0} min.', future: 'en {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'esta h.', past: 'hai {0} h.', future: 'en {0} h.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'güei', past: 'hai {0} d.', future: 'en {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'esta selm.', past: 'hai {0} se.', future: 'en {0} se.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'esti mes', past: 'hai {0} m.', future: 'en {0} m.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'esti trim.', past: 'hai {0} tr.', future: 'en {0} tr.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'esti añu', past: 'hai {0} a.', future: 'en {0} a.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} h.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} se.'),
    month: TimeAgoPluralLabels.same('{0} m.'),
    quarter: TimeAgoPluralLabels.same('{0} tr.'),
    year: TimeAgoPluralLabels.same('{0} a.'),
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
