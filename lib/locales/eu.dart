import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'eu'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'duela 1 segundo',
    current: 'orain',
    future: '1 segundo barru',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'eu';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'orain',
        past: 'duela {0} segundo',
        future: '{0} segundo barru'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'minutu honetan',
        past: 'duela {0} minutu',
        future: '{0} minutu barru'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ordu honetan',
        past: 'duela {0} ordu',
        future: '{0} ordu barru'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'gaur', past: 'duela {0} egun', future: '{0} egun barru'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'aste honetan',
        past: 'duela {0} aste',
        future: '{0} aste barru'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'hilabete honetan',
        past: 'duela {0} hilabete',
        future: '{0} hilabete barru'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'hiruhileko hau',
        past: 'duela {0} hiruhileko',
        future: '{0} hiruhileko barru'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'aurten', past: 'duela {0} urte', future: '{0} urte barru'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} segundo'),
    minute: TimeAgoPluralLabels.same('{0} minutu'),
    hour: TimeAgoPluralLabels.same('{0} ordu'),
    day: TimeAgoPluralLabels.same('{0} egun'),
    week: TimeAgoPluralLabels.same('{0} aste'),
    month: TimeAgoPluralLabels.same('{0} hilabete'),
    quarter: TimeAgoPluralLabels.same('{0} hiruhileko'),
    year: TimeAgoPluralLabels.same('{0} urte'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'duela {0}',
    future: '{0} barru',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'orain',
        past: 'duela {0} segundo',
        future: '{0} segundo barru'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'minutu honetan',
        past: 'duela {0} minutu',
        future: '{0} minutu barru'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ordu honetan',
        past: 'duela {0} ordu',
        future: '{0} ordu barru'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'gaur', past: 'duela {0} egun', future: '{0} egun barru'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'aste honetan',
        past: 'duela {0} aste',
        future: '{0} aste barru'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'hilabete honetan',
        past: 'duela {0} hilabete',
        future: '{0} hilabete barru'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'hiruhil. hau',
        past: 'duela {0} hiruhileko',
        future: '{0} hiruhileko barru'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'aurten', past: 'duela {0} urte', future: '{0} urte barru'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} segundo'),
    minute: TimeAgoPluralLabels.same('{0} minutu'),
    hour: TimeAgoPluralLabels.same('{0} ordu'),
    day: TimeAgoPluralLabels.same('{0} egun'),
    week: TimeAgoPluralLabels.same('{0} aste'),
    month: TimeAgoPluralLabels.same('{0} hilabete'),
    quarter: TimeAgoPluralLabels.same('{0} hiruhileko'),
    year: TimeAgoPluralLabels.same('{0} urte'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'duela {0}',
    future: '{0} barru',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'orain',
        past: 'duela {0} segundo',
        future: '{0} segundo barru'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'minutu honetan',
        past: 'duela {0} minutu',
        future: '{0} minutu barru'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ordu honetan',
        past: 'duela {0} ordu',
        future: '{0} ordu barru'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'gaur', past: 'duela {0} egun', future: '{0} egun barru'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'aste honetan',
        past: 'duela {0} aste',
        future: '{0} aste barru'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'hilabete honetan',
        past: 'duela {0} hilabete',
        future: '{0} hilabete barru'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'hiruhil. hau',
        past: 'duela {0} hiruhileko',
        future: '{0} hiruhileko barru'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'aurten', past: 'duela {0} urte', future: '{0} urte barru'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} segundo'),
    minute: TimeAgoPluralLabels.same('{0} minutu'),
    hour: TimeAgoPluralLabels.same('{0} ordu'),
    day: TimeAgoPluralLabels.same('{0} egun'),
    week: TimeAgoPluralLabels.same('{0} aste'),
    month: TimeAgoPluralLabels.same('{0} hilabete'),
    quarter: TimeAgoPluralLabels.same('{0} hiruhileko'),
    year: TimeAgoPluralLabels.same('{0} urte'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'duela {0}',
    future: '{0} barru',
  ),
);
