import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'hsb'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'před 1 sekundu',
    current: 'nětko',
    future: 'za 1 sekundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'hsb';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nětko',
        past: TimeAgoPluralLabels(
            one: 'před {0} sekundu',
            two: 'před {0} sekundomaj',
            other: 'před {0} sekundami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sekundu',
            two: 'za {0} sekundźe',
            few: 'za {0} sekundy',
            other: 'za {0} sekundow')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'w tutej mjeńšinje',
        past: TimeAgoPluralLabels(
            one: 'před {0} minutu',
            two: 'před {0} minutomaj',
            other: 'před {0} minutami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} minutu',
            two: 'za {0} minuće',
            few: 'za {0} minuty',
            other: 'za {0} minutow')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'w tutej hodźinje',
        past: TimeAgoPluralLabels(
            one: 'před {0} hodźinu',
            two: 'před {0} hodźinomaj',
            other: 'před {0} hodźinami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} hodźinu',
            two: 'za {0} hodźinje',
            few: 'za {0} hodźiny',
            other: 'za {0} hodźin')),
    day: TimeAgoRelativeUnitLabels(
        current: 'dźensa',
        past: TimeAgoPluralLabels(
            one: 'před {0} dnjom',
            two: 'před {0} dnjomaj',
            other: 'před {0} dnjemi'),
        future: TimeAgoPluralLabels(
            one: 'za {0} dźeń',
            two: 'za {0} dnjej',
            few: 'za {0} dny',
            other: 'za {0} dnjow')),
    week: TimeAgoRelativeUnitLabels(
        current: 'tutón tydźeń',
        past: TimeAgoPluralLabels(
            one: 'před {0} tydźenjom',
            two: 'před {0} tydźenjomaj',
            other: 'před {0} tydźenjemi'),
        future: TimeAgoPluralLabels(
            one: 'za {0} tydźeń',
            two: 'za {0} tydźenjej',
            few: 'za {0} tydźenje',
            other: 'za {0} tydźenjow')),
    month: TimeAgoRelativeUnitLabels(
        current: 'tutón měsac',
        past: TimeAgoPluralLabels(
            one: 'před {0} měsacom',
            two: 'před {0} měsacomaj',
            other: 'před {0} měsacami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} měsac',
            two: 'za {0} měsacaj',
            few: 'za {0} měsacy',
            other: 'za {0} měsacow')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'tutón kwartal',
        past: TimeAgoPluralLabels(
            one: 'před {0} kwartalom',
            two: 'před {0} kwartalomaj',
            other: 'před {0} kwartalemi'),
        future: TimeAgoPluralLabels(
            one: 'za {0} kwartal',
            two: 'za {0} kwartalej',
            few: 'za {0} kwartale',
            other: 'za {0} kwartalow')),
    year: TimeAgoRelativeUnitLabels(
        current: 'lětsa',
        past: TimeAgoPluralLabels(
            one: 'před {0} lětom',
            two: 'před {0} lětomaj',
            other: 'před {0} lětami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} lěto',
            two: 'za {0} lěće',
            few: 'za {0} lěta',
            other: 'za {0} lět')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekundu',
        two: '{0} sekund',
        few: '{0} sekund',
        other: '{0} sekund'),
    minute: TimeAgoPluralLabels(
        one: '{0} minutu',
        two: '{0} minu',
        few: '{0} minut',
        other: '{0} minut'),
    hour: TimeAgoPluralLabels(
        one: '{0} hodźinu',
        two: '{0} hodźin',
        few: '{0} hodźin',
        other: '{0} hodźin'),
    day: TimeAgoPluralLabels(
        one: '{0} d', two: '{0} dnj', few: '{0} dn', other: '{0} dnj'),
    week: TimeAgoPluralLabels(
        one: '{0} tydźe',
        two: '{0} tydźenj',
        few: '{0} tydźenje',
        other: '{0} tydźenj'),
    month: TimeAgoPluralLabels(
        one: '{0} měsac',
        two: '{0} měsac',
        few: '{0} měsac',
        other: '{0} měsac'),
    quarter: TimeAgoPluralLabels(
        one: '{0} kwartal',
        two: '{0} kwartal',
        few: '{0} kwartale',
        other: '{0} kwartal'),
    year: TimeAgoPluralLabels(
        one: '{0} lěto', two: '{0} lě', few: '{0} lěta', other: '{0} lět'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'před {0}ami',
    future: 'za {0}ow',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nětko', past: 'před {0} sek.', future: 'za {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'w tutej mjeńšinje',
        past: 'před {0} min.',
        future: 'za {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'w tutej hodźinje',
        past: 'před {0} hodź.',
        future: 'za {0} hodź.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'dźens.',
        past: TimeAgoPluralLabels.same('před {0} dnj.'),
        future: TimeAgoPluralLabels(
            one: 'za {0} dźeń', few: 'za {0} dny', other: 'za {0} dnj.')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tut. tydźeń', past: 'před {0} tydź.', future: 'za {0} tydź.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tut. měsac', past: 'před {0} měs.', future: 'za {0} měs.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tutón kwartal',
        past: 'před {0} kwart.',
        future: 'za {0} kwart.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'lěts.', past: 'před {0} l.', future: 'za {0} l.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} hodź.'),
    day: TimeAgoPluralLabels(one: '{0} d', few: '{0} dn', other: '{0} dnj.'),
    week: TimeAgoPluralLabels.same('{0} tydź.'),
    month: TimeAgoPluralLabels.same('{0} měs.'),
    quarter: TimeAgoPluralLabels.same('{0} kwart.'),
    year: TimeAgoPluralLabels.same('{0} l.'),
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

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nětko', past: 'před {0} s', future: 'za {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'w tutej mjeńšinje', past: 'před {0} m', future: 'za {0} m'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'w tutej hodźinje', past: 'před {0} h', future: 'za {0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'dźe.', past: 'před {0} d', future: 'za {0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tu. tydźeń', past: 'před {0} tydź.', future: 'za {0} tydź.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tu. měsac', past: 'před {0} měs.', future: 'za {0} měs.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tutón kwartal', past: 'před {0} kw.', future: 'za {0} kw.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'lět.', past: 'před {0} l.', future: 'za {0} l.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} tydź.'),
    month: TimeAgoPluralLabels.same('{0} měs.'),
    quarter: TimeAgoPluralLabels.same('{0} kw.'),
    year: TimeAgoPluralLabels.same('{0} l.'),
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
