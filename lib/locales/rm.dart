import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'rm'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ier',
    today: 'oz',
    tomorrow: 'damaun',
    dateTime: '{1} a las {0}',
    relativeDateTime: '{1} a las {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'avant 1 secunda',
    current: 'ussa',
    future: 'en 1 secunda',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'rm';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ussa',
        past: TimeAgoPluralLabels(
            one: 'avant {0} secunda', other: 'avant {0} secundas'),
        future: TimeAgoPluralLabels(
            one: 'en {0} secunda', other: 'en {0} secundas')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'questa minuta',
        past: TimeAgoPluralLabels(
            one: 'avant {0} minuta', other: 'avant {0} minutas'),
        future:
            TimeAgoPluralLabels(one: 'en {0} minuta', other: 'en {0} minutas')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'quest’ura',
        past:
            TimeAgoPluralLabels(one: 'avant {0} ura', other: 'avant {0} uras'),
        future: TimeAgoPluralLabels(one: 'en {0} ura', other: 'en {0} uras')),
    day: TimeAgoRelativeUnitLabels(
        current: 'oz',
        past: TimeAgoPluralLabels(one: 'avant {0} di', other: 'avant {0} dis'),
        future: TimeAgoPluralLabels(one: 'en {0} di', other: 'en {0} dis')),
    week: TimeAgoRelativeUnitLabels(
        current: 'quest’emna',
        past: TimeAgoPluralLabels(
            one: 'avant {0} emna', other: 'avant {0} emnas'),
        future: TimeAgoPluralLabels(one: 'en {0} emna', other: 'en {0} emnas')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'quest mais', past: 'avant {0} mais', future: 'en {0} mais'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'quest quartal',
        past: TimeAgoPluralLabels(
            one: 'avant {0} quartal', other: 'avant {0} quartals'),
        future: TimeAgoPluralLabels(
            one: 'en {0} quartal', other: 'en {0} quartals')),
    year: TimeAgoRelativeUnitLabels(
        current: 'quest onn',
        past:
            TimeAgoPluralLabels(one: 'avant {0} onn', other: 'avant {0} onns'),
        future: TimeAgoPluralLabels(one: 'en {0} onn', other: 'en {0} onns')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} secunda', other: '{0} secundas'),
    minute: TimeAgoPluralLabels(one: '{0} minuta', other: '{0} minutas'),
    hour: TimeAgoPluralLabels(one: '{0} ura', other: '{0} uras'),
    day: TimeAgoPluralLabels(one: '{0} di', other: '{0} dis'),
    week: TimeAgoPluralLabels(one: '{0} emna', other: '{0} emnas'),
    month: TimeAgoPluralLabels.same('{0} mais'),
    quarter: TimeAgoPluralLabels(one: '{0} quartal', other: '{0} quartals'),
    year: TimeAgoPluralLabels(one: '{0} onn', other: '{0} onns'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'avant {0}',
    future: 'en {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ussa', past: 'avant {0} s', future: 'en {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'questa minuta', past: 'avant {0} min', future: 'en {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'quest’ura', past: 'avant {0} h', future: 'en {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'oz',
        past: TimeAgoPluralLabels(one: 'avant {0} di', other: 'avant {0} dis'),
        future: TimeAgoPluralLabels(one: 'en {0} di', other: 'en {0} dis')),
    week: TimeAgoRelativeUnitLabels(
        current: 'quest’emna',
        past: TimeAgoPluralLabels(
            one: 'avant {0} emna', other: 'avant {0} emnas'),
        future: TimeAgoPluralLabels(one: 'en {0} emna', other: 'en {0} emnas')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'quest mais', past: 'avant {0} mais', future: 'en {0} mais'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'quest quartal',
        past: TimeAgoPluralLabels(
            one: 'avant {0} qrtl.', other: 'avant {0} qrtls.'),
        future:
            TimeAgoPluralLabels(one: 'en {0} qrtl.', other: 'en {0} qrtls.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'quest onn',
        past:
            TimeAgoPluralLabels(one: 'avant {0} onn', other: 'avant {0} onns'),
        future: TimeAgoPluralLabels(one: 'en {0} onn', other: 'en {0} onns')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} di', other: '{0} dis'),
    week: TimeAgoPluralLabels(one: '{0} emna', other: '{0} emnas'),
    month: TimeAgoPluralLabels.same('{0} mais'),
    quarter: TimeAgoPluralLabels(one: '{0} qrtl.', other: '{0} qrtls.'),
    year: TimeAgoPluralLabels(one: '{0} onn', other: '{0} onns'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'avant {0}',
    future: 'en {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ussa', past: 'avant {0} s', future: 'en {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'questa minuta', past: 'avant {0} min', future: 'en {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'quest’ura', past: 'avant {0}h', future: 'en {0}h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'oz', past: 'avant {0}d', future: 'en {0}d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'quest’emna', past: 'avant {0}e', future: 'en {0}e'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'quest mais', past: 'avant {0}mais', future: 'en {0}mais'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'quest quartal', past: 'avant {0}q', future: 'en {0}q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'quest onn', past: 'avant {0}o', future: 'en {0}o'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0}h'),
    day: TimeAgoPluralLabels.same('{0}d'),
    week: TimeAgoPluralLabels.same('{0}e'),
    month: TimeAgoPluralLabels.same('{0}mais'),
    quarter: TimeAgoPluralLabels.same('{0}q'),
    year: TimeAgoPluralLabels.same('{0}o'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'avant {0}',
    future: 'en {0}',
  ),
);
