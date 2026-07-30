import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'cs'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'včera',
    today: 'dnes',
    tomorrow: 'zítra',
    dateTime: '{1} v {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'před 1 sekundou',
    current: 'nyní',
    future: 'za 1 sekundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'cs';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nyní',
        past: TimeAgoPluralLabels(
            one: 'před {0} sekundou',
            many: 'před {0} sekundy',
            other: 'před {0} sekundami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sekundu',
            few: 'za {0} sekundy',
            many: 'za {0} sekundy',
            other: 'za {0} sekund')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'tuto minutu',
        past: TimeAgoPluralLabels(
            one: 'před {0} minutou',
            many: 'před {0} minuty',
            other: 'před {0} minutami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} minutu',
            few: 'za {0} minuty',
            many: 'za {0} minuty',
            other: 'za {0} minut')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'tuto hodinu',
        past: TimeAgoPluralLabels(
            one: 'před {0} hodinou',
            many: 'před {0} hodiny',
            other: 'před {0} hodinami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} hodinu',
            few: 'za {0} hodiny',
            many: 'za {0} hodiny',
            other: 'za {0} hodin')),
    day: TimeAgoRelativeUnitLabels(
        current: 'dnes',
        past: TimeAgoPluralLabels(
            one: 'před {0} dnem', many: 'před {0} dne', other: 'před {0} dny'),
        future: TimeAgoPluralLabels(
            one: 'za {0} den',
            few: 'za {0} dny',
            many: 'za {0} dne',
            other: 'za {0} dní')),
    week: TimeAgoRelativeUnitLabels(
        current: 'tento týden',
        past: TimeAgoPluralLabels(
            one: 'před {0} týdnem',
            many: 'před {0} týdne',
            other: 'před {0} týdny'),
        future: TimeAgoPluralLabels(
            one: 'za {0} týden',
            few: 'za {0} týdny',
            many: 'za {0} týdne',
            other: 'za {0} týdnů')),
    month: TimeAgoRelativeUnitLabels(
        current: 'tento měsíc',
        past: TimeAgoPluralLabels(
            one: 'před {0} měsícem',
            many: 'před {0} měsíce',
            other: 'před {0} měsíci'),
        future: TimeAgoPluralLabels(
            one: 'za {0} měsíc',
            few: 'za {0} měsíce',
            many: 'za {0} měsíce',
            other: 'za {0} měsíců')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'toto čtvrtletí',
        past: TimeAgoPluralLabels(
            one: 'před {0} čtvrtletím',
            many: 'před {0} čtvrtletí',
            other: 'před {0} čtvrtletími'),
        future: TimeAgoPluralLabels.same('za {0} čtvrtletí')),
    year: TimeAgoRelativeUnitLabels(
        current: 'tento rok',
        past: TimeAgoPluralLabels(
            one: 'před {0} rokem',
            many: 'před {0} roku',
            other: 'před {0} lety'),
        future: TimeAgoPluralLabels(
            one: 'za {0} rok',
            few: 'za {0} roky',
            many: 'za {0} roku',
            other: 'za {0} let')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekund',
        few: '{0} sekund',
        many: '{0} sekundy',
        other: '{0} sekund'),
    minute: TimeAgoPluralLabels(
        one: '{0} minut',
        few: '{0} minut',
        many: '{0} minuty',
        other: '{0} minut'),
    hour: TimeAgoPluralLabels(
        one: '{0} hodin',
        few: '{0} hodin',
        many: '{0} hodiny',
        other: '{0} hodin'),
    day: TimeAgoPluralLabels(
        one: '{0} d', few: '{0} dny', many: '{0} dne', other: '{0} dn'),
    week: TimeAgoPluralLabels(
        one: '{0} týd', few: '{0} týdny', many: '{0} týdne', other: '{0} týdn'),
    month: TimeAgoPluralLabels(
        one: '{0} měsíc',
        few: '{0} měsíc',
        many: '{0} měsíce',
        other: '{0} měsíc'),
    quarter: TimeAgoPluralLabels(
        one: '{0} čtvrtletí', many: '{0} čtvrtletí', other: '{0} čtvrtletí'),
    year: TimeAgoPluralLabels(
        one: '{0} rok', few: '{0} let', many: '{0} roku', other: '{0} let'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'před {0}ami',
    future: 'za {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nyní', past: 'před {0} s', future: 'za {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'tuto minutu', past: 'před {0} min', future: 'za {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'tuto hodinu', past: 'před {0} h', future: 'za {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'dnes',
        past: TimeAgoPluralLabels(
            one: 'před {0} dnem', many: 'před {0} dne', other: 'před {0} dny'),
        future: TimeAgoPluralLabels(
            one: 'za {0} den',
            few: 'za {0} dny',
            many: 'za {0} dne',
            other: 'za {0} dní')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tento týd.', past: 'před {0} týd.', future: 'za {0} týd.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tento měs.', past: 'před {0} měs.', future: 'za {0} měs.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'toto čtvrtletí', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'tento rok',
        past: TimeAgoPluralLabels(
            one: 'před {0} r.',
            few: 'před {0} r.',
            many: 'před {0} r.',
            other: 'před {0} l.'),
        future: TimeAgoPluralLabels(
            one: 'za {0} r.',
            few: 'za {0} r.',
            many: 'za {0} r.',
            other: 'za {0} l.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(
        one: '{0} d', few: '{0} dny', many: '{0} dne', other: '{0} dn'),
    week: TimeAgoPluralLabels.same('{0} týd.'),
    month: TimeAgoPluralLabels.same('{0} měs.'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(
        one: '{0} r.', few: '{0} r.', many: '{0} r.', other: '{0} l.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'před {0}',
    future: 'za {0}',
  ),
);
