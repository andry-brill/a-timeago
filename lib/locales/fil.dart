import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'fil'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 segundo ang nakalipas',
    current: 'ngayon',
    future: 'sa 1 segundo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'fil';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ngayon',
        past: '{0} segundo ang nakalipas',
        future: 'sa {0} segundo'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'sa minutong ito',
        past: '{0} minuto ang nakalipas',
        future: 'sa {0} minuto'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong oras',
        past: '{0} oras ang nakalipas',
        future: 'sa {0} oras'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong araw',
        past: '{0} araw ang nakalipas',
        future: 'sa {0} araw'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'sa linggong ito',
        past: '{0} linggo ang nakalipas',
        future: 'sa {0} linggo'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong buwan',
        past: '{0} buwan ang nakalipas',
        future: 'sa {0} buwan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong quarter',
        past: '{0} quarter ang nakalipas',
        future: 'sa {0} quarter'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong taon',
        past: '{0} taon ang nakalipas',
        future: 'sa {0} taon'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} segundo'),
    minute: TimeAgoPluralLabels.same('{0} minuto'),
    hour: TimeAgoPluralLabels.same('{0} oras'),
    day: TimeAgoPluralLabels.same('{0} araw'),
    week: TimeAgoPluralLabels.same('{0} linggo'),
    month: TimeAgoPluralLabels.same('{0} buwan'),
    quarter: TimeAgoPluralLabels.same('{0} quarter'),
    year: TimeAgoPluralLabels.same('{0} taon'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ang nakalipas',
    future: 'sa {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ngayon',
        past: '{0} seg. ang nakalipas',
        future: 'sa {0} seg.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'sa minutong ito',
        past: '{0} min. ang nakalipas',
        future: 'sa {0} min.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ngayong oras',
        past: TimeAgoPluralLabels.same('{0} oras ang nakalipas'),
        future:
            TimeAgoPluralLabels(one: 'sa {0} oras', other: 'sa {0} (na) oras')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ngayong araw',
        past: TimeAgoPluralLabels(
            one: '{0} araw ang nakalipas',
            other: '{0} (na) araw ang nakalipas'),
        future:
            TimeAgoPluralLabels(one: 'sa {0} (na) araw', other: 'sa {0} araw')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ngayong linggo',
        past: TimeAgoPluralLabels(
            one: '{0} linggo ang nakalipas',
            other: '{0} (na) linggo ang nakalipas'),
        future: TimeAgoPluralLabels.same('sa {0} linggo')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong buwan',
        past: '{0} buwan ang nakalipas',
        future: 'sa {0} buwan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong quarter',
        past: '{0} quarter ang nakalipas',
        future: 'sa {0} quarter'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong taon',
        past: '{0} taon ang nakalipas',
        future: 'sa {0} taon'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} seg.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} oras', other: '{0} oras'),
    day: TimeAgoPluralLabels.same('{0} (na) araw'),
    week: TimeAgoPluralLabels(one: '{0} linggo', other: '{0} (na) linggo'),
    month: TimeAgoPluralLabels.same('{0} buwan'),
    quarter: TimeAgoPluralLabels.same('{0} quarter'),
    year: TimeAgoPluralLabels.same('{0} taon'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ang nakalipas',
    future: 'sa {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ngayon',
        past: '{0} seg. ang nakalipas',
        future: 'sa {0} seg.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'sa minutong ito',
        past: '{0} min. ang nakalipas',
        future: 'sa {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong oras',
        past: '{0} oras ang nakalipas',
        future: 'sa {0} oras'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong araw',
        past: '{0} araw ang nakalipas',
        future: 'sa {0} araw'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong linggo',
        past: '{0} linggo ang nakalipas',
        future: 'sa {0} linggo'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong buwan',
        past: '{0} buwan ang nakalipas',
        future: 'sa {0} buwan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong quarter',
        past: '{0} quarter ang nakalipas',
        future: 'sa {0} quarter'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ngayong taon',
        past: '{0} taon ang nakalipas',
        future: 'sa {0} taon'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} seg.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} oras'),
    day: TimeAgoPluralLabels.same('{0} araw'),
    week: TimeAgoPluralLabels.same('{0} linggo'),
    month: TimeAgoPluralLabels.same('{0} buwan'),
    quarter: TimeAgoPluralLabels.same('{0} quarter'),
    year: TimeAgoPluralLabels.same('{0} taon'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ang nakalipas',
    future: 'sa {0}',
  ),
);
