import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'lb'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'gëschter',
    today: 'haut',
    tomorrow: 'muer',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'virun 1 Sekonn',
    current: 'now',
    future: 'an 1 Sekonn',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'lb';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Sekonn', other: 'viru(n) {0} Sekonnen'),
        future: TimeAgoPluralLabels(
            one: 'an {0} Sekonn', other: 'a(n) {0} Sekonnen')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Minutt', other: 'viru(n) {0} Minutten'),
        future: TimeAgoPluralLabels(
            one: 'an {0} Minutt', other: 'a(n) {0} Minutten')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Stonn', other: 'viru(n) {0} Stonnen'),
        future: TimeAgoPluralLabels(
            one: 'an {0} Stonn', other: 'a(n) {0} Stonnen')),
    day: TimeAgoRelativeUnitLabels(
        current: 'haut',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Dag', other: 'viru(n) {0} Deeg'),
        future: TimeAgoPluralLabels(one: 'an {0} Dag', other: 'a(n) {0} Deeg')),
    week: TimeAgoRelativeUnitLabels(
        current: 'dës Woch',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Woch', other: 'viru(n) {0} Wochen'),
        future:
            TimeAgoPluralLabels(one: 'an {0} Woch', other: 'a(n) {0} Wochen')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dëse Mount',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Mount', other: 'viru(n) {0} Méint'),
        future:
            TimeAgoPluralLabels(one: 'an {0} Mount', other: 'a(n) {0} Méint')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this quarter',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Quartal', other: 'viru(n) {0} Quartaler'),
        future: TimeAgoPluralLabels(
            one: 'an {0} Quartal', other: 'a(n) {0} Quartaler')),
    year: TimeAgoRelativeUnitLabels(
        current: 'dëst Joer',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Joer', other: 'viru(n) {0} Joer'),
        future:
            TimeAgoPluralLabels(one: 'an {0} Joer', other: 'a(n) {0} Joer')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} Sekonn', other: '{0} Sekonnen'),
    minute: TimeAgoPluralLabels(one: '{0} Minutt', other: '{0} Minutten'),
    hour: TimeAgoPluralLabels(one: '{0} Stonn', other: '{0} Stonnen'),
    day: TimeAgoPluralLabels(one: '{0} Dag', other: '{0} Deeg'),
    week: TimeAgoPluralLabels(one: '{0} Woch', other: '{0} Wochen'),
    month: TimeAgoPluralLabels(one: '{0} Mount', other: '{0} Méint'),
    quarter: TimeAgoPluralLabels(one: '{0} Quartal', other: '{0} Quartaler'),
    year: TimeAgoPluralLabels(one: '{0} Joer', other: '{0} Joer'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'viru(n) {0}',
    future: 'a(n) {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Sek.', other: 'viru(n) {0} Sek.'),
        future:
            TimeAgoPluralLabels(one: 'an {0} Sek.', other: 'a(n) {0} Sek.')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: 'virun {0} Min.', other: 'viru(n) {0} Min.'),
        future:
            TimeAgoPluralLabels(one: 'an {0} Min.', other: 'a(n) {0} Min.')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past:
            TimeAgoPluralLabels(one: 'virun {0} St.', other: 'viru(n) {0} St.'),
        future: TimeAgoPluralLabels(one: 'an {0} St.', other: 'a(n) {0} St.')),
    day: TimeAgoRelativeUnitLabels(
        current: 'haut',
        past: TimeAgoPluralLabels(one: 'virun {0} D.', other: 'viru(n) {0} D.'),
        future: TimeAgoPluralLabels(one: 'an {0} D.', other: 'a(n) {0} D.')),
    week: TimeAgoRelativeUnitLabels(
        current: 'dës Woch',
        past: TimeAgoPluralLabels(one: 'virun {0} W.', other: 'viru(n) {0} W.'),
        future: TimeAgoPluralLabels(one: 'an {0} W.', other: 'a(n) {0} W.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dëse Mount',
        past: TimeAgoPluralLabels(one: 'virun {0} M.', other: 'viru(n) {0} M.'),
        future: TimeAgoPluralLabels(one: 'an {0} M.', other: 'a(n) {0} M.')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this quarter',
        past: TimeAgoPluralLabels(one: 'virun {0} Q.', other: 'viru(n) {0} Q.'),
        future: TimeAgoPluralLabels(one: 'an {0} Q.', other: 'a(n) {0} Q.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'dëst Joer',
        past: TimeAgoPluralLabels(one: 'virun {0} J.', other: 'viru(n) {0} J.'),
        future: TimeAgoPluralLabels(one: 'an {0} J.', other: 'a(n) {0} J.')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} Sek.', other: '{0} Sek.'),
    minute: TimeAgoPluralLabels(one: '{0} Min.', other: '{0} Min.'),
    hour: TimeAgoPluralLabels(one: '{0} St.', other: '{0} St.'),
    day: TimeAgoPluralLabels(one: '{0} D.', other: '{0} D.'),
    week: TimeAgoPluralLabels(one: '{0} W.', other: '{0} W.'),
    month: TimeAgoPluralLabels(one: '{0} M.', other: '{0} M.'),
    quarter: TimeAgoPluralLabels(one: '{0} Q.', other: '{0} Q.'),
    year: TimeAgoPluralLabels(one: '{0} J.', other: '{0} J.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'viru(n) {0}',
    future: 'a(n) {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} Sek.', future: '+{0} Sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} Min.', future: '+{0} Min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour', past: '-{0} St.', future: '+{0} St.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'haut', past: '-{0} D.', future: '+{0} D.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'dës Woch', past: '-{0} W.', future: '+{0} W.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'dëse Mount', past: '-{0} M.', future: '+{0} M.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q.', future: '+{0} Q.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'dëst Joer', past: '-{0} J.', future: '+{0} J.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} Sek.'),
    minute: TimeAgoPluralLabels.same('{0} Min.'),
    hour: TimeAgoPluralLabels.same('{0} St.'),
    day: TimeAgoPluralLabels.same('{0} D.'),
    week: TimeAgoPluralLabels.same('{0} W.'),
    month: TimeAgoPluralLabels.same('{0} M.'),
    quarter: TimeAgoPluralLabels.same('{0} Q.'),
    year: TimeAgoPluralLabels.same('{0} J.'),
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
