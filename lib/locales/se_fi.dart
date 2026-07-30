import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'se', countryCode: 'FI'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ikte',
    today: 'odne',
    tomorrow: 'ihttin',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekunda áigi',
    current: 'dál',
    future: '1 sekundda siste',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'se_FI';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'dál',
        past: TimeAgoPluralLabels(
            one: '{0} sekunda áigi', other: '{0} sekundda áigi'),
        future: TimeAgoPluralLabels.same('{0} sekundda siste')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'dán minuhta',
        past: TimeAgoPluralLabels(
            one: '{0} minuhtta áigi', other: '{0} minuhta áigi'),
        future: TimeAgoPluralLabels.same('{0} minuhta siste')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'dán diimmu',
        past: TimeAgoPluralLabels(
            one: '{0} diibmu áigi', other: '{0} diimmu áigi'),
        future: TimeAgoPluralLabels.same('{0} diimmu siste')),
    day: TimeAgoRelativeUnitLabels(
        current: 'odne',
        past: TimeAgoPluralLabels(
            one: 'ikte', two: 'ovddet beaivve', other: '{0} beaivve dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} beaivve siste')),
    week: TimeAgoRelativeUnitLabels(
        current: 'dán vahku',
        past: TimeAgoPluralLabels(
            one: '{0} vahkku dás ovdal', other: '{0} vahku dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} vahku geahčen')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dán mánu',
        past: TimeAgoPluralLabels(
            one: '{0} mánnu dás ovdal', other: '{0} mánu dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} mánu siste')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'dán njealjádasjagi',
        past: '-{0} njealjádasjagi dás ovdal',
        future: 'čuovvovaš {0} njealjádasjagi'),
    year: TimeAgoRelativeUnitLabels(
        current: 'dán jagi',
        past: TimeAgoPluralLabels(
            one: 'diibmá', two: 'ovddet jagi', other: '{0} jagi dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} jagi siste')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekund', other: '{0} sekundda'),
    minute: TimeAgoPluralLabels(one: '{0} minuht', other: '{0} minuhta'),
    hour: TimeAgoPluralLabels(one: '{0} dii', other: '{0} diimmu'),
    day: TimeAgoPluralLabels(
        one: 'ikte', two: 'ovddet beaivve', other: '{0} beaivve'),
    week: TimeAgoPluralLabels(one: '{0} vahk', other: '{0} vahku'),
    month: TimeAgoPluralLabels(one: '{0} mán', other: '{0} mánu'),
    quarter: TimeAgoPluralLabels.same('{0} njealjádasjagi'),
    year: TimeAgoPluralLabels(
        one: 'diibmá', two: 'ovddet jagi', other: '{0} jagi'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} áigi',
    future: '{0} siste',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'dál',
        past: TimeAgoPluralLabels(
            two: '{0} sekundda áigi', other: '{0} sek. áigi'),
        future: TimeAgoPluralLabels(
            two: '{0} sekundda siste', other: '{0} sek. siste')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'dán minuhta',
        past: TimeAgoPluralLabels(
            two: '{0} minuhta áigi', other: '{0} min. áigi'),
        future: TimeAgoPluralLabels(
            two: '{0} minuhta siste', other: '{0} min. siste')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'dán diimmu',
        past:
            TimeAgoPluralLabels(two: '{0} diimmu áigi', other: '{0} dmu áigi'),
        future: TimeAgoPluralLabels(
            two: '{0} diimmu siste', other: '{0} dmu siste')),
    day: TimeAgoRelativeUnitLabels(
        current: 'odne',
        past: TimeAgoPluralLabels(
            one: 'ikte', two: 'ovddet beaivve', other: '{0} beaivve dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} beaivve siste')),
    week: TimeAgoRelativeUnitLabels(
        current: 'dán vahku',
        past: TimeAgoPluralLabels(
            two: '{0} vahku dás ovdal', other: '{0} v(k) dás ovdal'),
        future: TimeAgoPluralLabels(
            two: '{0} vahku siste', other: '{0} v(k) siste')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dán mánu',
        past: TimeAgoPluralLabels(
            one: '{0} mánnu dás ovdal', other: '{0} mánu dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} mánu siste')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'dán njealjádasjagi',
        past: TimeAgoPluralLabels(
            two: '{0} njealjádasjagi dás ovdal',
            other: '{0} njealj.j. dás ovdal'),
        future: TimeAgoPluralLabels(
            two: 'boahtte {0} njealjádasjagi', other: 'boahtte {0} njealj.j.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'dán jagi',
        past: TimeAgoPluralLabels(
            one: 'diibmá', two: 'ovddet jagi', other: '{0} j. dás ovdal'),
        future:
            TimeAgoPluralLabels(two: '{0} jagi siste', other: '{0} j. siste')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(two: '{0} sekundda', other: '{0} sek.'),
    minute: TimeAgoPluralLabels(two: '{0} minuhta', other: '{0} min.'),
    hour: TimeAgoPluralLabels(two: '{0} diimmu', other: '{0} dmu'),
    day: TimeAgoPluralLabels(
        one: 'ikte', two: 'ovddet beaivve', other: '{0} beaivve'),
    week: TimeAgoPluralLabels(two: '{0} vahku', other: '{0} v(k)'),
    month: TimeAgoPluralLabels(one: '{0} mán', other: '{0} mánu'),
    quarter:
        TimeAgoPluralLabels(two: '{0} njealjádasjagi', other: '{0} njealj.j.'),
    year:
        TimeAgoPluralLabels(one: 'diibmá', two: 'ovddet jagi', other: '{0} j.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} áigi',
    future: '{0} siste',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'dál',
        past: TimeAgoPluralLabels(
            two: '{0} sekundda áigi', other: '{0} sek. áigi'),
        future: TimeAgoPluralLabels(
            two: '{0} sekundda siste', other: '{0} sek. siste')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'dán minuhta',
        past: TimeAgoPluralLabels(
            two: '{0} minuhta áigi', other: '{0} min. áigi'),
        future: TimeAgoPluralLabels(
            two: '{0} minuhta siste', other: '{0} min. siste')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'dán diimmu',
        past:
            TimeAgoPluralLabels(two: '{0} diimmu áigi', other: '{0} dmu áigi'),
        future: TimeAgoPluralLabels(
            two: '{0} diimmu siste', other: '{0} dmu siste')),
    day: TimeAgoRelativeUnitLabels(
        current: 'odne',
        past: TimeAgoPluralLabels(
            one: 'ikte', two: 'ovddet beaivve', other: '{0} beaivve dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} beaivve siste')),
    week: TimeAgoRelativeUnitLabels(
        current: 'dán vahku',
        past: TimeAgoPluralLabels(
            one: '{0} vahkku dás ovdal',
            two: '{0} vahku dás ovdal',
            other: '{0} v(k) dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} v(k) geahčen')),
    month: TimeAgoRelativeUnitLabels(
        current: 'dán mánu',
        past: TimeAgoPluralLabels(
            one: '{0} mánnu dás ovdal', other: '{0} mánu dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} mánu geahčen')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'dán njealjádasjagi',
        past: TimeAgoPluralLabels(
            two: '-{0} njealjádasjagi dás ovdal',
            other: '{0} njealj.j. dás ovdal'),
        future: TimeAgoPluralLabels(
            two: 'boahtte {0} njealjádasjagi', other: 'boahtte {0} njealj.j.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'dán jagi',
        past: TimeAgoPluralLabels(
            two: '{0} jagi dás ovdal', other: '{0} j. dás ovdal'),
        future: TimeAgoPluralLabels.same('{0} jagi siste')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(two: '{0} sekundda', other: '{0} sek.'),
    minute: TimeAgoPluralLabels(two: '{0} minuhta', other: '{0} min.'),
    hour: TimeAgoPluralLabels(two: '{0} diimmu', other: '{0} dmu'),
    day: TimeAgoPluralLabels(
        one: 'ikte', two: 'ovddet beaivve', other: '{0} beaivve'),
    week: TimeAgoPluralLabels(one: '{0} v', two: '{0} v', other: '{0} v(k)'),
    month: TimeAgoPluralLabels(one: '{0} mán', other: '{0} mánu'),
    quarter:
        TimeAgoPluralLabels(two: '{0} njealjádasjagi', other: '{0} njealj.j.'),
    year: TimeAgoPluralLabels(two: '{0} jagi', other: '{0} j'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} áigi',
    future: '{0} siste',
  ),
);
