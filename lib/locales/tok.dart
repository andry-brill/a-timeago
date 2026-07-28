import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'tok'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'now',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'tok';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo ilo ni',
        past: 'tenpo ilo pini {0}',
        future: 'tenpo ilo kama {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo suno ni',
        past: 'tenpo suno pini {0}',
        future: 'tenpo suno kama {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo esun ni',
        past: 'tenpo esun pini {0}',
        future: 'tenpo esun kama {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo mun ni',
        past: 'tenpo mun pini {0}',
        future: 'tenpo mun kama {0}'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo sike ni',
        past: 'tenpo sike pini {0}',
        future: 'tenpo sike kama {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('tenpo ilo pini {0}'),
    day: TimeAgoPluralLabels.same('tenpo suno pini {0}'),
    week: TimeAgoPluralLabels.same('tenpo esun pini {0}'),
    month: TimeAgoPluralLabels.same('tenpo mun pini {0}'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('tenpo sike pini {0}'),
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

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo ilo ni',
        past: 'tenpo ilo pini {0}',
        future: 'tenpo ilo kama {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo suno ni',
        past: 'tenpo suno pini {0}',
        future: 'tenpo suno kama {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo esun ni',
        past: 'tenpo esun pini {0}',
        future: 'tenpo esun kama {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo mun ni',
        past: 'tenpo mun pini {0}',
        future: 'tenpo mun kama {0}'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo sike ni',
        past: 'tenpo sike pini {0}',
        future: 'tenpo sike kama {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('tenpo ilo pini {0}'),
    day: TimeAgoPluralLabels.same('tenpo suno pini {0}'),
    week: TimeAgoPluralLabels.same('tenpo esun pini {0}'),
    month: TimeAgoPluralLabels.same('tenpo mun pini {0}'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('tenpo sike pini {0}'),
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

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo ilo ni',
        past: 'tenpo ilo pini {0}',
        future: 'tenpo ilo kama {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo suno ni',
        past: 'tenpo suno pini {0}',
        future: 'tenpo suno kama {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo esun ni',
        past: 'tenpo esun pini {0}',
        future: 'tenpo esun kama {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo mun ni',
        past: 'tenpo mun pini {0}',
        future: 'tenpo mun kama {0}'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tenpo sike ni',
        past: 'tenpo sike pini {0}',
        future: 'tenpo sike kama {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('tenpo ilo pini {0}'),
    day: TimeAgoPluralLabels.same('tenpo suno pini {0}'),
    week: TimeAgoPluralLabels.same('tenpo esun pini {0}'),
    month: TimeAgoPluralLabels.same('tenpo mun pini {0}'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('tenpo sike pini {0}'),
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
