import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kok', scriptCode: 'Latn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'kal',
    today: 'aiz',
    tomorrow: 'faleam',
    dateTime: '{1}, {0} vaztam',
    relativeDateTime: '{1}, {0} vaztam',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekond adim',
    current: 'atam',
    future: '1 sekondan',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kok_Latn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'atam',
        past: TimeAgoPluralLabels.same('{0} sekond adim'),
        future:
            TimeAgoPluralLabels(one: '{0} sekondan', other: '{0} sekondanim')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ho minut',
        past: TimeAgoPluralLabels(
            one: '{0} minut adim', other: '{0} mintam adim'),
        future: TimeAgoPluralLabels(one: '{0} mintan', other: '{0} mintanim')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'hem vor',
        past: TimeAgoPluralLabels(one: '{0} vor adim', other: '{0} voram adim'),
        future: TimeAgoPluralLabels(one: '{0} voran', other: '{0} voranim')),
    day: TimeAgoRelativeUnitLabels(
        current: 'aiz',
        past: TimeAgoPluralLabels.same('{0} dis adim'),
        future: TimeAgoPluralLabels(one: '{0} disan', other: '{0} disanim')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ho suman',
        past: TimeAgoPluralLabels.same('{0} suman adim'),
        future:
            TimeAgoPluralLabels(one: '{0} sumanan', other: '{0} sumananim')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ho mhoino',
        past: TimeAgoPluralLabels(
            one: '{0} mhoino adim', other: '{0} mhoine adim'),
        future:
            TimeAgoPluralLabels(one: '{0} mhoinean', other: '{0} mhoineanim')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'hem timhoinallem',
        past: TimeAgoPluralLabels(
            one: '{0} timhoinallem adim', other: '{0} timhoinalle adim'),
        future: TimeAgoPluralLabels(
            one: '{0} timhoinallean', other: '{0} timhoinalleanim')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ondum',
        past: TimeAgoPluralLabels(
            one: '{0} voros adim', other: '{0} vorsam adim'),
        future: TimeAgoPluralLabels(one: '{0} vorsan', other: '{0} vorsanim')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekond', other: '{0} sekond'),
    minute: TimeAgoPluralLabels(one: '{0} min', other: '{0} minta'),
    hour: TimeAgoPluralLabels(one: '{0} vor', other: '{0} vora'),
    day: TimeAgoPluralLabels(one: '{0} dis', other: '{0} dis'),
    week: TimeAgoPluralLabels(one: '{0} suman', other: '{0} suman'),
    month: TimeAgoPluralLabels(one: '{0} mhoin', other: '{0} mhoine'),
    quarter:
        TimeAgoPluralLabels(one: '{0} timhoinalle', other: '{0} timhoinalle'),
    year: TimeAgoPluralLabels(one: '{0} vor', other: '{0} vorsa'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} adim',
    future: '{0}anim',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'atam',
        past: TimeAgoPluralLabels.same('{0} sek. adim'),
        future:
            TimeAgoPluralLabels(one: '{0} sekondan', other: '{0} sekondanim')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ho min.',
        past: TimeAgoPluralLabels.same('{0} min. adim'),
        future: TimeAgoPluralLabels(one: '{0} mintan', other: '{0} min.')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'hem vor',
        past: TimeAgoPluralLabels(one: '{0} vor adim', other: '{0} voram adim'),
        future: TimeAgoPluralLabels(one: '{0} voran', other: '{0} voranim')),
    day: TimeAgoRelativeUnitLabels(
        current: 'aiz',
        past: TimeAgoPluralLabels.same('{0} dis adim'),
        future: TimeAgoPluralLabels(one: '{0} disan', other: '{0} disanim')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ho suman',
        past: TimeAgoPluralLabels.same('{0} suman adim'),
        future:
            TimeAgoPluralLabels(one: '{0} sumanan', other: '{0} sumananim')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ho mho.',
        past: TimeAgoPluralLabels.same('{0} mho. adim'),
        future:
            TimeAgoPluralLabels(one: '{0} mhoinean', other: '{0} mhoineanim')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'hem timho.',
        past: TimeAgoPluralLabels.same('{0} timho. adim'),
        future: TimeAgoPluralLabels(
            one: '{0} timhoinallean', other: '{0} timhoinalleanim')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ondum',
        past: TimeAgoPluralLabels(
            one: '{0} voros adim', other: '{0} vorsam adim'),
        future: TimeAgoPluralLabels(one: '{0} vorsan', other: '{0} vorsanim')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sek', other: '{0} sek'),
    minute: TimeAgoPluralLabels(one: '{0} min', other: '{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} vor', other: '{0} vora'),
    day: TimeAgoPluralLabels(one: '{0} dis', other: '{0} dis'),
    week: TimeAgoPluralLabels(one: '{0} suman', other: '{0} suman'),
    month: TimeAgoPluralLabels(one: '{0} mho', other: '{0} mho'),
    quarter: TimeAgoPluralLabels(one: '{0} timho', other: '{0} timho'),
    year: TimeAgoPluralLabels(one: '{0} vor', other: '{0} vorsa'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. adim',
    future: '{0}ondanim',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'atam',
        past: TimeAgoPluralLabels.same('{0}sek adim'),
        future:
            TimeAgoPluralLabels(one: '{0}sekondan', other: '{0}sekondanim')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ho min',
        past: TimeAgoPluralLabels.same('{0}min adim'),
        future: TimeAgoPluralLabels(one: '{0}mintan', other: '{0}min')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'hem vor',
        past: TimeAgoPluralLabels(one: '{0}vor adim', other: '{0}voram adim'),
        future: TimeAgoPluralLabels(one: '{0}voran', other: '{0}voranim')),
    day: TimeAgoRelativeUnitLabels(
        current: 'aiz',
        past: TimeAgoPluralLabels.same('{0}d adim'),
        future: TimeAgoPluralLabels(one: '{0}disan', other: '{0}disanim')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ho sum',
        past: TimeAgoPluralLabels.same('{0}sum adim'),
        future: TimeAgoPluralLabels(one: '{0}sumanan', other: '{0}sumananim')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ho mh',
        past: TimeAgoPluralLabels.same('{0}mh adim'),
        future:
            TimeAgoPluralLabels(one: '{0}mhoinean', other: '{0}mhoineanim')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'hem timh',
        past: TimeAgoPluralLabels.same('{0}timh adim'),
        future: TimeAgoPluralLabels(
            one: '{0}timhoinallean', other: '{0}timhoinalleanim')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ondum',
        past:
            TimeAgoPluralLabels(one: '{0}voros adim', other: '{0}vorsam adim'),
        future: TimeAgoPluralLabels(one: '{0}vorsan', other: '{0}vorsanim')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0}sek', other: '{0}sek'),
    minute: TimeAgoPluralLabels(one: '{0}min', other: '{0}min'),
    hour: TimeAgoPluralLabels(one: '{0}vor', other: '{0}vora'),
    day: TimeAgoPluralLabels(one: '{0}d', other: '{0}d'),
    week: TimeAgoPluralLabels(one: '{0}sum', other: '{0}sum'),
    month: TimeAgoPluralLabels(one: '{0}mh', other: '{0}mh'),
    quarter: TimeAgoPluralLabels(one: '{0}timh', other: '{0}timh'),
    year: TimeAgoPluralLabels(one: '{0}vor', other: '{0}vorsa'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} adim',
    future: '{0}ondanim',
  ),
);
