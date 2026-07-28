import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'lt'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'prieš 1 sekundę',
    current: 'dabar',
    future: 'po 1 sekundės',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'lt';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'dabar',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} sekundę',
            few: 'prieš {0} sekundes',
            many: 'prieš {0} sekundės',
            other: 'prieš {0} sekundžių'),
        future: TimeAgoPluralLabels(
            one: 'po {0} sekundės',
            many: 'po {0} sekundės',
            other: 'po {0} sekundžių')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'šią minutę',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} minutę',
            few: 'prieš {0} minutes',
            many: 'prieš {0} minutės',
            other: 'prieš {0} minučių'),
        future: TimeAgoPluralLabels(
            one: 'po {0} minutės',
            many: 'po {0} minutės',
            other: 'po {0} minučių')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'šią valandą',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} valandą',
            few: 'prieš {0} valandas',
            many: 'prieš {0} valandos',
            other: 'prieš {0} valandų'),
        future: TimeAgoPluralLabels(
            one: 'po {0} valandos',
            many: 'po {0} valandos',
            other: 'po {0} valandų')),
    day: TimeAgoRelativeUnitLabels(
        current: 'šiandien',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} dieną',
            few: 'prieš {0} dienas',
            many: 'prieš {0} dienos',
            other: 'prieš {0} dienų'),
        future: TimeAgoPluralLabels(
            one: 'po {0} dienos',
            many: 'po {0} dienos',
            other: 'po {0} dienų')),
    week: TimeAgoRelativeUnitLabels(
        current: 'šią savaitę',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} savaitę',
            few: 'prieš {0} savaites',
            many: 'prieš {0} savaitės',
            other: 'prieš {0} savaičių'),
        future: TimeAgoPluralLabels(
            one: 'po {0} savaitės',
            many: 'po {0} savaitės',
            other: 'po {0} savaičių')),
    month: TimeAgoRelativeUnitLabels(
        current: 'šį mėnesį',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} mėnesį',
            few: 'prieš {0} mėnesius',
            many: 'prieš {0} mėnesio',
            other: 'prieš {0} mėnesių'),
        future: TimeAgoPluralLabels(
            one: 'po {0} mėnesio',
            many: 'po {0} mėnesio',
            other: 'po {0} mėnesių')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'šis ketvirtis',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} ketvirtį',
            few: 'prieš {0} ketvirčius',
            many: 'prieš {0} ketvirčio',
            other: 'prieš {0} ketvirčių'),
        future: TimeAgoPluralLabels(
            one: 'po {0} ketvirčio',
            many: 'po {0} ketvirčio',
            other: 'po {0} ketvirčių')),
    year: TimeAgoRelativeUnitLabels(
        current: 'šiais metais',
        past: TimeAgoPluralLabels(
            one: 'prieš {0} metus',
            few: 'prieš {0} metus',
            other: 'prieš {0} metų'),
        future: TimeAgoPluralLabels.same('po {0} metų')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: '{0} sekund',
        few: '{0} sekund',
        many: '{0} sekundės',
        other: '{0} sekundžių'),
    minute: TimeAgoPluralLabels(
        one: '{0} minut',
        few: '{0} minu',
        many: '{0} minutės',
        other: '{0} minučių'),
    hour: TimeAgoPluralLabels(
        one: '{0} valand',
        few: '{0} valand',
        many: '{0} valandos',
        other: '{0} valandų'),
    day: TimeAgoPluralLabels(
        one: '{0} dien',
        few: '{0} dien',
        many: '{0} dienos',
        other: '{0} dienų'),
    week: TimeAgoPluralLabels(
        one: '{0} savait',
        few: '{0} savai',
        many: '{0} savaitės',
        other: '{0} savaičių'),
    month: TimeAgoPluralLabels(
        one: '{0} mėnes',
        few: '{0} mėnesi',
        many: '{0} mėnesio',
        other: '{0} mėnesių'),
    quarter: TimeAgoPluralLabels(
        one: '{0} ketvir',
        few: '{0} ketvirči',
        many: '{0} ketvirčio',
        other: '{0} ketvirčių'),
    year:
        TimeAgoPluralLabels(one: '{0} met', few: '{0} met', other: '{0} metų'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'prieš {0}',
    future: 'po {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'dabar', past: 'prieš {0} sek.', future: 'po {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'šią minutę', past: 'prieš {0} min.', future: 'po {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'šią valandą', past: 'prieš {0} val.', future: 'po {0} val.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'šiandien', past: 'prieš {0} d.', future: 'po {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'šią savaitę', past: 'prieš {0} sav.', future: 'po {0} sav.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'šį mėnesį', past: 'prieš {0} mėn.', future: 'po {0} mėn.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'šis ketvirtis',
        past: 'prieš {0} ketv.',
        future: 'po {0} ketv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'šiais metais', past: 'prieš {0} m.', future: 'po {0} m.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} val.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} sav.'),
    month: TimeAgoPluralLabels.same('{0} mėn.'),
    quarter: TimeAgoPluralLabels.same('{0} ketv.'),
    year: TimeAgoPluralLabels.same('{0} m.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'prieš {0}',
    future: 'po {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'dabar', past: 'prieš {0} s', future: 'po {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'šią minutę', past: 'prieš {0} min.', future: 'po {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'šią valandą', past: 'prieš {0} val.', future: 'po {0} val.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'šiandien', past: 'prieš {0} d.', future: 'po {0} d.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'šią savaitę', past: 'prieš {0} sav.', future: 'po {0} sav.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'šį mėnesį', past: 'prieš {0} mėn.', future: 'po {0} mėn.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'šis ketvirtis',
        past: 'prieš {0} ketv.',
        future: 'po {0} ketv.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'šiais metais', past: 'prieš {0} m.', future: 'po {0} m.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} val.'),
    day: TimeAgoPluralLabels.same('{0} d.'),
    week: TimeAgoPluralLabels.same('{0} sav.'),
    month: TimeAgoPluralLabels.same('{0} mėn.'),
    quarter: TimeAgoPluralLabels.same('{0} ketv.'),
    year: TimeAgoPluralLabels.same('{0} m.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'prieš {0}',
    future: 'po {0}',
  ),
);
