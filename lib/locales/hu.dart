import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'hu'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'tegnap',
    today: 'ma',
    tomorrow: 'holnap',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 másodperccel ezelőtt',
    current: 'most',
    future: '1 másodperc múlva',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'hu';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'most',
        past: '{0} másodperccel ezelőtt',
        future: '{0} másodperc múlva'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ebben a percben',
        past: '{0} perccel ezelőtt',
        future: '{0} perc múlva'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ebben az órában',
        past: '{0} órával ezelőtt',
        future: '{0} óra múlva'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ma', past: '{0} nappal ezelőtt', future: '{0} nap múlva'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ez a hét',
        past: '{0} héttel ezelőtt',
        future: '{0} hét múlva'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ez a hónap',
        past: '{0} hónappal ezelőtt',
        future: '{0} hónap múlva'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ez a negyedév',
        past: '{0} negyedévvel ezelőtt',
        future: '{0} negyedév múlva'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ez az év', past: '{0} évvel ezelőtt', future: '{0} év múlva'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} másodperc'),
    minute: TimeAgoPluralLabels.same('{0} perc'),
    hour: TimeAgoPluralLabels.same('{0} ór'),
    day: TimeAgoPluralLabels.same('{0} nap'),
    week: TimeAgoPluralLabels.same('{0} hét'),
    month: TimeAgoPluralLabels.same('{0} hónap'),
    quarter: TimeAgoPluralLabels.same('{0} negyedév'),
    year: TimeAgoPluralLabels.same('{0} év'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}cel ezelőtt',
    future: '{0} múlva',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'most',
        past: '{0} másodperccel ezelőtt',
        future: '{0} másodperc múlva'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ebben a percben',
        past: '{0} perccel ezelőtt',
        future: '{0} perc múlva'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ebben az órában',
        past: '{0} órával ezelőtt',
        future: '{0} óra múlva'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ma', past: '{0} napja', future: '{0} nap múlva'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ez a hét',
        past: '{0} héttel ezelőtt',
        future: '{0} hét múlva'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ez a hónap',
        past: '{0} hónappal ezelőtt',
        future: '{0} hónap múlva'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ez a negyedév',
        past: '{0} negyedévvel ezelőtt',
        future: '{0} negyedév múlva'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ez az év', past: '{0} évvel ezelőtt', future: '{0} év múlva'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} másodperc'),
    minute: TimeAgoPluralLabels.same('{0} perc'),
    hour: TimeAgoPluralLabels.same('{0} ór'),
    day: TimeAgoPluralLabels.same('{0} nap'),
    week: TimeAgoPluralLabels.same('{0} hét'),
    month: TimeAgoPluralLabels.same('{0} hónap'),
    quarter: TimeAgoPluralLabels.same('{0} negyedév'),
    year: TimeAgoPluralLabels.same('{0} év'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}cel ezelőtt',
    future: '{0} múlva',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'most', past: '{0} m.perce', future: '{0} másodperc múlva'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ebben a percben',
        past: '{0} perce',
        future: '{0} perc múlva'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ebben az órában', past: '{0} órája', future: '{0} óra múlva'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ma', past: '{0} napja', future: '{0} nap múlva'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ez a hét', past: '{0} hete', future: '{0} hét múlva'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ez a hónap', past: '{0} hónapja', future: '{0} hónap múlva'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ez a negyedév',
        past: '{0} negyedévvel ezelőtt',
        future: '{0} n.év múlva'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ez az év', past: '{0} éve', future: '{0} év múlva'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} m'),
    minute: TimeAgoPluralLabels.same('{0} perc'),
    hour: TimeAgoPluralLabels.same('{0} ór'),
    day: TimeAgoPluralLabels.same('{0} nap'),
    week: TimeAgoPluralLabels.same('{0} h'),
    month: TimeAgoPluralLabels.same('{0} hónap'),
    quarter: TimeAgoPluralLabels.same('{0} n'),
    year: TimeAgoPluralLabels.same('{0} év'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}.perce',
    future: '{0}ásodperc múlva',
  ),
);
