import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'br'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 eilenn zo',
    current: 'bremañ',
    future: 'a-benn 1 eilenn',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'br';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'bremañ',
        past: TimeAgoPluralLabels.same('{0} eilenn zo'),
        future: TimeAgoPluralLabels(
            many: 'a-benn {0} a eilennoù', other: 'a-benn {0} eilenn')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ar munut-mañ',
        past: TimeAgoPluralLabels(
            two: '{0} vunut zo',
            many: '{0} a vunutoù zo',
            other: '{0} munut zo'),
        future: TimeAgoPluralLabels(
            two: 'a-benn {0} vunut',
            many: 'a-benn {0} a vunutoù',
            other: 'a-benn {0} munut')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'dʼan eur-mañ',
        past: TimeAgoPluralLabels(many: '{0} a eurioù zo', other: '{0} eur zo'),
        future: TimeAgoPluralLabels(
            many: 'a-benn {0} a eurioù', other: 'a-benn {0} eur')),
    day: TimeAgoRelativeUnitLabels(
        current: 'hiziv',
        past: TimeAgoPluralLabels(
            two: '{0} zeiz zo', many: '{0} a zeizioù zo', other: '{0} deiz zo'),
        future: TimeAgoPluralLabels(
            two: 'a-benn {0} zeiz',
            many: 'a-benn {0} a zeizioù',
            other: 'a-benn {0} deiz')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ar sizhun-mañ',
        past: TimeAgoPluralLabels(
            many: '{0} a sizhunioù zo', other: '{0} sizhun zo'),
        future: TimeAgoPluralLabels(
            many: 'a-benn {0} a sizhunioù', other: 'a-benn {0} sizhun')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ar miz-mañ',
        past: TimeAgoPluralLabels(
            two: '{0} viz zo', many: '{0} a vizioù zo', other: '{0} miz zo'),
        future: TimeAgoPluralLabels(
            two: 'a-benn {0} viz',
            many: 'a-benn {0} a vizioù',
            other: 'a-benn {0} miz')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'an trimiziad-mañ',
        past: TimeAgoPluralLabels(
            two: '{0} drimiziad zo',
            few: '{0} zrimiziad zo',
            many: '{0} a zrimiziadoù zo',
            other: '{0} trimiziad zo'),
        future: TimeAgoPluralLabels(
            two: 'a-benn {0} drimiziad',
            few: 'a-benn {0} zrimiziad',
            many: 'a-benn {0} a drimiziadoù',
            other: 'a-benn {0} trimiziad')),
    year: TimeAgoRelativeUnitLabels(
        current: 'hevlene',
        past: TimeAgoPluralLabels(
            one: '{0} bloaz zo',
            few: '{0} bloaz zo',
            many: '{0} a vloazioù zo',
            other: '{0} vloaz zo'),
        future: TimeAgoPluralLabels(
            one: 'a-benn {0} bloaz',
            few: 'a-benn {0} bloaz',
            many: 'a-benn {0} a vloazioù',
            other: 'a-benn {0} vloaz')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(many: '{0} eilenn', other: '{0} eilenn'),
    minute: TimeAgoPluralLabels(
        two: '{0} vunut', many: '{0} a vunutoù', other: '{0} munut'),
    hour: TimeAgoPluralLabels(many: '{0} a eurioù', other: '{0} eur'),
    day: TimeAgoPluralLabels(
        two: '{0} zeiz', many: '{0} a zeizioù', other: '{0} deiz'),
    week: TimeAgoPluralLabels(many: '{0} a sizhunioù', other: '{0} sizhun'),
    month: TimeAgoPluralLabels(
        two: '{0} viz', many: '{0} a vizioù', other: '{0} miz'),
    quarter: TimeAgoPluralLabels(
        two: '{0} drimiziad',
        few: '{0} zrimiziad',
        many: '{0} a',
        other: '{0} trimiziad'),
    year: TimeAgoPluralLabels(
        one: '{0} bloaz',
        few: '{0} bloaz',
        many: '{0} a vloazioù',
        other: '{0} vloaz'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} zo',
    future: 'a-benn {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'brem.', past: '{0} s zo', future: 'a-benn {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ar munut-mañ', past: '{0} min zo', future: 'a-benn {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'dʼan eur-mañ', past: '{0} e zo', future: 'a-benn {0} e'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hiziv', past: '{0} d zo', future: 'a-benn {0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ar sizh.-mañ',
        past: '{0} sizh. zo',
        future: 'a-benn {0} sizh.'),
    month: TimeAgoRelativeUnitLabels(
        current: 'ar miz-mañ',
        past: TimeAgoPluralLabels(
            two: '{0} viz zo', many: '{0} a vizioù zo', other: '{0} miz zo'),
        future: TimeAgoPluralLabels(
            two: 'a-benn {0} viz',
            many: 'a-benn {0} a vizioù',
            other: 'a-benn {0} miz')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'an trim.-mañ',
        past: '{0} trim. zo',
        future: 'a-benn {0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'hevlene', past: '{0} bl. zo', future: 'a-benn {0} bl.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} e'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} sizh.'),
    month: TimeAgoPluralLabels(
        two: '{0} viz', many: '{0} a vizioù', other: '{0} miz'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} bl.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} zo',
    future: 'a-benn {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'brem.', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ar munut-mañ', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'dʼan eur-mañ', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hiziv', past: '-{0} d', future: '+{0} d'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ar sizh.-mañ',
        past: '{0} sizh. zo',
        future: 'a-benn {0} sizh.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ar m.-mañ', past: '-{0} miz', future: '+{0} miz'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'an trim.-mañ', past: '-{0} trim.', future: '+{0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'hevlene', past: '-{0} bl.', future: '+{0} bl.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} d'),
    week: TimeAgoPluralLabels.same('{0} sizh.'),
    month: TimeAgoPluralLabels.same('{0} miz'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} bl.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);
