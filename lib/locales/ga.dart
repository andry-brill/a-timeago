import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ga'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'inné',
    today: 'inniu',
    tomorrow: 'amárach',
    dateTime: '{1} ag {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 soicind ó shin',
    current: 'anois',
    future: 'i gceann 1 soicind',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ga';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'anois',
        past: TimeAgoPluralLabels(
            two: '{0} shoicind ó shin',
            few: '{0} shoicind ó shin',
            other: '{0} soicind ó shin'),
        future: TimeAgoPluralLabels(
            two: 'i gceann {0} shoicind',
            few: 'i gceann {0} shoicind',
            other: 'i gceann {0} soicind')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'an nóiméad seo',
        past: '{0} nóiméad ó shin',
        future: 'i gceann {0} nóiméad'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'an uair seo',
        past: TimeAgoPluralLabels(
            many: '{0} n-uair an chloig ó shin',
            other: '{0} uair an chloig ó shin'),
        future: TimeAgoPluralLabels(
            many: 'i gceann {0} n-uair an chloig',
            other: 'i gceann {0} uair an chloig')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'inniu', past: '{0} lá ó shin', future: 'i gceann {0} lá'),
    week: TimeAgoRelativeUnitLabels(
        current: 'an tseachtain seo',
        past: TimeAgoPluralLabels(
            two: '{0} sheachtain ó shin',
            few: '{0} seachtaine ó shin',
            many: '{0} seachtaine ó shin',
            other: '{0} seachtain ó shin'),
        future: TimeAgoPluralLabels(
            one: 'i gceann {0} seachtaine',
            two: 'i gceann {0} sheachtain',
            few: 'i gceann {0} seachtaine',
            many: 'i gceann {0} seachtaine',
            other: 'i gceann {0} seachtain')),
    month: TimeAgoRelativeUnitLabels(
        current: 'an mhí seo',
        past: TimeAgoPluralLabels(
            one: '{0} mhí ó shin',
            two: '{0} mhí ó shin',
            few: '{0} mhí ó shin',
            other: '{0} mí ó shin'),
        future: TimeAgoPluralLabels(
            one: 'i gceann {0} mhí',
            two: 'i gceann {0} mhí',
            few: 'i gceann {0} mhí',
            other: 'i gceann {0} mí')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'an ráithe seo',
        past: '{0} ráithe ó shin',
        future: 'i gceann {0} ráithe'),
    year: TimeAgoRelativeUnitLabels(
        current: 'i mbliana',
        past: TimeAgoPluralLabels(
            one: '{0} bhliain ó shin',
            two: '{0} bhliain ó shin',
            few: '{0} bliana ó shin',
            many: '{0} mbliana ó shin',
            other: '{0} bliain ó shin'),
        future: TimeAgoPluralLabels(
            one: 'i gceann {0} bliana',
            two: 'i gceann {0} bhliain',
            few: 'i gceann {0} bliana',
            many: 'i gceann {0} mbliana',
            other: 'i gceann {0} bliain')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        two: '{0} shoicind', few: '{0} shoicind', other: '{0} soicind'),
    minute: TimeAgoPluralLabels.same('{0} nóiméad'),
    hour: TimeAgoPluralLabels(
        many: '{0} n-uair an chloig', other: '{0} uair an chloig'),
    day: TimeAgoPluralLabels.same('{0} lá'),
    week: TimeAgoPluralLabels(
        one: '{0} seachtain',
        two: '{0} sheachtain',
        few: '{0} seachtaine',
        many: '{0} seachtaine',
        other: '{0} seachtain'),
    month: TimeAgoPluralLabels(
        one: '{0} mhí', two: '{0} mhí', few: '{0} mhí', other: '{0} mí'),
    quarter: TimeAgoPluralLabels.same('{0} ráithe'),
    year: TimeAgoPluralLabels(
        one: '{0} b',
        two: '{0} bhliain',
        few: '{0} bliana',
        many: '{0} mbliana',
        other: '{0} bliain'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ó shin',
    future: 'i gceann {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'anois',
        past: TimeAgoPluralLabels(
            two: '{0} shoic. ó shin',
            few: '{0} shoic. ó shin',
            other: '{0} soic. ó shin'),
        future: TimeAgoPluralLabels(
            two: 'i gceann {0} shoic.',
            few: 'i gceann {0} shoic.',
            other: 'i gceann {0} soic.')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'an nóiméad seo',
        past: '{0} nóim. ó shin',
        future: 'i gceann {0} nóim.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'an uair seo',
        past: TimeAgoPluralLabels(
            few: '{0} huaire ó shin',
            many: '{0} n-uaire ó shin',
            other: '{0} uair ó shin'),
        future: TimeAgoPluralLabels(
            few: 'i gceann {0} huaire',
            many: 'i gceann {0} n-uaire',
            other: 'i gceann {0} uair')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'inniu', past: '{0} lá ó shin', future: 'i gceann {0} lá'),
    week: TimeAgoRelativeUnitLabels(
        current: 'an tscht. seo',
        past: TimeAgoPluralLabels(
            two: '{0} shcht. ó shin',
            few: '{0} shcht. ó shin',
            other: '{0} scht. ó shin'),
        future: TimeAgoPluralLabels(
            two: 'i gceann {0} shcht.',
            few: 'i gceann {0} shcht.',
            other: 'i gceann {0} scht.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'an mhí seo',
        past: TimeAgoPluralLabels(
            one: '{0} mhí ó shin',
            two: '{0} mhí ó shin',
            few: '{0} mhí ó shin',
            other: '{0} mí ó shin'),
        future: TimeAgoPluralLabels(
            one: 'i gceann {0} míosa',
            two: 'i gceann {0} mhí',
            few: 'i gceann {0} mhí',
            other: 'i gceann {0} mí')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'an ráithe seo',
        past: '{0} ráithe ó shin',
        future: 'i gceann {0} ráithe'),
    year: TimeAgoRelativeUnitLabels(
        current: 'i mbl.',
        past: TimeAgoPluralLabels(
            one: '{0} bhl. ó shin',
            two: '{0} bhl. ó shin',
            many: '{0} mbl. ó shin',
            other: '{0} bl. ó shin'),
        future: TimeAgoPluralLabels(
            two: 'i gceann {0} bhl.',
            many: 'i gceann {0} mbl.',
            other: 'i gceann {0} bl.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        two: '{0} shoic.', few: '{0} shoic.', other: '{0} soic.'),
    minute: TimeAgoPluralLabels.same('{0} nóim.'),
    hour: TimeAgoPluralLabels(
        few: '{0} huaire', many: '{0} n-uaire', other: '{0} uair'),
    day: TimeAgoPluralLabels.same('{0} lá'),
    week: TimeAgoPluralLabels(
        two: '{0} shcht.', few: '{0} shcht.', other: '{0} scht.'),
    month: TimeAgoPluralLabels(
        one: '{0} m', two: '{0} mhí', few: '{0} mhí', other: '{0} mí'),
    quarter: TimeAgoPluralLabels.same('{0} ráithe'),
    year: TimeAgoPluralLabels(
        one: '{0} b', two: '{0} bhl.', many: '{0} mbl.', other: '{0} bl.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ó shin',
    future: 'i gceann {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'anois', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'an nóiméad seo', past: '-{0} n', future: '+{0} n'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'an uair seo', past: '-{0} u', future: '+{0} u'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'inniu', past: '-{0} lá', future: '+{0} lá'),
    week: TimeAgoRelativeUnitLabels(
        current: 'an tscht. seo',
        past: TimeAgoPluralLabels(
            two: '{0} shcht. ó shin',
            few: '{0} shcht. ó shin',
            other: '-{0} scht.'),
        future: TimeAgoPluralLabels(
            two: 'i gceann {0} shcht.',
            few: 'i gceann {0} shcht.',
            other: '+{0} scht.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'an mhí seo',
        past: TimeAgoPluralLabels(
            one: '-{0} mhí',
            two: '-{0} mhí',
            few: '-{0} mhí',
            other: '-{0} mí'),
        future: TimeAgoPluralLabels(
            one: '+{0} mhí',
            two: '+{0} mhí',
            few: '+{0} mhí',
            other: '+{0} mí')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'an ráithe seo', past: '-{0} R', future: '+{0} R'),
    year: TimeAgoRelativeUnitLabels(
        current: 'i mbl.',
        past: TimeAgoPluralLabels(
            one: '-{0} bhl.',
            two: '-{0} bhl.',
            many: '-{0} mbl.',
            other: '-{0} bl.'),
        future: TimeAgoPluralLabels(
            one: '+{0} bhl.',
            two: '+{0} bhl.',
            many: '+{0} mbl.',
            other: '+{0} bl.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} n'),
    hour: TimeAgoPluralLabels.same('{0} u'),
    day: TimeAgoPluralLabels.same('{0} lá'),
    week: TimeAgoPluralLabels(
        two: '{0} shcht.', few: '{0} shcht.', other: '{0} scht.'),
    month: TimeAgoPluralLabels(
        one: '{0} mhí', two: '{0} mhí', few: '{0} mhí', other: '{0} mí'),
    quarter: TimeAgoPluralLabels.same('{0} R'),
    year: TimeAgoPluralLabels(
        one: '{0} bhl.', two: '{0} bhl.', many: '{0} mbl.', other: '{0} bl.'),
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
