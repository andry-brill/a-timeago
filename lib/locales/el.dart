import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'el'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: 'πριν από 1 δευτερόλεπτο',
    current: 'τώρα',
    future: 'σε 1 δευτερόλεπτο',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'el';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'τώρα',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} δευτερόλεπτο',
            other: 'πριν από {0} δευτερόλεπτα'),
        future: TimeAgoPluralLabels(
            one: 'σε {0} δευτερόλεπτο', other: 'σε {0} δευτερόλεπτα')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'τρέχον λεπτό',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} λεπτό', other: 'πριν από {0} λεπτά'),
        future:
            TimeAgoPluralLabels(one: 'σε {0} λεπτό', other: 'σε {0} λεπτά')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'τρέχουσα ώρα',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} ώρα', other: 'πριν από {0} ώρες'),
        future: TimeAgoPluralLabels(one: 'σε {0} ώρα', other: 'σε {0} ώρες')),
    day: TimeAgoRelativeUnitLabels(
        current: 'σήμερα',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} ημέρα', other: 'πριν από {0} ημέρες'),
        future:
            TimeAgoPluralLabels(one: 'σε {0} ημέρα', other: 'σε {0} ημέρες')),
    week: TimeAgoRelativeUnitLabels(
        current: 'τρέχουσα εβδομάδα',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} εβδομάδα', other: 'πριν από {0} εβδομάδες'),
        future: TimeAgoPluralLabels(
            one: 'σε {0} εβδομάδα', other: 'σε {0} εβδομάδες')),
    month: TimeAgoRelativeUnitLabels(
        current: 'τρέχων μήνας',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} μήνα', other: 'πριν από {0} μήνες'),
        future: TimeAgoPluralLabels(one: 'σε {0} μήνα', other: 'σε {0} μήνες')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'τρέχον τρίμηνο',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} τρίμηνο', other: 'πριν από {0} τρίμηνα'),
        future: TimeAgoPluralLabels(
            one: 'σε {0} τρίμηνο', other: 'σε {0} τρίμηνα')),
    year: TimeAgoRelativeUnitLabels(
        current: 'φέτος',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} έτος', other: 'πριν από {0} έτη'),
        future: TimeAgoPluralLabels(one: 'σε {0} έτος', other: 'σε {0} έτη')),
  ),
  units: TimeAgoUnitLabels(
    second:
        TimeAgoPluralLabels(one: '{0} δευτερόλεπτο', other: '{0} δευτερόλεπτα'),
    minute: TimeAgoPluralLabels(one: '{0} λεπτό', other: '{0} λεπτά'),
    hour: TimeAgoPluralLabels(one: '{0} ώρα', other: '{0} ώρες'),
    day: TimeAgoPluralLabels(one: '{0} ημέρα', other: '{0} ημέρες'),
    week: TimeAgoPluralLabels(one: '{0} εβδομάδα', other: '{0} εβδομάδες'),
    month: TimeAgoPluralLabels(one: '{0} μήνα', other: '{0} μήνες'),
    quarter: TimeAgoPluralLabels(one: '{0} τρίμηνο', other: '{0} τρίμηνα'),
    year: TimeAgoPluralLabels(one: '{0} έτος', other: '{0} έτη'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'πριν από {0}',
    future: 'σε {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'τώρα', past: 'πριν από {0} δευτ.', future: 'σε {0} δευτ.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχον λεπτό',
        past: 'πριν από {0} λεπ.',
        future: 'σε {0} λεπ.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχουσα ώρα', past: 'πριν από {0} ώ.', future: 'σε {0} ώ.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'σήμερα', past: 'πριν από {0} ημ.', future: 'σε {0} ημ.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχ. εβδομάδα',
        past: 'πριν από {0} εβδ.',
        future: 'σε {0} εβδ.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'τρέχων μήνας',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} μήνα', other: 'πριν από {0} μήνες'),
        future: TimeAgoPluralLabels(one: 'σε {0} μήνα', other: 'σε {0} μήνες')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχον τρίμ.',
        past: 'πριν από {0} τρίμ.',
        future: 'σε {0} τρίμ.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'φέτος',
        past: TimeAgoPluralLabels(
            one: 'πριν από {0} έτος', other: 'πριν από {0} έτη'),
        future: TimeAgoPluralLabels(one: 'σε {0} έτος', other: 'σε {0} έτη')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} δευτ.'),
    minute: TimeAgoPluralLabels.same('{0} λεπ.'),
    hour: TimeAgoPluralLabels.same('{0} ώ.'),
    day: TimeAgoPluralLabels.same('{0} ημ.'),
    week: TimeAgoPluralLabels.same('{0} εβδ.'),
    month: TimeAgoPluralLabels(one: '{0} μήνα', other: '{0} μήνες'),
    quarter: TimeAgoPluralLabels.same('{0} τρίμ.'),
    year: TimeAgoPluralLabels(one: '{0} έτος', other: '{0} έτη'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'πριν από {0}',
    future: 'σε {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'τώρα', past: '{0} δ. πριν', future: 'σε {0} δ.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχον λεπτό', past: '{0} λ. πριν', future: 'σε {0} λ.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχουσα ώρα', past: '{0} ώ. πριν', future: 'σε {0} ώ.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'σήμερα', past: '{0} ημ. πριν', future: 'σε {0} ημ.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχ. εβδ.', past: '{0} εβδ. πριν', future: 'σε {0} εβδ.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχ. μήνας', past: '{0} μ. πριν', future: 'σε {0} μ.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'τρέχον τρίμ.',
        past: '{0} τρίμ. πριν',
        future: 'σε {0} τρίμ.'),
    year: TimeAgoRelativeUnitLabels(
        current: 'φέτος',
        past: TimeAgoPluralLabels(one: '{0} έτος πριν', other: '{0} έτη πριν'),
        future: TimeAgoPluralLabels(one: 'σε {0} έτος', other: 'σε {0} έτη')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} δ.'),
    minute: TimeAgoPluralLabels.same('{0} λ.'),
    hour: TimeAgoPluralLabels.same('{0} ώ.'),
    day: TimeAgoPluralLabels.same('{0} ημ.'),
    week: TimeAgoPluralLabels.same('{0} εβδ.'),
    month: TimeAgoPluralLabels.same('{0} μ.'),
    quarter: TimeAgoPluralLabels.same('{0} τρίμ.'),
    year: TimeAgoPluralLabels(one: '{0} έτος', other: '{0} έτη'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} πριν',
    future: 'σε {0}',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}δ. πριν'),
        future: TimeAgoPluralLabels.same('σε {0}δ.')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}λ. πριν'),
        future: TimeAgoPluralLabels.same('σε {0}λ.')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}ώρ. πριν'),
        future: TimeAgoPluralLabels.same('σε {0}ώρ.')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}ημ. πριν'),
        future: TimeAgoPluralLabels.same('σε {0}ημ.')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}εβδ. πριν'),
        future: TimeAgoPluralLabels.same('σε {0}εβδ.')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}μην. πριν'),
        future: TimeAgoPluralLabels.same('σε {0}μην.')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0} τρίμ. πριν'),
        future: TimeAgoPluralLabels.same('σε {0} τρίμ.')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}χρ. πριν'),
        future: TimeAgoPluralLabels.same('σε {0}χρ.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}δ.'),
    minute: TimeAgoPluralLabels.same('{0}λ.'),
    hour: TimeAgoPluralLabels.same('{0}ώρ.'),
    day: TimeAgoPluralLabels.same('{0}ημ.'),
    week: TimeAgoPluralLabels.same('{0}εβδ.'),
    month: TimeAgoPluralLabels.same('{0}μην.'),
    quarter: TimeAgoPluralLabels.same('{0} τρίμ.'),
    year: TimeAgoPluralLabels.same('{0}χρ.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} πριν',
    future: 'σε {0}',
  ),
  now: 'τώρα',
);
