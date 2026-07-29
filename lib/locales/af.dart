import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'af'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 sekonde gelede',
    current: 'nou',
    future: 'oor 1 sekonde',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'af';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nou',
        past: TimeAgoPluralLabels(
            one: '{0} sekonde gelede', other: '{0} sekondes gelede'),
        future: TimeAgoPluralLabels(
            one: 'oor {0} sekonde', other: 'oor {0} sekondes')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'hierdie minuut',
        past: TimeAgoPluralLabels(
            one: '{0} minuut gelede', other: '{0} minute gelede'),
        future: TimeAgoPluralLabels(
            one: 'oor {0} minuut', other: 'oor {0} minute')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie uur', past: '{0} uur gelede', future: 'oor {0} uur'),
    day: TimeAgoRelativeUnitLabels(
        current: 'vandag',
        past:
            TimeAgoPluralLabels(one: '{0} dag gelede', other: '{0} dae gelede'),
        future: TimeAgoPluralLabels(one: 'oor {0} dag', other: 'oor {0} dae')),
    week: TimeAgoRelativeUnitLabels(
        current: 'hierdie week',
        past: TimeAgoPluralLabels(
            one: '{0} week gelede', other: '{0} weke gelede'),
        future:
            TimeAgoPluralLabels(one: 'oor {0} week', other: 'oor {0} weke')),
    month: TimeAgoRelativeUnitLabels(
        current: 'vandeesmaand',
        past: TimeAgoPluralLabels(
            one: '{0} maand gelede', other: '{0} maande gelede'),
        future:
            TimeAgoPluralLabels(one: 'oor {0} maand', other: 'oor {0} maande')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'hierdie kwartaal',
        past: TimeAgoPluralLabels(
            one: '{0} kwartaal gelede', other: '{0} kwartale gelede'),
        future: TimeAgoPluralLabels(
            one: 'oor {0} kwartaal', other: 'oor {0} kwartale')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie jaar',
        past: '{0} jaar gelede',
        future: 'oor {0} jaar'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekonde', other: '{0} sekondes'),
    minute: TimeAgoPluralLabels(one: '{0} minuut', other: '{0} minute'),
    hour: TimeAgoPluralLabels.same('{0} uur'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dae'),
    week: TimeAgoPluralLabels(one: '{0} week', other: '{0} weke'),
    month: TimeAgoPluralLabels(one: '{0} maand', other: '{0} maande'),
    quarter: TimeAgoPluralLabels(one: '{0} kwartaal', other: '{0} kwartale'),
    year: TimeAgoPluralLabels.same('{0} jaar'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} gelede',
    future: 'oor {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nou', past: '{0} s. gelede', future: 'oor {0} s.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie minuut',
        past: '{0} min. gelede',
        future: 'oor {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie uur', past: '{0} u. gelede', future: 'oor {0} u.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'vandag',
        past:
            TimeAgoPluralLabels(one: '{0} dag gelede', other: '{0} dae gelede'),
        future: TimeAgoPluralLabels(one: 'oor {0} dag', other: 'oor {0} dae')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie w.', past: '{0} w. gelede', future: 'oor {0} w.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie md.', past: '{0} md. gelede', future: 'oor {0} md.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie kwartaal',
        past: '{0} kw. gelede',
        future: 'oor {0} kw.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'hierdie j.', past: '{0} j. gelede', future: 'oor {0} j.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} u.'),
    day: TimeAgoPluralLabels(one: '{0} dag', other: '{0} dae'),
    week: TimeAgoPluralLabels.same('{0} w.'),
    month: TimeAgoPluralLabels.same('{0} md.'),
    quarter: TimeAgoPluralLabels.same('{0} kw.'),
    year: TimeAgoPluralLabels.same('{0} j.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} gelede',
    future: 'oor {0}',
  ),
);
