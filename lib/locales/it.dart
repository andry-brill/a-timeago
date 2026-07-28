import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale('it'),
  formats: TimeAgoFormatSet(long: _long, short: _short, narrow: _narrow),
  now: TimeAgoNowLabels(
    past: 'proprio ora',
    current: 'adesso',
    future: 'tra poco',
  ),
  functions: IntlTimeAgoLocaleFunctions('it'),
);

/// Ten-year unit using Unicode CLDR 48.1 Italian duration labels.
const TimeAgoStep decade = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 10,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} decade',
        other: '{0} decadi',
      ),
      short: TimeAgoPluralLabels.same('{0} dec.'),
      narrow: TimeAgoPluralLabels.same('{0}dec.'),
    ),
  ),
);

/// Hundred-year unit using Unicode CLDR 48.1 Italian duration labels.
const TimeAgoStep century = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 100,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} secolo',
        other: '{0} secoli',
      ),
      short: TimeAgoPluralLabels.oneOther(
        one: '{0} sec.',
        other: '{0} secc.',
      ),
      narrow: TimeAgoPluralLabels.oneOther(
        one: '{0}sec.',
        other: '{0}secc.',
      ),
    ),
  ),
);

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
      current: 'ora',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} secondo fa',
        other: '{0} secondi fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} secondo',
        other: 'tra {0} secondi',
      ),
    ),
    minute: TimeAgoRelativeUnitLabels(
      current: 'questo minuto',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} minuto fa',
        other: '{0} minuti fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} minuto',
        other: 'tra {0} minuti',
      ),
    ),
    hour: TimeAgoRelativeUnitLabels(
      current: 'quest’ora',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} ora fa',
        other: '{0} ore fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} ora',
        other: 'tra {0} ore',
      ),
    ),
    day: TimeAgoRelativeUnitLabels(
      current: 'oggi',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} giorno fa',
        other: '{0} giorni fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} giorno',
        other: 'tra {0} giorni',
      ),
    ),
    week: TimeAgoRelativeUnitLabels(
      current: 'questa settimana',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} settimana fa',
        other: '{0} settimane fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} settimana',
        other: 'tra {0} settimane',
      ),
    ),
    month: TimeAgoRelativeUnitLabels(
      current: 'questo mese',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} mese fa',
        other: '{0} mesi fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} mese',
        other: 'tra {0} mesi',
      ),
    ),
    quarter: TimeAgoRelativeUnitLabels(
      current: 'questo trimestre',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} trimestre fa',
        other: '{0} trimestri fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} trimestre',
        other: 'tra {0} trimestri',
      ),
    ),
    year: TimeAgoRelativeUnitLabels(
      current: 'quest’anno',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} anno fa',
        other: '{0} anni fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} anno',
        other: 'tra {0} anni',
      ),
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.oneOther(
      one: '{0} secondo',
      other: '{0} secondi',
    ),
    minute: TimeAgoPluralLabels.oneOther(
      one: '{0} minuto',
      other: '{0} minuti',
    ),
    hour: TimeAgoPluralLabels.oneOther(one: '{0} ora', other: '{0} ore'),
    day: TimeAgoPluralLabels.oneOther(
      one: '{0} giorno',
      other: '{0} giorni',
    ),
    week: TimeAgoPluralLabels.oneOther(
      one: '{0} settimana',
      other: '{0} settimane',
    ),
    month: TimeAgoPluralLabels.oneOther(
      one: '{0} mese',
      other: '{0} mesi',
    ),
    quarter: TimeAgoPluralLabels.oneOther(
      one: '{0} trimestre',
      other: '{0} trimestri',
    ),
    year: TimeAgoPluralLabels.oneOther(
      one: '{0} anno',
      other: '{0} anni',
    ),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} e {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0} e {1}',
  ),
  direction: TimeAgoDirectionPatterns(past: '{0} fa', future: 'tra {0}'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
      current: 'ora',
      past: '{0} sec. fa',
      future: 'tra {0} sec.',
    ),
    minute: TimeAgoRelativeUnitLabels.same(
      current: 'questo minuto',
      past: '{0} min fa',
      future: 'tra {0} min',
    ),
    hour: TimeAgoRelativeUnitLabels.same(
      current: 'quest’ora',
      past: '{0} h fa',
      future: 'tra {0} h',
    ),
    day: TimeAgoRelativeUnitLabels(
      current: 'oggi',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} g fa',
        other: '{0} gg fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} g',
        other: 'tra {0} gg',
      ),
    ),
    week: TimeAgoRelativeUnitLabels.same(
      current: 'questa sett.',
      past: '{0} sett. fa',
      future: 'tra {0} sett.',
    ),
    month: TimeAgoRelativeUnitLabels(
      current: 'questo mese',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} mese fa',
        other: '{0} mesi fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} mese',
        other: 'tra {0} mesi',
      ),
    ),
    quarter: TimeAgoRelativeUnitLabels.same(
      current: 'questo trim.',
      past: '{0} trim. fa',
      future: 'tra {0} trim.',
    ),
    year: TimeAgoRelativeUnitLabels(
      current: 'quest’anno',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} anno fa',
        other: '{0} anni fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} anno',
        other: 'tra {0} anni',
      ),
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.oneOther(one: '{0} g', other: '{0} gg'),
    week: TimeAgoPluralLabels.same('{0} sett.'),
    month: TimeAgoPluralLabels.oneOther(
      one: '{0} mese',
      other: '{0} mesi',
    ),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.oneOther(
      one: '{0} anno',
      other: '{0} anni',
    ),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} e {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0} e {1}',
  ),
  direction: TimeAgoDirectionPatterns(past: '{0} fa', future: 'tra {0}'),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
      current: 'ora',
      past: '{0} s fa',
      future: 'tra {0} s',
    ),
    minute: TimeAgoRelativeUnitLabels.same(
      current: 'questo minuto',
      past: '{0} min fa',
      future: 'tra {0} min',
    ),
    hour: TimeAgoRelativeUnitLabels.same(
      current: 'quest’ora',
      past: '{0} h fa',
      future: 'tra {0} h',
    ),
    day: TimeAgoRelativeUnitLabels(
      current: 'oggi',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} g fa',
        other: '{0} gg fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} g',
        other: 'tra {0} gg',
      ),
    ),
    week: TimeAgoRelativeUnitLabels.same(
      current: 'questa sett.',
      past: '{0} sett. fa',
      future: 'tra {0} sett.',
    ),
    month: TimeAgoRelativeUnitLabels(
      current: 'questo mese',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} mese fa',
        other: '{0} mesi fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} mese',
        other: 'tra {0} mesi',
      ),
    ),
    quarter: TimeAgoRelativeUnitLabels.same(
      current: 'questo trim.',
      past: '{0} trim. fa',
      future: 'tra {0} trim.',
    ),
    year: TimeAgoRelativeUnitLabels(
      current: 'quest’anno',
      past: TimeAgoPluralLabels.oneOther(
        one: '{0} anno fa',
        other: '{0} anni fa',
      ),
      future: TimeAgoPluralLabels.oneOther(
        one: 'tra {0} anno',
        other: 'tra {0} anni',
      ),
    ),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.oneOther(one: '{0} g', other: '{0} gg'),
    week: TimeAgoPluralLabels.same('{0} sett.'),
    month: TimeAgoPluralLabels.oneOther(
      one: '{0} mese',
      other: '{0} mesi',
    ),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.oneOther(
      one: '{0} anno',
      other: '{0} anni',
    ),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} e {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0} e {1}',
  ),
  direction: TimeAgoDirectionPatterns(past: '{0} fa', future: 'tra {0}'),
);
