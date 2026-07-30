import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'qu'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'qayna punchaw',
    today: 'kunan punchaw',
    tomorrow: 'paqarin',
    dateTime: '{1} {0}',
    relativeDateTime: '{0} {1}',
  ),
  now: TimeAgoNowLabels(
    past: '1 qipa segundu',
    current: 'now',
    future: '1 segundupi',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'qu';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} qipa segundu', future: '{0} segundupi'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'kay minuto', past: '{0} qipa minutu', future: '{0} minutupi'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'kay hora', past: '{0} qipa ura', future: '{0} urapi'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'kunan punchaw',
        past: '{0} qipa punchaw',
        future: '{0} punchawpi'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'kunan semana',
        past: '{0} qipa semana',
        future: '{0} semanapi'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kunan killa', past: '{0} qipa killa', future: '{0} killapi'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kunan kimsa killa',
        past: '{0} qipa kimsa killa',
        future: '{0} kimsa killapi'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'kunan wata', past: '-{0} y', future: '+{0} y'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} qipa segundu'),
    minute: TimeAgoPluralLabels.same('{0} qipa minutu'),
    hour: TimeAgoPluralLabels.same('{0} qipa ura'),
    day: TimeAgoPluralLabels.same('{0} qipa punchaw'),
    week: TimeAgoPluralLabels.same('{0} qipa semana'),
    month: TimeAgoPluralLabels.same('{0} qipa killa'),
    quarter: TimeAgoPluralLabels.same('{0} qipa kimsa killa'),
    year: TimeAgoPluralLabels.same('{0} y'),
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

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '{0} qipa segundu', future: '{0} segundupi'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'kay minuto', past: '{0} qipa minutu', future: '{0} minutupi'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'kay hora', past: '{0} qipa ura', future: '{0} urapi'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'kunan punchaw',
        past: '{0} qipa punchaw',
        future: '{0} punchawpi'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'kunan semana',
        past: '{0} qipa semana',
        future: '{0} semanapi'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kunan killa', past: '{0} qipa killa', future: '{0} killapi'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kunan kimsa killa',
        past: '{0} qipa kimsa killa',
        future: '{0} kimsa killapi'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'kunan wata', past: '{0} qipa watapi', future: '{0} watapi'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} qipa segundu'),
    minute: TimeAgoPluralLabels.same('{0} qipa minutu'),
    hour: TimeAgoPluralLabels.same('{0} qipa ura'),
    day: TimeAgoPluralLabels.same('{0} qipa punchaw'),
    week: TimeAgoPluralLabels.same('{0} qipa semana'),
    month: TimeAgoPluralLabels.same('{0} qipa killa'),
    quarter: TimeAgoPluralLabels.same('{0} qipa kimsa killa'),
    year: TimeAgoPluralLabels.same('{0} qipa watapi'),
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
        current: 'now', past: '{0} qipa segundu', future: '{0} segundupi'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'kay minuto', past: '{0} qipa minutu', future: '{0} minutupi'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'kay hora', past: '{0} qipa ura', future: '{0} urapi'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'kunan punchaw',
        past: '{0} qipa punchaw',
        future: '{0} punchawpi'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'kunan semana',
        past: '{0} qipa semana',
        future: '{0} semanapi'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kunan killa', past: '{0} qipa killa', future: '{0} killapi'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kunan kimsa killa',
        past: '{0} qipa kimsa killa',
        future: '{0} kimsa killapi'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'kunan wata',
        past: '{0} ñawpaq watapi',
        future: '{0} hamuq watapi'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} qipa segundu'),
    minute: TimeAgoPluralLabels.same('{0} qipa minutu'),
    hour: TimeAgoPluralLabels.same('{0} qipa ura'),
    day: TimeAgoPluralLabels.same('{0} qipa punchaw'),
    week: TimeAgoPluralLabels.same('{0} qipa semana'),
    month: TimeAgoPluralLabels.same('{0} qipa killa'),
    quarter: TimeAgoPluralLabels.same('{0} qipa kimsa killa'),
    year: TimeAgoPluralLabels.same('{0} ñawpaq watapi'),
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
