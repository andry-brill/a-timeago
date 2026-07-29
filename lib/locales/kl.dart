import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kl'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'for 1 sekundi siden',
    current: 'now',
    future: 'om 1 sekundi',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kl';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now',
        past: 'for {0} sekundi siden',
        future: 'om {0} sekundi'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'for {0} minutsi siden',
        future: 'om {0} minutsi'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'for {0} nalunaaquttap-akunnera siden',
        future: 'om {0} nalunaaquttap-akunnera'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'today',
        past: 'for {0} ulloq unnuarlu siden',
        future: 'om {0} ulloq unnuarlu'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'for {0} sapaatip-akunnera siden',
        future: 'om {0} sapaatip-akunnera'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month',
        past: 'for {0} qaammat siden',
        future: 'om {0} qaammat'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'for {0} ukioq siden',
        future: 'om {0} ukioq'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sekundi'),
    minute: TimeAgoPluralLabels.same('{0} minutsi'),
    hour: TimeAgoPluralLabels.same('{0} nalunaaquttap-akunnera'),
    day: TimeAgoPluralLabels.same('{0} ulloq unnuarlu'),
    week: TimeAgoPluralLabels.same('{0} sapaatip-akunnera'),
    month: TimeAgoPluralLabels.same('{0} qaammat'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} ukioq'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'for {0} siden',
    future: 'om {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now',
        past: 'for {0} sekundi siden',
        future: 'om {0} sekundi'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'for {0} minutsi siden',
        future: 'om {0} minutsi'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'for {0} nalunaaquttap-akunnera siden',
        future: 'om {0} nalunaaquttap-akunnera'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'today',
        past: 'for {0} ulloq unnuarlu siden',
        future: 'om {0} ulloq unnuarlu'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'for {0} sapaatip-akunnera siden',
        future: 'om {0} sapaatip-akunnera'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month',
        past: 'for {0} qaammat siden',
        future: 'om {0} qaammat'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'for {0} ukioq siden',
        future: 'om {0} ukioq'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sekundi'),
    minute: TimeAgoPluralLabels.same('{0} minutsi'),
    hour: TimeAgoPluralLabels.same('{0} nalunaaquttap-akunnera'),
    day: TimeAgoPluralLabels.same('{0} ulloq unnuarlu'),
    week: TimeAgoPluralLabels.same('{0} sapaatip-akunnera'),
    month: TimeAgoPluralLabels.same('{0} qaammat'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} ukioq'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'for {0} siden',
    future: 'om {0}',
  ),
);
