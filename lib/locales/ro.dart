import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ro'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: 'acum 1 secundă',
    current: 'acum',
    future: 'peste 1 secundă',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ro';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'acum',
        past: TimeAgoPluralLabels(
            one: 'acum {0} secundă',
            few: 'acum {0} secunde',
            other: 'acum {0} de secunde'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} secundă',
            few: 'peste {0} secunde',
            other: 'peste {0} de secunde')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'minutul acesta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} minut',
            few: 'acum {0} minute',
            other: 'acum {0} de minute'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} minut',
            few: 'peste {0} minute',
            other: 'peste {0} de minute')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ora aceasta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} oră', few: 'acum {0} ore', other: 'acum {0} de ore'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} oră',
            few: 'peste {0} ore',
            other: 'peste {0} de ore')),
    day: TimeAgoRelativeUnitLabels(
        current: 'azi',
        past: TimeAgoPluralLabels(
            one: 'acum {0} zi',
            few: 'acum {0} zile',
            other: 'acum {0} de zile'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} zi',
            few: 'peste {0} zile',
            other: 'peste {0} de zile')),
    week: TimeAgoRelativeUnitLabels(
        current: 'săptămâna aceasta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} săptămână',
            few: 'acum {0} săptămâni',
            other: 'acum {0} de săptămâni'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} săptămână',
            few: 'peste {0} săptămâni',
            other: 'peste {0} de săptămâni')),
    month: TimeAgoRelativeUnitLabels(
        current: 'luna aceasta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} lună',
            few: 'acum {0} luni',
            other: 'acum {0} de luni'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} lună',
            few: 'peste {0} luni',
            other: 'peste {0} de luni')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'trimestrul acesta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} trimestru',
            few: 'acum {0} trimestre',
            other: 'acum {0} de trimestre'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} trimestru',
            few: 'peste {0} trimestre',
            other: 'peste {0} de trimestre')),
    year: TimeAgoRelativeUnitLabels(
        current: 'anul acesta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} an', few: 'acum {0} ani', other: 'acum {0} de ani'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} an',
            few: 'peste {0} ani',
            other: 'peste {0} de ani')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} secundă', other: '{0} secunde'),
    minute: TimeAgoPluralLabels(one: '{0} minut', other: '{0} minute'),
    hour: TimeAgoPluralLabels(one: '{0} oră', other: '{0} ore'),
    day: TimeAgoPluralLabels(one: '{0} zi', other: '{0} zile'),
    week: TimeAgoPluralLabels(one: '{0} săptămână', other: '{0} săptămâni'),
    month: TimeAgoPluralLabels(one: '{0} lună', other: '{0} luni'),
    quarter: TimeAgoPluralLabels(
        one: '{0} trimestru', few: '{0} trimestre', other: '{0} de trimestre'),
    year: TimeAgoPluralLabels(one: '{0} an', other: '{0} ani'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'acum {0}',
    future: 'peste {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'acum', past: 'acum {0} sec.', future: 'peste {0} sec.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'minutul acesta',
        past: 'acum {0} min.',
        future: 'peste {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ora aceasta', past: 'acum {0} h', future: 'peste {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'azi',
        past: TimeAgoPluralLabels(
            one: 'acum {0} zi',
            few: 'acum {0} zile',
            other: 'acum {0} de zile'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} zi',
            few: 'peste {0} zile',
            other: 'peste {0} de zile')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'săpt. aceasta',
        past: 'acum {0} săpt.',
        future: 'peste {0} săpt.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'luna aceasta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} lună',
            few: 'acum {0} luni',
            other: 'acum {0} de luni'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} lună',
            few: 'peste {0} luni',
            other: 'peste {0} de luni')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'trim. acesta',
        past: 'acum {0} trim.',
        future: 'peste {0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'anul acesta',
        past: TimeAgoPluralLabels(
            one: 'acum {0} an', few: 'acum {0} ani', other: 'acum {0} de ani'),
        future: TimeAgoPluralLabels(
            one: 'peste {0} an',
            few: 'peste {0} ani',
            other: 'peste {0} de ani')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(
        one: '{0} zi', few: '{0} zile', other: '{0} de zile'),
    week: TimeAgoPluralLabels.same('{0} săpt.'),
    month: TimeAgoPluralLabels(
        one: '{0} lună', few: '{0} luni', other: '{0} de luni'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year:
        TimeAgoPluralLabels(one: '{0} an', few: '{0} ani', other: '{0} de ani'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'acum {0}',
    future: 'peste {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'acum', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'minutul acesta', past: '-{0} m', future: '+{0} m'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ora aceasta', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'azi',
        past: TimeAgoPluralLabels(one: '-{0} zi', other: '-{0} zile'),
        future: TimeAgoPluralLabels(one: '+{0} zi', other: '+{0} zile')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'săpt. aceasta', past: '-{0} săpt.', future: '+{0} săpt.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'luna aceasta',
        past: TimeAgoPluralLabels(one: '-{0} lună', other: '-{0} luni'),
        future: TimeAgoPluralLabels(one: '+{0} lună', other: '+{0} luni')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'trim. acesta', past: '-{0} trim.', future: '+{0} trim.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'anul acesta',
        past: TimeAgoPluralLabels(one: '-{0} an', other: '-{0} ani'),
        future: TimeAgoPluralLabels(one: '+{0} an', other: '+{0} ani')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} zi', other: '{0} zile'),
    week: TimeAgoPluralLabels.same('{0} săpt.'),
    month: TimeAgoPluralLabels(one: '{0} lună', other: '{0} luni'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} an', other: '{0} ani'),
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

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} sec.'),
        future: TimeAgoPluralLabels.same('+{0} sec.')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} min.'),
        future: TimeAgoPluralLabels.same('+{0} min.')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} h'),
        future: TimeAgoPluralLabels.same('+{0} h')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(one: '-{0} zi', other: '-{0} zile'),
        future: TimeAgoPluralLabels(one: '+{0} zi', other: '+{0} zile')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} săp.'),
        future: TimeAgoPluralLabels.same('+{0} săp.')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(one: '-{0} lună', other: '-{0} luni'),
        future: TimeAgoPluralLabels(one: '+{0} lună', other: '+{0} luni')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('-{0} trim.'),
        future: TimeAgoPluralLabels.same('+{0} trim.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(one: '-{0} an', other: '-{0} ani'),
        future: TimeAgoPluralLabels(one: '+{0} an', other: '+{0} ani')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} zi', other: '{0} zile'),
    week: TimeAgoPluralLabels.same('{0} săp.'),
    month: TimeAgoPluralLabels(one: '{0} lună', other: '{0} luni'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels(one: '{0} an', other: '{0} ani'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
  now: 'acum',
);
