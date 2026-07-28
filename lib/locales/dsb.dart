import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'dsb'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'pśed 1 sekundu',
    current: 'něnto',
    future: 'za 1 sekundu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'dsb';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'něnto',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} sekundu',
            two: 'pśed {0} sekundoma',
            other: 'pśed {0} sekundami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} sekundu',
            two: 'za {0} sekunźe',
            few: 'za {0} sekundy',
            other: 'za {0} sekundow')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'w toś tej minuśe',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} minutu',
            two: 'pśed {0} minutoma',
            other: 'pśed {0} minutami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} minutu',
            two: 'za {0} minuśe',
            few: 'za {0} minuty',
            other: 'za {0} minutow')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'w toś tej góźinje',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} góźinu',
            two: 'pśed {0} góźinoma',
            other: 'pśed {0} góźinami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} góźinu',
            two: 'za {0} góźinje',
            few: 'za {0} góźiny',
            other: 'za {0} góźin')),
    day: TimeAgoRelativeUnitLabels(
        current: 'źinsa',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} dnjom',
            two: 'pśed {0} dnjoma',
            other: 'pśed {0} dnjami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} źeń',
            two: 'za {0} dnja',
            few: 'za {0} dny',
            other: 'za {0} dnjow')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ten tyźeń',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} tyźenjom',
            two: 'pśed {0} tyźenjoma',
            other: 'pśed {0} tyźenjami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} tyźeń',
            two: 'za {0} tyźenja',
            few: 'za {0} tyźenje',
            other: 'za {0} tyźenjow')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ten mjasec',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} mjasecom',
            two: 'pśed {0} mjasecoma',
            other: 'pśed {0} mjasecami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} mjasec',
            two: 'za {0} mjaseca',
            few: 'za {0} mjasecy',
            other: 'za {0} mjasecow')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'toś ten kwartal',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} kwartalom',
            two: 'pśed {0} kwartaloma',
            other: 'pśed {0} kwartalami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} kwartal',
            two: 'za {0} kwartala',
            few: 'za {0} kwartale',
            other: 'za {0} kwartalow')),
    year: TimeAgoRelativeUnitLabels(
        current: 'lětosa',
        past: TimeAgoPluralLabels(
            one: 'pśed {0} lětom',
            two: 'pśed {0} lětoma',
            other: 'pśed {0} lětami'),
        future: TimeAgoPluralLabels(
            one: 'za {0} lěto',
            two: 'za {0} lěśe',
            few: 'za {0} lěta',
            other: 'za {0} lět')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekundu',
        two: '{0} sekun',
        few: '{0} sekund',
        other: '{0} sekund'),
    minute: TimeAgoPluralLabels(
        one: '{0} minutu',
        two: '{0} minu',
        few: '{0} minut',
        other: '{0} minut'),
    hour: TimeAgoPluralLabels(
        one: '{0} góźinu',
        two: '{0} góźin',
        few: '{0} góźin',
        other: '{0} góźin'),
    day: TimeAgoPluralLabels(
        one: '{0} dnjom', two: '{0} dnj', few: '{0} dn', other: '{0} dnj'),
    week: TimeAgoPluralLabels(
        one: '{0} tyźe',
        two: '{0} tyźenj',
        few: '{0} tyźenj',
        other: '{0} tyźenj'),
    month: TimeAgoPluralLabels(
        one: '{0} mjasec',
        two: '{0} mjasec',
        few: '{0} mjasec',
        other: '{0} mjasec'),
    quarter: TimeAgoPluralLabels(
        one: '{0} kwartal',
        two: '{0} kwartal',
        few: '{0} kwartal',
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
    past: 'pśed {0}ami',
    future: 'za {0}ow',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'něnto', past: 'pśed {0} sek.', future: 'za {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'w toś tej minuśe',
        past: 'pśed {0} min.',
        future: 'za {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'w toś tej góźinje',
        past: 'pśed {0} góź.',
        future: 'za {0} góź.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'źins.',
        past: TimeAgoPluralLabels.same('pśed {0} dnj.'),
        future: TimeAgoPluralLabels(
            one: 'za {0} źeń', few: 'za {0} dny', other: 'za {0} dnj.')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tot. tyźeń', past: 'pśed {0} tyź.', future: 'za {0} tyź.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tot. mjasec', past: 'pśed {0} mjas.', future: 'za {0} mjas.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'toś ten kwartal',
        past: 'pśed {0} kwart.',
        future: 'za {0} kwart.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'lěts.', past: 'pśed {0} l.', future: 'za {0} l.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} góź.'),
    day: TimeAgoPluralLabels(one: '{0} dnj.', few: '{0} dn', other: '{0} dnj.'),
    week: TimeAgoPluralLabels.same('{0} tyź.'),
    month: TimeAgoPluralLabels.same('{0} mjas.'),
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
    past: 'pśed {0}',
    future: 'za {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'něnto', past: 'pśed {0} s', future: 'za {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'w toś tej minuśe', past: 'pśed {0} m', future: 'za {0} m'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'w toś tej góźinje', past: 'pśed {0} g', future: 'za {0} g'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'źis.', past: 'pśed {0} d', future: 'za {0} ź'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'te. tyźeń', past: 'pśed {0} tyź.', future: 'za {0} tyź.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'te. mjasec', past: 'pśed {0} mjas.', future: 'za {0} mjas.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'toś ten kwartal', past: 'pśed {0} kw.', future: 'za {0} kw.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'lět.', past: 'pśed {0} l.', future: 'za {0} l.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} g'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} tyź.'),
    month: TimeAgoPluralLabels.same('{0} mjas.'),
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
    past: 'pśed {0}',
    future: 'za {0}',
  ),
);
