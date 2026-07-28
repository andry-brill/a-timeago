import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'uz', scriptCode: 'Cyrl'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 сония олдин',
    current: 'ҳозир',
    future: '1 сониядан сўнг',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'uz_Cyrl';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ҳозир', past: '{0} сония олдин', future: '{0} сониядан сўнг'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} дақиқа олдин',
        future: '{0} дақиқадан сўнг'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: '{0} соат олдин',
        future: '{0} соатдан сўнг'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бугун', past: '{0} кун олдин', future: '{0} кундан сўнг'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'бу ҳафта',
        past: '{0} ҳафта олдин',
        future: '{0} ҳафтадан сўнг'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бу ой', past: '{0} ой аввал', future: '{0} ойдан сўнг'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'бу йил', past: '{0} йил аввал', future: '{0} йилдан сўнг'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сония'),
    minute: TimeAgoPluralLabels.same('{0} дақиқа'),
    hour: TimeAgoPluralLabels.same('{0} соат'),
    day: TimeAgoPluralLabels.same('{0} кун'),
    week: TimeAgoPluralLabels.same('{0} ҳафта'),
    month: TimeAgoPluralLabels.same('{0} ой'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} йил'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} олдин',
    future: '{0}дан сўнг',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ҳозир', past: '{0} сония олдин', future: '{0} сониядан сўнг'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} дақиқа олдин',
        future: '{0} дақиқадан сўнг'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: '{0} соат олдин',
        future: '{0} соатдан сўнг'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бугун', past: '{0} кун олдин', future: '{0} кундан сўнг'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'бу ҳафта',
        past: '{0} ҳафта олдин',
        future: '{0} ҳафтадан сўнг'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бу ой', past: '{0} ой аввал', future: '{0} ойдан сўнг'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'бу йил', past: '{0} йил аввал', future: '{0} йилдан сўнг'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сония'),
    minute: TimeAgoPluralLabels.same('{0} дақиқа'),
    hour: TimeAgoPluralLabels.same('{0} соат'),
    day: TimeAgoPluralLabels.same('{0} кун'),
    week: TimeAgoPluralLabels.same('{0} ҳафта'),
    month: TimeAgoPluralLabels.same('{0} ой'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} йил'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} олдин',
    future: '{0}дан сўнг',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ҳозир', past: '{0} сония олдин', future: '{0} сониядан сўнг'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} дақиқа олдин',
        future: '{0} дақиқадан сўнг'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: '{0} соат олдин',
        future: '{0} соатдан сўнг'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бугун', past: '{0} кун олдин', future: '{0} кундан сўнг'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'бу ҳафта',
        past: '{0} ҳафта олдин',
        future: '{0} ҳафтадан сўнг'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бу ой', past: '{0} ой аввал', future: '{0} ойдан сўнг'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'бу йил', past: '{0} йил аввал', future: '{0} йилдан сўнг'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сония'),
    minute: TimeAgoPluralLabels.same('{0} дақиқа'),
    hour: TimeAgoPluralLabels.same('{0} соат'),
    day: TimeAgoPluralLabels.same('{0} кун'),
    week: TimeAgoPluralLabels.same('{0} ҳафта'),
    month: TimeAgoPluralLabels.same('{0} ой'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} йил'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} олдин',
    future: '{0}дан сўнг',
  ),
);
