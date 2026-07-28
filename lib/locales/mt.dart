import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'mt'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'sekonda ilu',
    current: 'issa',
    future: 'sa sekonda oħra',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'mt';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'issa',
        past: TimeAgoPluralLabels(
            one: 'sekonda ilu',
            two: '{0} sekondi ilu',
            few: '{0} sekondi ilu',
            many: '{0}-il sekonda ilu',
            other: '{0} sekonda ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa sekonda oħra',
            two: 'sa {0} sekondi oħra',
            few: 'sa {0} sekondi oħra',
            many: 'sa {0}-il sekonda oħra',
            other: 'sa {0} sekonda oħra')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'din il-minuta',
        past: TimeAgoPluralLabels(
            one: 'minuta ilu',
            two: '{0} minuti ilu',
            few: '{0} minuti ilu',
            many: '{0}-il minuta ilu',
            other: '{0} minuta ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa minuta oħra',
            two: 'sa {0} minuti oħra',
            few: 'sa {0} minuti oħra',
            many: 'sa {0}-il minuta oħra',
            other: 'sa {0} minuta oħra')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'din is-siegħa',
        past: TimeAgoPluralLabels(
            one: 'siegħa ilu',
            two: 'sagħtejn ilu',
            few: '{0} sigħat ilu',
            many: '{0}-il siegħa ilu',
            other: '{0} siegħa ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien siegħa oħra',
            two: 'fi żmien sagħtejn',
            few: 'fi żmien {0} sigħat',
            many: 'fi żmien {0}-il siegħa',
            other: 'fi żmien {0} siegħa')),
    day: TimeAgoRelativeUnitLabels(
        current: 'illum',
        past: TimeAgoPluralLabels(
            one: 'ġurnata ilu',
            two: 'jumejn ilu',
            few: '{0} ġranet ilu',
            many: '{0}-il ġurnata ilu',
            other: '{0} ġurnata ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien ġurnata',
            two: 'fi żmien jumejn oħra',
            few: 'fi żmien {0} ġranet oħra',
            many: 'fi żmien {0}-il ġurnata oħra',
            other: 'fi żmien {0} ġurnata oħra')),
    week: TimeAgoRelativeUnitLabels(
        current: 'din il-ġimgħa',
        past: TimeAgoPluralLabels(
            one: 'ġimgħa ilu',
            two: 'ġimagħtejn ilu',
            few: '{0} ġimgħat ilu',
            many: '{0}-il ġimgħa ilu',
            other: '{0} ġimgħa ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa ġimgħa oħra',
            two: 'sa ġimagħtejn oħra',
            few: 'sa {0} ġimgħat oħra',
            many: 'sa {0}-il ġimgħa oħra',
            other: 'sa {0} ġimgħa oħra')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dan ix-xahar',
        past: TimeAgoPluralLabels(
            one: 'xahar ilu',
            two: 'xahrejn ilu',
            few: '{0} xhur ilu',
            many: '{0}-il xahar ilu',
            other: '{0} xahar ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa xahar ieħor',
            two: 'fi xahrejn oħra',
            few: 'fi {0} xhur oħra',
            many: 'fi {0}-xahar oħra',
            other: 'fi {0} xahar oħra')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'il-kwart ta’ sena li qegħdin fih',
        past: TimeAgoPluralLabels(
            one: 'il-kwart ta’ sena li għadda',
            two: '{0} kwarti ta’ sena li għaddew',
            few: '{0} kwarti ta’ sena li għaddew',
            many: '{0}-il kwart ta’ sena li għaddew',
            other: '{0} kwart ta’ sena li għaddew'),
        future: TimeAgoPluralLabels(
            two: 'f’{0} kwarti ta’ sena oħrajn',
            few: 'f’{0} kwarti ta’ sena oħrajn',
            many: 'f’{0}-il kwart ta’ sena oħrajn',
            other: 'f’{0} kwart ta’ sena oħrajn')),
    year: TimeAgoRelativeUnitLabels(
        current: 'din is-sena',
        past: TimeAgoPluralLabels(
            one: 'sena ilu',
            two: 'sentejn ilu',
            few: '{0} snin ilu',
            many: '{0}-il sena ilu',
            other: '{0} sena ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien sena',
            two: 'fi żmien sentejn oħra',
            few: 'fi żmien {0} snin oħra',
            many: 'fi żmien {0}-il sena oħra',
            other: 'fi żmien {0} sena oħra')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: 'sekonda',
        two: '{0} sekondi',
        few: '{0} sekondi',
        many: '{0}-il sekonda',
        other: '{0} sekonda'),
    minute: TimeAgoPluralLabels(
        one: 'minuta',
        two: '{0} minuti',
        few: '{0} minuti',
        many: '{0}-il minuta',
        other: '{0} minuta'),
    hour: TimeAgoPluralLabels(
        one: 'siegħa',
        two: 'sagħtejn',
        few: '{0} sigħat',
        many: '{0}-il siegħa',
        other: '{0} siegħa'),
    day: TimeAgoPluralLabels(
        one: 'ġurnata',
        two: 'jumejn',
        few: '{0} ġranet',
        many: '{0}-il ġurnata',
        other: '{0} ġurnata'),
    week: TimeAgoPluralLabels(
        one: 'ġimgħa',
        two: 'ġimagħtejn',
        few: '{0} ġimgħat',
        many: '{0}-il ġimgħa',
        other: '{0} ġimgħa'),
    month: TimeAgoPluralLabels(
        one: 'xahar',
        two: 'xahrejn',
        few: '{0} xhur',
        many: '{0}-',
        other: '{0} xahar'),
    quarter: TimeAgoPluralLabels(
        one: 'il-kwart ta’ sena li għadda',
        two: '{0} kwarti ta’ sena',
        few: '{0} kwarti ta’ sena',
        many: '{0}-il kwart ta’ sena',
        other: '{0} kwart ta’ sena'),
    year: TimeAgoPluralLabels(
        one: 'sena',
        two: 'sentejn',
        few: '{0} snin',
        many: '{0}-il sena',
        other: '{0} sena'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ilu',
    future: 'sa {0} oħra',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'issa',
        past: TimeAgoPluralLabels(
            one: 'sek. ilu', many: '{0}-il sek. ilu', other: '{0} sek. ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa sek. oħra',
            many: 'sa {0}-il sek. oħra',
            other: 'sa {0} sek. oħra')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'din il-minuta',
        past: TimeAgoPluralLabels(
            one: 'min. ilu', many: '{0}-il min. ilu', other: '{0} min. ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa min. oħra',
            many: 'sa {0}-il min. oħra',
            other: 'sa {0} min. oħra')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'din is-siegħa',
        past: TimeAgoPluralLabels(
            one: 'siegħa ilu',
            two: 'sagħtejn ilu',
            few: '{0} sigħat ilu',
            many: '{0}-il siegħa ilu',
            other: '{0} siegħa ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien siegħa oħra',
            two: 'fi żmien sagħtejn',
            few: 'fi żmien {0} sigħat',
            many: 'fi żmien {0}-il siegħa',
            other: 'fi żmien {0} siegħa')),
    day: TimeAgoRelativeUnitLabels(
        current: 'illum',
        past: TimeAgoPluralLabels(
            one: 'ġurnata ilu',
            two: 'jumejn ilu',
            few: '{0} ġranet ilu',
            many: '{0}-il ġurnata ilu',
            other: '{0} ġurnata ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien ġurnata',
            two: 'fi żmien jumejn oħra',
            few: 'fi żmien {0} ġranet oħra',
            many: 'fi żmien {0}-il ġurnata oħra',
            other: 'fi żmien {0} ġurnata oħra')),
    week: TimeAgoRelativeUnitLabels(
        current: 'din il-ġimgħa',
        past: TimeAgoPluralLabels(
            one: 'ġimgħa ilu',
            two: 'ġimagħtejn ilu',
            few: '{0} ġimgħat ilu',
            many: '{0}-il ġimgħa ilu',
            other: '{0} ġimgħa ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa ġimgħa oħra',
            two: 'sa ġimagħtejn oħra',
            few: 'sa {0} ġimgħat oħra',
            many: 'sa {0}-il ġimgħa oħra',
            other: 'sa {0} ġimgħa oħra')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dan ix-xahar',
        past: TimeAgoPluralLabels(
            two: 'xahrejn ilu',
            few: '{0} xhur ilu',
            many: '{0}-il xahar ilu',
            other: '{0} xahar ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa xahar ieħor',
            two: 'sa xahrejn oħra',
            few: 'sa {0} xhur oħra',
            many: 'sa {0}-il xahar oħra',
            other: 'sa {0} xahar oħra')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'il-kwart ta’ sena li qegħdin fih',
        past: TimeAgoPluralLabels(
            one: 'fil-kwart tas-sena li għadda',
            two: '{0} kwarti ta’ sena ilu',
            few: '{0} kwarti ta’ sena ilu',
            many: '{0}-il kwart ta’ sena ilu',
            other: '{0} kwart ta’ sena ilu'),
        future: TimeAgoPluralLabels(
            one: 'fil-kwart tas-sena li ġej',
            two: 'f’{0} kwarti ta’ sena oħrajn',
            few: 'f’{0} kwarti ta’ sena oħrajn',
            many: 'f’{0}-il kwart ta’ sena oħrajn',
            other: 'f’{0} kwart ta’ sena oħrajn')),
    year: TimeAgoRelativeUnitLabels(
        current: 'din is-sena',
        past: TimeAgoPluralLabels(
            one: 'sa sena ilu',
            two: 'sentejn ilu',
            few: '{0} snin ilu',
            many: '{0}-il sena ilu',
            other: '{0} sena ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien sena',
            two: 'fi żmien sentejn oħra',
            few: 'fi żmien {0} snin oħra',
            many: 'fi żmien {0}-il sena oħra',
            other: 'fi żmien {0} sena oħra')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: 'sek.', many: '{0}-il sek.', other: '{0} sek.'),
    minute: TimeAgoPluralLabels(
        one: 'min.', many: '{0}-il min.', other: '{0} min.'),
    hour: TimeAgoPluralLabels(
        one: 'siegħa',
        two: 'sagħtejn',
        few: '{0} sigħat',
        many: '{0}-il siegħa',
        other: '{0} siegħa'),
    day: TimeAgoPluralLabels(
        one: 'ġurnata',
        two: 'jumejn',
        few: '{0} ġranet',
        many: '{0}-il ġurnata',
        other: '{0} ġurnata'),
    week: TimeAgoPluralLabels(
        one: 'ġimgħa',
        two: 'ġimagħtejn',
        few: '{0} ġimgħat',
        many: '{0}-il ġimgħa',
        other: '{0} ġimgħa'),
    month: TimeAgoPluralLabels(
        one: '{0} xahar',
        two: 'xahrejn',
        few: '{0} xhur',
        many: '{0}-il xahar',
        other: '{0} xahar'),
    quarter: TimeAgoPluralLabels(
        one: 'fil-kwart tas-sena li għadda',
        two: '{0} kwarti ta’ sena',
        few: '{0} kwarti ta’ sena',
        many: '{0}-il kwart ta’ sena',
        other: '{0} kwart ta’ sena'),
    year: TimeAgoPluralLabels(
        one: 'sa sena',
        two: 'sentejn',
        few: '{0} snin',
        many: '{0}-il sena',
        other: '{0} sena'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ilu',
    future: 'sa {0} oħra',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'issa',
        past: TimeAgoPluralLabels(
            one: 'sek. ilu', many: '{0}-il sek. ilu', other: '{0} sek. ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa sek. oħra',
            many: 'sa {0}-il sek. oħra',
            other: 'sa {0} sek. oħra')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'din il-minuta',
        past: TimeAgoPluralLabels(
            one: 'min. ilu', many: '{0}-il min. ilu', other: '{0} min. ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa min. oħra',
            many: 'sa {0}-il min',
            other: 'sa {0} min. oħra')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'din is-siegħa',
        past: TimeAgoPluralLabels(
            one: 'siegħa ilu',
            two: 'sagħtejn ilu',
            few: '{0} sigħat ilu',
            many: '{0}-il siegħa ilu',
            other: '{0} siegħa ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien siegħa oħra',
            two: 'fi żmien sagħtejn',
            few: 'fi żmien {0} sigħat',
            many: 'fi żmien {0}-il siegħa',
            other: 'fi żmien {0} siegħa')),
    day: TimeAgoRelativeUnitLabels(
        current: 'illum',
        past: TimeAgoPluralLabels(
            one: 'ġurnata ilu',
            two: 'jumejn ilu',
            few: '{0} ġranet ilu',
            many: '{0}-il ġurnata ilu',
            other: '{0} ġurnata ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien ġurnata',
            two: 'fi żmien jumejn oħra',
            many: 'fi żmien {0}-il ġurnata oħra',
            other: 'fi żmien {0} ġurnata oħra')),
    week: TimeAgoRelativeUnitLabels(
        current: 'din il-ġimgħa',
        past: TimeAgoPluralLabels(
            one: 'ġimgħa ilu',
            two: 'ġimagħtejn ilu',
            few: '{0} ġimgħat ilu',
            many: '{0}-il ġimgħa ilu',
            other: '{0} ġimgħa ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa ġimgħa oħra',
            two: 'sa ġimagħtejn oħra',
            few: 'sa {0} ġimgħat oħra',
            many: 'sa {0}-il ġimgħa oħra',
            other: 'sa {0} ġimgħa oħra')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dan ix-xahar',
        past: TimeAgoPluralLabels(
            one: 'xahar ilu',
            two: 'xahrejn ilu',
            few: '{0} xhur ilu',
            many: '{0}-il xahar ilu',
            other: '{0} xahar ilu'),
        future: TimeAgoPluralLabels(
            one: 'sa xahar ieħor',
            two: 'sa xahrejn oħra',
            few: 'sa {0} xhur oħra',
            many: 'sa {0}-il xahar oħra',
            other: 'sa {0} xahar oħra')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'il-kwart ta’ sena li qegħdin fih',
        past: TimeAgoPluralLabels(
            one: 'fil-kwart tas-sena li għadda',
            two: '{0} kwarti ta’ sena ilu',
            few: '{0} kwarti ta’ sena ilu',
            many: '{0}-il kwart ta’ sena ilu',
            other: '{0} kwart ta’ sena ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi kwart ta’ sena ieħor',
            two: 'f’{0} kwarti ta’ sena oħrajn',
            few: 'f’{0} kwarti ta’ sena oħrajn',
            many: 'f’{0}-il kwart ta’ sena oħrajn',
            other: 'f’{0} kwart ta’ sena oħrajn')),
    year: TimeAgoRelativeUnitLabels(
        current: 'din is-sena',
        past: TimeAgoPluralLabels(
            one: 'sena ilu',
            two: 'sentejn ilu',
            few: '{0} snin ilu',
            many: '{0}-il sena ilu',
            other: '{0} sena ilu'),
        future: TimeAgoPluralLabels(
            one: 'fi żmien sena',
            two: 'fi żmien sentejn oħra',
            few: 'fi żmien {0} snin oħra',
            many: 'fi żmien {0}-il sena oħra',
            other: 'fi żmien {0} sena oħra')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: 'sek.', many: '{0}-il sek.', other: '{0} sek.'),
    minute:
        TimeAgoPluralLabels(one: 'min.', many: '{0}-il min', other: '{0} min.'),
    hour: TimeAgoPluralLabels(
        one: 'siegħa',
        two: 'sagħtejn',
        few: '{0} sigħat',
        many: '{0}-il siegħa',
        other: '{0} siegħa'),
    day: TimeAgoPluralLabels(
        one: 'ġurnata',
        two: 'jumejn',
        few: '{0} ġ',
        many: '{0}-il ġurnata',
        other: '{0} ġurnata'),
    week: TimeAgoPluralLabels(
        one: 'ġimgħa',
        two: 'ġimagħtejn',
        few: '{0} ġimgħat',
        many: '{0}-il ġimgħa',
        other: '{0} ġimgħa'),
    month: TimeAgoPluralLabels(
        one: 'xahar',
        two: 'xahrejn',
        few: '{0} xhur',
        many: '{0}-il xahar',
        other: '{0} xahar'),
    quarter: TimeAgoPluralLabels(
        one: 'fil-kwart tas-sena li għadda',
        two: '{0} kwarti ta’ sena',
        few: '{0} kwarti ta’ sena',
        many: '{0}-il kwart ta’ sena',
        other: '{0} kwart ta’ sena'),
    year: TimeAgoPluralLabels(
        one: 'sena',
        two: 'sentejn',
        few: '{0} snin',
        many: '{0}-il sena',
        other: '{0} sena'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ilu',
    future: 'sa {0} oħra',
  ),
);
