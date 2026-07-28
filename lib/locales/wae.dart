import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'wae'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'vor 1 sekund',
    current: 'now',
    future: 'i 1 sekund',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'wae';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: 'vor {0} sekund', other: 'vor {0} sekunde'),
        future:
            TimeAgoPluralLabels(one: 'i {0} sekund', other: 'i {0} sekunde')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past:
            TimeAgoPluralLabels(one: 'vor {0} minüta', other: 'vor {0} minüte'),
        future:
            TimeAgoPluralLabels(one: 'i {0} minüta', other: 'i {0} minüte')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past:
            TimeAgoPluralLabels(one: 'vor {0} stund', other: 'vor {0} stunde'),
        future: TimeAgoPluralLabels(one: 'i {0} stund', other: 'i {0} stunde')),
    day: TimeAgoRelativeUnitLabels(
        current: 'Hitte',
        past: TimeAgoPluralLabels(one: 'vor {0} tag', other: 'vor {0} täg'),
        future: TimeAgoPluralLabels(one: 'i {0} tag', other: 'i {0} täg')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(one: 'vor {0} wuča', other: 'cor {0} wučä'),
        future: TimeAgoPluralLabels(one: 'i {0} wuča', other: 'i {0} wučä')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: 'vor {0} mánet', future: 'I {0} mánet'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past: TimeAgoPluralLabels(one: 'vor {0} jár', other: 'cor {0} jár'),
        future: TimeAgoPluralLabels.same('I {0} jár')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekund', other: '{0} sekunde'),
    minute: TimeAgoPluralLabels(one: '{0} minüta', other: '{0} minüte'),
    hour: TimeAgoPluralLabels(one: '{0} stund', other: '{0} stunde'),
    day: TimeAgoPluralLabels(one: '{0} tag', other: '{0} täg'),
    week: TimeAgoPluralLabels(one: '{0} wuča', other: '{0} wučä'),
    month: TimeAgoPluralLabels.same('{0} mánet'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} jár', other: '{0} jár'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'vor {0}',
    future: 'i {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: 'vor {0} sekund', other: 'vor {0} sekunde'),
        future:
            TimeAgoPluralLabels(one: 'i {0} sekund', other: 'i {0} sekunde')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past:
            TimeAgoPluralLabels(one: 'vor {0} minüta', other: 'vor {0} minüte'),
        future:
            TimeAgoPluralLabels(one: 'i {0} minüta', other: 'i {0} minüte')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past:
            TimeAgoPluralLabels(one: 'vor {0} stund', other: 'vor {0} stunde'),
        future: TimeAgoPluralLabels(one: 'i {0} stund', other: 'i {0} stunde')),
    day: TimeAgoRelativeUnitLabels(
        current: 'Hitte',
        past: TimeAgoPluralLabels(one: 'vor {0} tag', other: 'vor {0} täg'),
        future: TimeAgoPluralLabels(one: 'i {0} tag', other: 'i {0} täg')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(one: 'vor {0} wuča', other: 'cor {0} wučä'),
        future: TimeAgoPluralLabels(one: 'i {0} wuča', other: 'i {0} wučä')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: 'vor {0} mánet', future: 'I {0} mánet'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past: TimeAgoPluralLabels(one: 'vor {0} jár', other: 'cor {0} jár'),
        future: TimeAgoPluralLabels.same('I {0} jár')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekund', other: '{0} sekunde'),
    minute: TimeAgoPluralLabels(one: '{0} minüta', other: '{0} minüte'),
    hour: TimeAgoPluralLabels(one: '{0} stund', other: '{0} stunde'),
    day: TimeAgoPluralLabels(one: '{0} tag', other: '{0} täg'),
    week: TimeAgoPluralLabels(one: '{0} wuča', other: '{0} wučä'),
    month: TimeAgoPluralLabels.same('{0} mánet'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} jár', other: '{0} jár'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'vor {0}',
    future: 'i {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: 'vor {0} sekund', other: 'vor {0} sekunde'),
        future:
            TimeAgoPluralLabels(one: 'i {0} sekund', other: 'i {0} sekunde')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past:
            TimeAgoPluralLabels(one: 'vor {0} minüta', other: 'vor {0} minüte'),
        future:
            TimeAgoPluralLabels(one: 'i {0} minüta', other: 'i {0} minüte')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past:
            TimeAgoPluralLabels(one: 'vor {0} stund', other: 'vor {0} stunde'),
        future: TimeAgoPluralLabels(one: 'i {0} stund', other: 'i {0} stunde')),
    day: TimeAgoRelativeUnitLabels(
        current: 'Hitte',
        past: TimeAgoPluralLabels(one: 'vor {0} tag', other: 'vor {0} täg'),
        future: TimeAgoPluralLabels(one: 'i {0} tag', other: 'i {0} täg')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(one: 'vor {0} wuča', other: 'cor {0} wučä'),
        future: TimeAgoPluralLabels(one: 'i {0} wuča', other: 'i {0} wučä')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: 'vor {0} mánet', future: 'I {0} mánet'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past: TimeAgoPluralLabels(one: 'vor {0} jár', other: 'cor {0} jár'),
        future: TimeAgoPluralLabels.same('I {0} jár')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekund', other: '{0} sekunde'),
    minute: TimeAgoPluralLabels(one: '{0} minüta', other: '{0} minüte'),
    hour: TimeAgoPluralLabels(one: '{0} stund', other: '{0} stunde'),
    day: TimeAgoPluralLabels(one: '{0} tag', other: '{0} täg'),
    week: TimeAgoPluralLabels(one: '{0} wuča', other: '{0} wučä'),
    month: TimeAgoPluralLabels.same('{0} mánet'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} jár', other: '{0} jár'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'vor {0}',
    future: 'i {0}',
  ),
);
