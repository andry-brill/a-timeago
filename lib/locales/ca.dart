import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ca'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'fa 1 segon',
    current: 'ara',
    future: 'd’aquí a 1 segon',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ca';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ara',
        past: TimeAgoPluralLabels(one: 'fa {0} segon', other: 'fa {0} segons'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} segon', other: 'd’aquí a {0} segons')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'aquest minut',
        past: TimeAgoPluralLabels(one: 'fa {0} minut', other: 'fa {0} minuts'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} minut', other: 'd’aquí a {0} minuts')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'aquesta hora',
        past: TimeAgoPluralLabels(one: 'fa {0} hora', other: 'fa {0} hores'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} hora', other: 'd’aquí a {0} hores')),
    day: TimeAgoRelativeUnitLabels(
        current: 'avui',
        past: TimeAgoPluralLabels(one: 'fa {0} dia', other: 'fa {0} dies'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} dia', other: 'd’aquí a {0} dies')),
    week: TimeAgoRelativeUnitLabels(
        current: 'aquesta setmana',
        past: TimeAgoPluralLabels(
            one: 'fa {0} setmana', other: 'fa {0} setmanes'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} setmana', other: 'd’aquí a {0} setmanes')),
    month: TimeAgoRelativeUnitLabels(
        current: 'aquest mes',
        past: TimeAgoPluralLabels(one: 'fa {0} mes', other: 'fa {0} mesos'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} mes', other: 'd’aquí a {0} mesos')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'aquest trimestre',
        past: TimeAgoPluralLabels(
            one: 'fa {0} trimestre', other: 'fa {0} trimestres'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} trimestre', other: 'd’aquí a {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'enguany',
        past: TimeAgoPluralLabels(one: 'fa {0} any', other: 'fa {0} anys'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} any', other: 'd’aquí a {0} anys')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segon', other: '{0} segons'),
    minute: TimeAgoPluralLabels(one: '{0} minut', other: '{0} minuts'),
    hour: TimeAgoPluralLabels(one: '{0} hora', other: '{0} hores'),
    day: TimeAgoPluralLabels(one: '{0} dia', other: '{0} dies'),
    week: TimeAgoPluralLabels(one: '{0} setmana', other: '{0} setmanes'),
    month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} mesos'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trimestres'),
    year: TimeAgoPluralLabels(one: '{0} any', other: '{0} anys'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'fa {0}',
    future: 'd’aquí a {0}',
  ),
);

const _shortNarrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} s'),
  minute: TimeAgoPluralLabels.same('{0} min'),
  hour: TimeAgoPluralLabels.same('{0} h'),
  day: TimeAgoPluralLabels(one: '{0} dia', other: '{0} dies'),
  week: TimeAgoPluralLabels.same('{0} setm.'),
  month: TimeAgoPluralLabels(one: '{0} mes', other: '{0} mesos'),
  quarter: TimeAgoPluralLabels.same('{0} trim.'),
  year: TimeAgoPluralLabels(one: '{0} any', other: '{0} anys'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ara', past: 'fa {0} s', future: 'd’aquí a {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'aquest minut',
        past: 'fa {0} min',
        future: 'd’aquí a {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'aquesta hora', past: 'fa {0} h', future: 'd’aquí a {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'avui',
        past: TimeAgoPluralLabels(one: 'fa {0} dia', other: 'fa {0} dies'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} dia', other: 'd’aquí a {0} dies')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'aquesta setm.',
        past: 'fa {0} setm.',
        future: 'd’aquí a {0} setm.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'aquest mes',
        past: TimeAgoPluralLabels(one: 'fa {0} mes', other: 'fa {0} mesos'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} mes', other: 'd’aquí a {0} mesos')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'aquest trim.',
        past: 'fa {0} trim.',
        future: 'd’aquí a {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'enguany',
        past: TimeAgoPluralLabels(one: 'fa {0} any', other: 'fa {0} anys'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} any', other: 'd’aquí a {0} anys')),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'fa {0}',
    future: 'd’aquí a {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ara', past: 'fa {0} s', future: 'd’aquí a {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'aquest minut',
        past: 'fa {0} min',
        future: 'd’aquí a {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'aquesta hora', past: 'fa {0} h', future: 'd‘aquí a {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'avui',
        past: TimeAgoPluralLabels(one: 'fa {0} dia', other: 'fa {0} dies'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} dia', other: 'd’aquí a {0} dies')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'aquesta setm.',
        past: 'fa {0} setm.',
        future: 'd’aquí a {0} setm.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'aquest mes',
        past: TimeAgoPluralLabels(one: 'fa {0} mes', other: 'fa {0} mesos'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} mes', other: 'd’aquí a {0} mesos')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'aquest trim.',
        past: 'fa {0} trim.',
        future: 'd’aquí a {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'enguany',
        past: TimeAgoPluralLabels(one: 'fa {0} any', other: 'fa {0} anys'),
        future: TimeAgoPluralLabels(
            one: 'd’aquí a {0} any', other: 'd’aquí a {0} anys')),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'fa {0}',
    future: 'd’aquí a {0}',
  ),
);
