import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'pl'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: '1 sekundę temu',
    current: 'teraz',
    future: 'za 1 sekundę',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'pl';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'teraz',
        past: TimeAgoPluralLabels(
            one: '{0} sekundę temu',
            many: '{0} sekund temu',
            other: '{0} sekundy temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sekundę',
            many: 'za {0} sekund',
            other: 'za {0} sekundy')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ta minuta',
        past: TimeAgoPluralLabels(
            one: '{0} minutę temu',
            many: '{0} minut temu',
            other: '{0} minuty temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} minutę',
            many: 'za {0} minut',
            other: 'za {0} minuty')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ta godzina',
        past: TimeAgoPluralLabels(
            one: '{0} godzinę temu',
            many: '{0} godzin temu',
            other: '{0} godziny temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} godzinę',
            many: 'za {0} godzin',
            other: 'za {0} godziny')),
    day: TimeAgoRelativeUnitLabels(
        current: 'dzisiaj',
        past: TimeAgoPluralLabels(
            one: '{0} dzień temu',
            few: '{0} dni temu',
            many: '{0} dni temu',
            other: '{0} dnia temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} dzień',
            few: 'za {0} dni',
            many: 'za {0} dni',
            other: 'za {0} dnia')),
    week: TimeAgoRelativeUnitLabels(
        current: 'w tym tygodniu',
        past: TimeAgoPluralLabels(
            one: '{0} tydzień temu',
            few: '{0} tygodnie temu',
            many: '{0} tygodni temu',
            other: '{0} tygodnia temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} tydzień',
            few: 'za {0} tygodnie',
            many: 'za {0} tygodni',
            other: 'za {0} tygodnia')),
    month: TimeAgoRelativeUnitLabels(
        current: 'w tym miesiącu',
        past: TimeAgoPluralLabels(
            one: '{0} miesiąc temu',
            few: '{0} miesiące temu',
            many: '{0} miesięcy temu',
            other: '{0} miesiąca temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} miesiąc',
            few: 'za {0} miesiące',
            many: 'za {0} miesięcy',
            other: 'za {0} miesiąca')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'w tym kwartale',
        past: TimeAgoPluralLabels(
            one: '{0} kwartał temu',
            few: '{0} kwartały temu',
            many: '{0} kwartałów temu',
            other: '{0} kwartału temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} kwartał',
            few: 'za {0} kwartały',
            many: 'za {0} kwartałów',
            other: 'za {0} kwartału')),
    year: TimeAgoRelativeUnitLabels(
        current: 'w tym roku',
        past: TimeAgoPluralLabels(
            one: '{0} rok temu',
            few: '{0} lata temu',
            many: '{0} lat temu',
            other: '{0} roku temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} rok',
            few: 'za {0} lata',
            many: 'za {0} lat',
            other: 'za {0} roku')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekunda', other: '{0} sekundy'),
    minute: TimeAgoPluralLabels(one: '{0} minuta', other: '{0} minuty'),
    hour: TimeAgoPluralLabels(one: '{0} godzina', other: '{0} godziny'),
    day: TimeAgoPluralLabels(one: '{0} dzień', other: '{0} dni'),
    week: TimeAgoPluralLabels(one: '{0} tydzień', other: '{0} tygodnie'),
    month: TimeAgoPluralLabels(one: '{0} miesiąc', other: '{0} miesiące'),
    quarter: TimeAgoPluralLabels(
        one: '{0} kwartał',
        few: '{0} kwartały',
        many: '{0} kwartałów',
        other: '{0} kwartału'),
    year: TimeAgoPluralLabels(one: '{0} rok', other: '{0} lata'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} temu',
    future: 'za {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'teraz', past: '{0} sek. temu', future: 'za {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ta minuta', past: '{0} min temu', future: 'za {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ta godzina', past: '{0} godz. temu', future: 'za {0} godz.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'dzisiaj',
        past: TimeAgoPluralLabels(
            one: '{0} dzień temu',
            few: '{0} dni temu',
            many: '{0} dni temu',
            other: '{0} dnia temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} dzień',
            few: 'za {0} dni',
            many: 'za {0} dni',
            other: 'za {0} dnia')),
    week: TimeAgoRelativeUnitLabels(
        current: 'w tym tyg.',
        past:
            TimeAgoPluralLabels(one: '{0} tydz. temu', other: '{0} tyg. temu'),
        future: TimeAgoPluralLabels(one: 'za {0} tydz.', other: 'za {0} tyg.')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'w tym mies.', past: '{0} mies. temu', future: 'za {0} mies.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'w tym kwartale', past: '{0} kw. temu', future: 'za {0} kw.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'w tym roku',
        past: TimeAgoPluralLabels(
            one: '{0} rok temu',
            few: '{0} lata temu',
            many: '{0} lat temu',
            other: '{0} roku temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} rok',
            few: 'za {0} lata',
            many: 'za {0} lat',
            other: 'za {0} roku')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} godz.'),
    day: TimeAgoPluralLabels(one: '{0} dzień', other: '{0} dni'),
    week: TimeAgoPluralLabels.same('{0} tyg.'),
    month: TimeAgoPluralLabels.same('{0} m-c'),
    quarter: TimeAgoPluralLabels.same('{0} kw.'),
    year: TimeAgoPluralLabels.same('{0} r.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} temu',
    future: 'za {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'teraz', past: '{0} s temu', future: 'za {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ta minuta', past: '{0} min temu', future: 'za {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ta godzina', past: '{0} g. temu', future: 'za {0} g.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'dziś',
        past: TimeAgoPluralLabels(
            one: '{0} dzień temu',
            few: '{0} dni temu',
            many: '{0} dni temu',
            other: '{0} dnia temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} dzień',
            few: 'za {0} dni',
            many: 'za {0} dni',
            other: 'za {0} dnia')),
    week: TimeAgoRelativeUnitLabels(
        current: 'w tym tyg.',
        past:
            TimeAgoPluralLabels(one: '{0} tydz. temu', other: '{0} tyg. temu'),
        future: TimeAgoPluralLabels(one: 'za {0} tydz.', other: 'za {0} tyg.')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'w tym mies.', past: '{0} mies. temu', future: 'za {0} mies.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'w tym kwartale', past: '{0} kw. temu', future: 'za {0} kw.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'w tym roku',
        past: TimeAgoPluralLabels(
            one: '{0} rok temu',
            few: '{0} lata temu',
            many: '{0} lat temu',
            other: '{0} roku temu'),
        future: TimeAgoPluralLabels(
            one: 'za {0} rok',
            few: 'za {0} lata',
            many: 'za {0} lat',
            other: 'za {0} roku')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} g.'),
    day: TimeAgoPluralLabels(
        one: '{0} dzień', few: '{0} dni', many: '{0} dni', other: '{0} dnia'),
    week: TimeAgoPluralLabels(one: '{0} tydz.', other: '{0} tyg.'),
    month: TimeAgoPluralLabels.same('{0} mies.'),
    quarter: TimeAgoPluralLabels.same('{0} kw.'),
    year: TimeAgoPluralLabels(
        one: '{0} rok', few: '{0} lata', many: '{0} lat', other: '{0} roku'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} temu',
    future: 'za {0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}s temu'),
        future: TimeAgoPluralLabels.same('za {0}s')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}m temu'),
        future: TimeAgoPluralLabels.same('za {0}m')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}g temu'),
        future: TimeAgoPluralLabels.same('za {0}g')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}d temu'),
        future: TimeAgoPluralLabels.same('za {0}d')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}t temu'),
        future: TimeAgoPluralLabels.same('za {0}t')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}m temu'),
        future: TimeAgoPluralLabels.same('za {0}m')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} kw. temu'),
        future: TimeAgoPluralLabels.same('za {0} kw.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}r temu'),
        future: TimeAgoPluralLabels.same('za {0}r')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}s'),
    minute: TimeAgoPluralLabels.same('{0}m'),
    hour: TimeAgoPluralLabels.same('{0}g'),
    day: TimeAgoPluralLabels.same('{0}d'),
    week: TimeAgoPluralLabels.same('{0}t'),
    month: TimeAgoPluralLabels.same('{0}m'),
    quarter: TimeAgoPluralLabels.same('{0} kw.'),
    year: TimeAgoPluralLabels.same('{0}r'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} temu',
    future: 'za {0}',
  ),
  now: 'teraz',
);
