import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sq'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'dje',
    today: 'sot',
    tomorrow: 'nesër',
    dateTime: '{1} në {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekondë më parë',
    current: 'tani',
    future: 'pas 1 sekonde',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sq';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'tani',
        past: TimeAgoPluralLabels(
            one: '{0} sekondë më parë', other: '{0} sekonda më parë'),
        future: TimeAgoPluralLabels(
            one: 'pas {0} sekonde', other: 'pas {0} sekondash')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'këtë minutë',
        past: TimeAgoPluralLabels(
            one: '{0} minutë më parë', other: '{0} minuta më parë'),
        future: TimeAgoPluralLabels(
            one: 'pas {0} minute', other: 'pas {0} minutash')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'këtë orë',
        past: TimeAgoPluralLabels.same('{0} orë më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} ore', other: 'pas {0} orësh')),
    day: TimeAgoRelativeUnitLabels(
        current: 'sot',
        past: TimeAgoPluralLabels.same('{0} ditë më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} dite', other: 'pas {0} ditësh')),
    week: TimeAgoRelativeUnitLabels(
        current: 'këtë javë',
        past: TimeAgoPluralLabels.same('{0} javë më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} jave', other: 'pas {0} javësh')),
    month: TimeAgoRelativeUnitLabels(
        current: 'këtë muaj',
        past: TimeAgoPluralLabels.same('{0} muaj më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} muaji', other: 'pas {0} muajsh')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'këtë tremujor',
        past: TimeAgoPluralLabels(
            one: '{0} tremujor më parë', other: '{0} tremujorë më parë'),
        future: TimeAgoPluralLabels(
            one: 'pas {0} tremujori', other: 'pas {0} tremujorësh')),
    year: TimeAgoRelativeUnitLabels(
        current: 'sivjet',
        past: TimeAgoPluralLabels(
            one: '{0} vit më parë', other: '{0} vjet më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} viti', other: 'pas {0} vjetësh')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekond', other: '{0} sekonda'),
    minute: TimeAgoPluralLabels(one: '{0} minut', other: '{0} minuta'),
    hour: TimeAgoPluralLabels(one: '{0} or', other: '{0} orë'),
    day: TimeAgoPluralLabels(one: '{0} dit', other: '{0} ditë'),
    week: TimeAgoPluralLabels(one: '{0} jav', other: '{0} javë'),
    month: TimeAgoPluralLabels(one: '{0} muaj', other: '{0} muaj'),
    quarter: TimeAgoPluralLabels(one: '{0} tremujor', other: '{0} tremujorë'),
    year: TimeAgoPluralLabels(one: '{0} vit', other: '{0} vjet'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} më parë',
    future: 'pas {0}sh',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'tani', past: '{0} sek më parë', future: 'pas {0} sek'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'këtë minutë', past: '{0} min më parë', future: 'pas {0} min'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'këtë orë',
        past: TimeAgoPluralLabels.same('{0} orë më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} ore', other: 'pas {0} orësh')),
    day: TimeAgoRelativeUnitLabels(
        current: 'sot',
        past: TimeAgoPluralLabels.same('{0} ditë më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} dite', other: 'pas {0} ditësh')),
    week: TimeAgoRelativeUnitLabels(
        current: 'këtë javë',
        past: TimeAgoPluralLabels.same('{0} javë më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} jave', other: 'pas {0} javësh')),
    month: TimeAgoRelativeUnitLabels(
        current: 'këtë muaj',
        past: TimeAgoPluralLabels.same('{0} muaj më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} muaji', other: 'pas {0} muajsh')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'këtë tremujor',
        past: TimeAgoPluralLabels(
            one: '{0} tremujor më parë', other: '{0} tremujorë më parë'),
        future: TimeAgoPluralLabels(
            one: 'pas {0} tremujori', other: 'pas {0} tremujorësh')),
    year: TimeAgoRelativeUnitLabels(
        current: 'këtë vit',
        past: TimeAgoPluralLabels(
            one: '{0} vit më parë', other: '{0} vjet më parë'),
        future:
            TimeAgoPluralLabels(one: 'pas {0} viti', other: 'pas {0} vjetësh')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels(one: '{0} or', other: '{0} orë'),
    day: TimeAgoPluralLabels(one: '{0} dit', other: '{0} ditë'),
    week: TimeAgoPluralLabels(one: '{0} jav', other: '{0} javë'),
    month: TimeAgoPluralLabels(one: '{0} muaj', other: '{0} muaj'),
    quarter: TimeAgoPluralLabels(one: '{0} tremujor', other: '{0} tremujorë'),
    year: TimeAgoPluralLabels(one: '{0} vit', other: '{0} vjet'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} më parë',
    future: 'pas {0}',
  ),
);
