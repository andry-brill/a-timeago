import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'gd'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 diog air ais',
    current: 'an-dràsta',
    future: 'an ceann 1 diog',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'gd';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'an-dràsta',
        past: TimeAgoPluralLabels(
            two: '{0} dhiog air ais',
            few: '{0} diogan air ais',
            other: '{0} diog air ais'),
        future: TimeAgoPluralLabels(
            two: 'an ceann {0} dhiog',
            few: 'an ceann {0} diogan',
            other: 'an ceann {0} diog')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'am broinn mionaid',
        past: TimeAgoPluralLabels(
            one: '{0} mhionaid air ais',
            two: '{0} mhionaid air ais',
            few: '{0} mionaidean air ais',
            other: '{0} mionaid air ais'),
        future: TimeAgoPluralLabels(
            one: 'an ceann {0} mhionaid',
            two: 'an ceann {0} mhionaid',
            few: 'an ceann {0} mionaidean',
            other: 'an ceann {0} mionaid')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'am broinn uair a thìde',
        past: TimeAgoPluralLabels(
            few: '{0} uairean a thìde air ais',
            other: '{0} uair a thìde air ais'),
        future: TimeAgoPluralLabels(
            few: 'an ceann {0} uairean a thìde',
            other: 'an ceann {0} uair a thìde')),
    day: TimeAgoRelativeUnitLabels(
        current: 'an-diugh',
        past: TimeAgoPluralLabels(
            few: '{0} làithean air ais', other: '{0} latha air ais'),
        future: TimeAgoPluralLabels(
            few: 'an ceann {0} làithean', other: 'an ceann {0} latha')),
    week: TimeAgoRelativeUnitLabels(
        current: 'an t-seachdain seo',
        past: TimeAgoPluralLabels(
            two: '{0} sheachdain air ais',
            few: '{0} seachdainean air ais',
            other: '{0} seachdain air ais'),
        future: TimeAgoPluralLabels(
            two: 'an ceann {0} sheachdain',
            few: 'an ceann {0} seachdainean',
            other: 'an ceann {0} seachdain')),
    month: TimeAgoRelativeUnitLabels(
        current: 'am mìos seo',
        past: TimeAgoPluralLabels(
            one: '{0} mhìos air ais',
            two: '{0} mhìos air ais',
            few: '{0} mìosan air ais',
            other: '{0} mìos air ais'),
        future: TimeAgoPluralLabels(
            one: 'an ceann {0} mhìosa',
            two: 'an ceann {0} mhìosa',
            few: 'an ceann {0} mìosan',
            other: 'an ceann {0} mìosa')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'an cairteal seo',
        past: TimeAgoPluralLabels(
            one: '{0} chairteal air ais',
            two: '{0} chairteal air ais',
            few: '{0} cairtealan air ais',
            other: '{0} cairteal air ais'),
        future: TimeAgoPluralLabels(
            one: 'an ceann {0} chairteil',
            two: 'an ceann {0} chairteil',
            few: 'an ceann {0} cairtealan',
            other: 'an ceann {0} cairteil')),
    year: TimeAgoRelativeUnitLabels(
        current: 'am bliadhna',
        past: TimeAgoPluralLabels(
            one: '{0} bhliadhna air ais',
            two: '{0} bhliadhna air ais',
            few: '{0} bhliadhnaichean air ais',
            other: '{0} bliadhna air ais'),
        future: TimeAgoPluralLabels(
            one: 'an ceann {0} bhliadhna',
            two: 'an ceann {0} bhliadhna',
            few: 'an ceann {0} bliadhnaichean',
            other: 'an ceann {0} bliadhna')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        two: '{0} dhiog', few: '{0} diogan', other: '{0} diog'),
    minute: TimeAgoPluralLabels(
        one: '{0} mhionaid',
        two: '{0} mhionaid',
        few: '{0} mionaidean',
        other: '{0} mionaid'),
    hour: TimeAgoPluralLabels(
        few: '{0} uairean a thìde', other: '{0} uair a thìde'),
    day: TimeAgoPluralLabels(few: '{0} làithean', other: '{0} latha'),
    week: TimeAgoPluralLabels(
        two: '{0} sheachdain', few: '{0} seachdainean', other: '{0} seachdain'),
    month: TimeAgoPluralLabels(
        one: '{0} mhìos',
        two: '{0} mhìos',
        few: '{0} mìosan',
        other: '{0} mìos'),
    quarter: TimeAgoPluralLabels(
        one: '{0} chairte',
        two: '{0} chairte',
        few: '{0} cairtealan',
        other: '{0} cairte'),
    year: TimeAgoPluralLabels(
        one: '{0} bhliadhna',
        two: '{0} bhliadhna',
        few: '{0} b',
        other: '{0} bliadhna'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} air ais',
    future: 'an ceann {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'an-dràsta',
        past: TimeAgoPluralLabels(
            two: 'o {0} dhiog', few: 'o {0} diog.', other: 'o {0} diog'),
        future: TimeAgoPluralLabels(
            two: 'an {0} dhiog', few: 'an {0} diog.', other: 'an {0} diog')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'am broinn mion.',
        past: TimeAgoPluralLabels(
            one: 'o {0} mhion.', two: 'o {0} mhion.', other: 'o {0} mion.'),
        future: TimeAgoPluralLabels(
            one: 'an {0} mhion.', two: 'an {0} mhion.', other: 'an {0} mion.')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'am broinn uair',
        past: TimeAgoPluralLabels(few: 'o {0} uair.', other: 'o {0} uair'),
        future: TimeAgoPluralLabels(few: 'an {0} uair.', other: 'an {0} uair')),
    day: TimeAgoRelativeUnitLabels(
        current: 'an-diugh',
        past: TimeAgoPluralLabels(few: 'o {0} là.', other: 'o {0} là'),
        future: TimeAgoPluralLabels(few: 'an {0} là.', other: 'an {0} là')),
    week: TimeAgoRelativeUnitLabels(
        current: 'an t-seachd. seo',
        past: TimeAgoPluralLabels(
            one: 'o {0} sheachd.',
            two: 'o {0} sheachd.',
            other: 'o {0} seachd.'),
        future: TimeAgoPluralLabels(
            one: 'an {0} sheachd.',
            two: 'an {0} sheachd.',
            other: 'an {0} seachd.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'am mìos seo',
        past: TimeAgoPluralLabels(
            one: 'o {0} mhìos.', two: 'o {0} mhìos.', other: 'o {0} mìos.'),
        future: TimeAgoPluralLabels(
            one: 'an {0} mhìos.', two: 'an {0} mhìos.', other: 'an {0} mìos.')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'an cairt. seo',
        past: TimeAgoPluralLabels(
            one: 'o {0} chairt.', two: 'o {0} chairt.', other: 'o {0} cairt.'),
        future: TimeAgoPluralLabels(
            one: 'an {0} chairt.',
            two: 'an {0} chairt.',
            other: 'an {0} cairt.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'am bliadhna',
        past: TimeAgoPluralLabels(
            one: 'o {0} bhlia.', two: 'o {0} bhlia.', other: 'o {0} blia.'),
        future: TimeAgoPluralLabels(
            one: 'an {0} bhlia.', two: 'an {0} bhlia.', other: 'an {0} blia.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        two: '{0} dhiog', few: '{0} diog.', other: '{0} diog'),
    minute: TimeAgoPluralLabels(
        one: '{0} mhion.', two: '{0} mhion.', other: '{0} mion.'),
    hour: TimeAgoPluralLabels(few: '{0} uair.', other: '{0} uair'),
    day: TimeAgoPluralLabels(few: '{0} là.', other: '{0} là'),
    week: TimeAgoPluralLabels(
        one: '{0} sheachd.', two: '{0} sheachd.', other: '{0} seachd.'),
    month: TimeAgoPluralLabels(
        one: '{0} mhìos.', two: '{0} mhìos.', other: '{0} mìos.'),
    quarter: TimeAgoPluralLabels(
        one: '{0} chairt.', two: '{0} chairt.', other: '{0} cairt.'),
    year: TimeAgoPluralLabels(
        one: '{0} bhlia.', two: '{0} bhlia.', other: '{0} blia.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'o {0}',
    future: 'an {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'an-dràsta', past: '-{0} d', future: '+{0} d'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'sa mhion.', past: '-{0} m', future: '+{0} m'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'san uair', past: '-{0} u.', future: '+{0} u.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'an-diugh', past: '-{0} là', future: '+{0} là'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'an t-sn. seo', past: '-{0} sn.', future: '+{0} sn.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'am mì. seo',
        past: TimeAgoPluralLabels(
            one: '-{0} mhì.', two: '-{0} mhì.', other: '-{0} mì.'),
        future: TimeAgoPluralLabels(
            one: '+{0} mhì.', two: '+{0} mhì.', other: '+{0} mì.')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'an c. seo', past: '-{0} c.', future: '+{0} c.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'am bl.',
        past: TimeAgoPluralLabels(
            one: '-{0} bhl.', two: '-{0} bhl.', other: '-{0} bl.'),
        future: TimeAgoPluralLabels(
            one: '+{0} bhl.', two: '+{0} bhl.', other: '+{0} bl.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} d'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} u.'),
    day: TimeAgoPluralLabels.same('{0} là'),
    week: TimeAgoPluralLabels.same('{0} sn.'),
    month:
        TimeAgoPluralLabels(one: '{0} mhì.', two: '{0} mhì.', other: '{0} mì.'),
    quarter: TimeAgoPluralLabels.same('{0} c.'),
    year:
        TimeAgoPluralLabels(one: '{0} bhl.', two: '{0} bhl.', other: '{0} bl.'),
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
