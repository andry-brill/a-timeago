import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'tk'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'düýn',
    today: 'şu gün',
    tomorrow: 'ertir',
    dateTime: '{1} sagat {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekunt öň',
    current: 'häzir',
    future: '1 sekuntdan',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'tk';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'häzir', past: '{0} sekunt öň', future: '{0} sekuntdan'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'şu minut', past: '{0} minut öň', future: '{0} minutdan'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'şu sagat', past: '{0} sagat öň', future: '{0} sagatdan'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'şu gün', past: '{0} gün öň', future: '{0} günden'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'şu hepde', past: '{0} hepde öň', future: '{0} hepdeden'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'şu aý', past: '{0} aý öň', future: '{0} aýdan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'şu çärýek', past: '{0} çärýek öň', future: '{0} çärýekden'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'şu ýyl', past: '{0} ýyl öň', future: '{0} ýyldan'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sekunt'),
    minute: TimeAgoPluralLabels.same('{0} minut'),
    hour: TimeAgoPluralLabels.same('{0} sagat'),
    day: TimeAgoPluralLabels.same('{0} gün'),
    week: TimeAgoPluralLabels.same('{0} hepde'),
    month: TimeAgoPluralLabels.same('{0} aý'),
    quarter: TimeAgoPluralLabels.same('{0} çärýek'),
    year: TimeAgoPluralLabels.same('{0} ýyl'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} öň',
    future: '{0}dan',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'häzir', past: '{0} sek. öň', future: '{0} sek-dan'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'şu minut', past: '{0} min. öň', future: '{0} min-dan'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'şu sagat', past: '{0} sag. öň', future: '{0} sag-dan'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'şu gün', past: '{0} g. öň', future: '{0} g-den'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'şu hepde', past: '{0} hep. öň', future: '{0} hep-den'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'şu aý', past: '{0} aý öň', future: '{0} aýdan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'şu çärýek', past: '{0} çär. öň', future: '{0} çär-den'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'şu ýyl', past: '{0} ý. öň', future: '{0} ý-dan'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} sag'),
    day: TimeAgoPluralLabels.same('{0} g'),
    week: TimeAgoPluralLabels.same('{0} hep'),
    month: TimeAgoPluralLabels.same('{0} aý'),
    quarter: TimeAgoPluralLabels.same('{0} çär'),
    year: TimeAgoPluralLabels.same('{0} ý'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. öň',
    future: '{0}-dan',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'häzir', past: '{0} sek. öň', future: '{0} sek-dan'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'şu minut', past: '{0} min. öň', future: '{0} min-dan'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'şu sagat', past: '{0} sag. öň', future: '{0} sag-dan'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'şu gün', past: '{0} g. öň', future: '{0} g-den'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'şu hepde', past: '{0} h. öň', future: '{0} h-den'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'şu aý', past: '{0} aý öň', future: '{0} aýdan'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'şu çärýek', past: '{0} ç. öň', future: '{0} ç-den'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'şu ýyl', past: '{0} ý. öň', future: '{0} ý-dan'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} sag'),
    day: TimeAgoPluralLabels.same('{0} g'),
    week: TimeAgoPluralLabels.same('{0} h'),
    month: TimeAgoPluralLabels.same('{0} aý'),
    quarter: TimeAgoPluralLabels.same('{0} ç'),
    year: TimeAgoPluralLabels.same('{0} ý'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. öň',
    future: '{0}-dan',
  ),
);
