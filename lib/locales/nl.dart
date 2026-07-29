import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'nl'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: '1 seconde geleden',
    current: 'nu',
    future: 'over 1 seconde',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'nl';

/// Ten-year unit using Unicode CLDR 48.1 Dutch duration labels.
const TimeAgoStep decade = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 10,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} decennium',
        other: '{0} decennia',
      ),
      short: TimeAgoPluralLabels.same('{0} dec.'),
      narrow: TimeAgoPluralLabels.same('{0} dec.'),
    ),
  ),
);

/// Hundred-year unit using Unicode CLDR 48.1 Dutch duration labels.
const TimeAgoStep century = TimeAgoStep.customUnit(
  TimeAgoCustomUnitTranslation(
    unit: TimeAgoUnit.year,
    unitMultiplier: 100,
    units: TimeAgoFormatSet(
      long: TimeAgoPluralLabels.oneOther(
        one: '{0} eeuw',
        other: '{0} eeuwen',
      ),
      short: TimeAgoPluralLabels.oneOther(
        one: '{0} eeuw',
        other: '{0} eeuwen',
      ),
      narrow: TimeAgoPluralLabels.oneOther(
        one: '{0} eeuw',
        other: '{0} eeuwen',
      ),
    ),
  ),
);

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nu',
        past: TimeAgoPluralLabels(
            one: '{0} seconde geleden', other: '{0} seconden geleden'),
        future: TimeAgoPluralLabels(
            one: 'over {0} seconde', other: 'over {0} seconden')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'binnen een minuut',
        past: TimeAgoPluralLabels(
            one: '{0} minuut geleden', other: '{0} minuten geleden'),
        future: TimeAgoPluralLabels(
            one: 'over {0} minuut', other: 'over {0} minuten')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'binnen een uur',
        past: '{0} uur geleden',
        future: 'over {0} uur'),
    day: TimeAgoRelativeUnitLabels(
        current: 'vandaag',
        past: TimeAgoPluralLabels(
            one: '{0} dag geleden', other: '{0} dagen geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} dag', other: 'over {0} dagen')),
    week: TimeAgoRelativeUnitLabels(
        current: 'deze week',
        past: TimeAgoPluralLabels(
            one: '{0} week geleden', other: '{0} weken geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} week', other: 'over {0} weken')),
    month: TimeAgoRelativeUnitLabels(
        current: 'deze maand',
        past: TimeAgoPluralLabels(
            one: '{0} maand geleden', other: '{0} maanden geleden'),
        future: TimeAgoPluralLabels(
            one: 'over {0} maand', other: 'over {0} maanden')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'dit kwartaal',
        past: TimeAgoPluralLabels(
            one: '{0} kwartaal geleden', other: '{0} kwartalen geleden'),
        future: TimeAgoPluralLabels(
            one: 'over {0} kwartaal', other: 'over {0} kwartalen')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'dit jaar', past: '{0} jaar geleden', future: 'over {0} jaar'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} seconde', other: '{0} seconden'),
    minute: TimeAgoPluralLabels(one: '{0} minuut', other: '{0} minuten'),
    hour: TimeAgoPluralLabels(one: '{0} uur', other: '{0} uur'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dagen'),
    week: TimeAgoPluralLabels(one: '{0} week', other: '{0} weken'),
    month: TimeAgoPluralLabels(one: '{0} maand', other: '{0} maanden'),
    quarter: TimeAgoPluralLabels(one: '{0} kwartaal', other: '{0} kwartalen'),
    year: TimeAgoPluralLabels(one: '{0} jaar', other: '{0} jaar'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} geleden',
    future: 'over {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nu', past: '{0} sec. geleden', future: 'over {0} sec.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'binnen een minuut',
        past: '{0} min. geleden',
        future: 'over {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'binnen een uur',
        past: '{0} uur geleden',
        future: 'over {0} uur'),
    day: TimeAgoRelativeUnitLabels(
        current: 'vandaag',
        past: TimeAgoPluralLabels(
            one: '{0} dag geleden', other: '{0} dgn geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} dag', other: 'over {0} dgn')),
    week: TimeAgoRelativeUnitLabels(
        current: 'deze week',
        past: TimeAgoPluralLabels(
            one: '{0} week geleden', other: '{0} weken geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} week', other: 'over {0} weken')),
    month: TimeAgoRelativeUnitLabels(
        current: 'deze maand',
        past: TimeAgoPluralLabels(
            one: '{0} maand geleden', other: '{0} maanden geleden'),
        future: TimeAgoPluralLabels(
            one: 'over {0} maand', other: 'over {0} maanden')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dit kwartaal',
        past: '{0} kwart. geleden',
        future: 'over {0} kwart.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'dit jaar', past: '{0} jaar geleden', future: 'over {0} jaar'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} uur'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dgn'),
    week: TimeAgoPluralLabels(one: '{0} week', other: '{0} weken'),
    month: TimeAgoPluralLabels(one: '{0} maand', other: '{0} maanden'),
    quarter: TimeAgoPluralLabels.same('{0} kwart.'),
    year: TimeAgoPluralLabels.same('{0} jaar'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} geleden',
    future: 'over {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nu', past: '{0} sec. geleden', future: 'over {0} sec.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'binnen een minuut',
        past: '{0} min. geleden',
        future: 'over {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'binnen een uur',
        past: '{0} uur geleden',
        future: 'over {0} uur'),
    day: TimeAgoRelativeUnitLabels(
        current: 'vandaag',
        past: TimeAgoPluralLabels(
            one: '{0} dag geleden', other: '{0} dgn geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} dag', other: 'over {0} dgn')),
    week: TimeAgoRelativeUnitLabels(
        current: 'deze week',
        past: TimeAgoPluralLabels(
            one: '{0} week geleden', other: '{0} weken geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} week', other: 'over {0} weken')),
    month: TimeAgoRelativeUnitLabels(
        current: 'deze maand',
        past: TimeAgoPluralLabels(
            one: '{0} maand geleden', other: '{0} maanden geleden'),
        future: TimeAgoPluralLabels(
            one: 'over {0} maand', other: 'over {0} maanden')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dit kwartaal',
        past: '{0} kw. geleden',
        future: 'over {0} kw.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'dit jaar', past: '{0} jaar geleden', future: 'over {0} jaar'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} uur'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dgn'),
    week: TimeAgoPluralLabels(one: '{0} week', other: '{0} weken'),
    month: TimeAgoPluralLabels(one: '{0} maand', other: '{0} maanden'),
    quarter: TimeAgoPluralLabels.same('{0} kw.'),
    year: TimeAgoPluralLabels.same('{0} jaar'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} geleden',
    future: 'over {0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} sec. geleden'),
        future: TimeAgoPluralLabels.same('over {0} sec.')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} min. geleden'),
        future: TimeAgoPluralLabels.same('over {0} min.')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} uur geleden'),
        future: TimeAgoPluralLabels.same('over {0} uur')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(
            one: '{0} dag geleden', other: '{0} dgn. geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} dag', other: 'over {0} dgn.')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(
            one: '{0} week geleden', other: '{0} wkn. geleden'),
        future:
            TimeAgoPluralLabels(one: 'over {0} week', other: 'over {0} wkn.')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} mnd. geleden'),
        future: TimeAgoPluralLabels.same('over {0} mnd.')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} kw. geleden'),
        future: TimeAgoPluralLabels.same('over {0} kw.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} jr. geleden'),
        future: TimeAgoPluralLabels.same('over {0} jr.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} uur'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dgn'),
    week: TimeAgoPluralLabels(one: '{0} week', other: '{0} wkn.'),
    month: TimeAgoPluralLabels.same('{0} mnd.'),
    quarter: TimeAgoPluralLabels.same('{0} kw.'),
    year: TimeAgoPluralLabels.same('{0} jr.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} geleden',
    future: 'over {0}',
  ),
  now: 'nu',
);
