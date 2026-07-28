import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'de'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: 'vor 1 Sekunde',
    current: 'jetzt',
    future: 'in 1 Sekunde',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'de';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'jetzt',
        past: TimeAgoPluralLabels(
            one: 'vor {0} Sekunde', other: 'vor {0} Sekunden'),
        future: TimeAgoPluralLabels(
            one: 'in {0} Sekunde', other: 'in {0} Sekunden')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'in dieser Minute',
        past: TimeAgoPluralLabels(
            one: 'vor {0} Minute', other: 'vor {0} Minuten'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Minute', other: 'in {0} Minuten')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'in dieser Stunde',
        past: TimeAgoPluralLabels(
            one: 'vor {0} Stunde', other: 'vor {0} Stunden'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Stunde', other: 'in {0} Stunden')),
    day: TimeAgoRelativeUnitLabels(
        current: 'heute',
        past: TimeAgoPluralLabels(one: 'vor {0} Tag', other: 'vor {0} Tagen'),
        future: TimeAgoPluralLabels(one: 'in {0} Tag', other: 'in {0} Tagen')),
    week: TimeAgoRelativeUnitLabels(
        current: 'diese Woche',
        past:
            TimeAgoPluralLabels(one: 'vor {0} Woche', other: 'vor {0} Wochen'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Woche', other: 'in {0} Wochen')),
    month: TimeAgoRelativeUnitLabels(
        current: 'diesen Monat',
        past:
            TimeAgoPluralLabels(one: 'vor {0} Monat', other: 'vor {0} Monaten'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Monat', other: 'in {0} Monaten')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'dieses Quartal',
        past: TimeAgoPluralLabels(
            one: 'vor {0} Quartal', other: 'vor {0} Quartalen'),
        future: TimeAgoPluralLabels(
            one: 'in {0} Quartal', other: 'in {0} Quartalen')),
    year: TimeAgoRelativeUnitLabels(
        current: 'dieses Jahr',
        past: TimeAgoPluralLabels(one: 'vor {0} Jahr', other: 'vor {0} Jahren'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Jahr', other: 'in {0} Jahren')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} Sekunde', other: '{0} Sekunden'),
    minute: TimeAgoPluralLabels(one: '{0} Minute', other: '{0} Minuten'),
    hour: TimeAgoPluralLabels(one: '{0} Stunde', other: '{0} Stunden'),
    day: TimeAgoPluralLabels(one: '{0} Tag', other: '{0} Tage'),
    week: TimeAgoPluralLabels(one: '{0} Woche', other: '{0} Wochen'),
    month: TimeAgoPluralLabels(one: '{0} Monat', other: '{0} Monate'),
    quarter: TimeAgoPluralLabels(one: '{0} Quartal', other: '{0} Quartalen'),
    year: TimeAgoPluralLabels(one: '{0} Jahr', other: '{0} Jahre'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'vor {0}',
    future: 'in {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'jetzt', past: 'vor {0} Sek.', future: 'in {0} Sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'in dieser Minute',
        past: 'vor {0} Min.',
        future: 'in {0} Min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'in dieser Stunde',
        past: 'vor {0} Std.',
        future: 'in {0} Std.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'heute',
        past: TimeAgoPluralLabels(one: 'vor {0} Tag', other: 'vor {0} Tagen'),
        future: TimeAgoPluralLabels(one: 'in {0} Tag', other: 'in {0} Tagen')),
    week: TimeAgoRelativeUnitLabels(
        current: 'diese Woche',
        past:
            TimeAgoPluralLabels(one: 'vor {0} Woche', other: 'vor {0} Wochen'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Woche', other: 'in {0} Wochen')),
    month: TimeAgoRelativeUnitLabels(
        current: 'diesen Monat',
        past:
            TimeAgoPluralLabels(one: 'vor {0} Monat', other: 'vor {0} Monaten'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Monat', other: 'in {0} Monaten')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dieses Quartal',
        past: 'vor {0} Quart.',
        future: 'in {0} Quart.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'dieses Jahr',
        past: TimeAgoPluralLabels(one: 'vor {0} Jahr', other: 'vor {0} Jahren'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Jahr', other: 'in {0} Jahren')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} Sek.'),
    minute: TimeAgoPluralLabels.same('{0} Min.'),
    hour: TimeAgoPluralLabels.same('{0} Std.'),
    day: TimeAgoPluralLabels(one: '{0} Tag', other: '{0} Tagen'),
    week: TimeAgoPluralLabels(one: '{0} Woche', other: '{0} Wochen'),
    month: TimeAgoPluralLabels(one: '{0} Monat', other: '{0} Monaten'),
    quarter: TimeAgoPluralLabels.same('{0} Quart.'),
    year: TimeAgoPluralLabels(one: '{0} Jahr', other: '{0} Jahren'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'vor {0}',
    future: 'in {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'jetzt', past: 'vor {0} s', future: 'in {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'in dieser Minute', past: 'vor {0} m', future: 'in {0} m'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'in dieser Stunde',
        past: 'vor {0} Std.',
        future: 'in {0} Std.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'heute',
        past: TimeAgoPluralLabels(one: 'vor {0} Tag', other: 'vor {0} Tagen'),
        future: TimeAgoPluralLabels(one: 'in {0} Tag', other: 'in {0} Tagen')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'diese Woche', past: 'vor {0} Wo.', future: 'in {0} Wo.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'diesen Monat',
        past:
            TimeAgoPluralLabels(one: 'vor {0} Monat', other: 'vor {0} Monaten'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Monat', other: 'in {0} Monaten')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dieses Quartal', past: 'vor {0} Q', future: 'in {0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'dieses Jahr',
        past: TimeAgoPluralLabels(one: 'vor {0} Jahr', other: 'vor {0} Jahren'),
        future:
            TimeAgoPluralLabels(one: 'in {0} Jahr', other: 'in {0} Jahren')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} m'),
    hour: TimeAgoPluralLabels.same('{0} Std.'),
    day: TimeAgoPluralLabels(one: '{0} Tag', other: '{0} Tagen'),
    week: TimeAgoPluralLabels.same('{0} Wo.'),
    month: TimeAgoPluralLabels(one: '{0} Monat', other: '{0} Monaten'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} Jahr', other: '{0} Jahren'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'vor {0}',
    future: 'in {0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} s'),
        future: TimeAgoPluralLabels.same('in {0} s')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} Min.'),
        future: TimeAgoPluralLabels.same('in {0} Min.')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} Std.'),
        future: TimeAgoPluralLabels.same('in {0} Std.')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} T.'),
        future: TimeAgoPluralLabels.same('in {0} T.')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} Wo.'),
        future: TimeAgoPluralLabels.same('in {0} Wo.')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} Mt.'),
        future: TimeAgoPluralLabels.same('in {0} Mt.')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} Q'),
        future: TimeAgoPluralLabels.same('in {0} Q')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('vor {0} J.'),
        future: TimeAgoPluralLabels.same('in {0} J.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} Min.'),
    hour: TimeAgoPluralLabels.same('{0} Std.'),
    day: TimeAgoPluralLabels.same('{0} T.'),
    week: TimeAgoPluralLabels.same('{0} Wo.'),
    month: TimeAgoPluralLabels.same('{0} Mt.'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} J.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'vor {0}',
    future: 'in {0}',
  ),
  now: 'jetzt',
);
