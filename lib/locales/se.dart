import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'se'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
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
    past: '1 sekunda árat',
    current: 'now',
    future: '1 sekunda maŋŋilit',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'se';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: '{0} sekunda árat', other: '{0} sekundda árat'),
        future: TimeAgoPluralLabels(
            one: '{0} sekunda maŋŋilit', other: '{0} sekundda maŋŋilit')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: '{0} minuhta árat', other: '{0} minuhtta árat'),
        future: TimeAgoPluralLabels(
            one: '{0} minuhta maŋŋilit', other: '{0} minuhtta maŋŋilit')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: '{0} diibmu árat', other: '{0} diibmur árat'),
        future: TimeAgoPluralLabels(
            one: '{0} diibmu maŋŋilit', other: '{0} diibmur maŋŋilit')),
    day: TimeAgoRelativeUnitLabels(
        current: 'odne',
        past: TimeAgoPluralLabels(
            one: '{0} jándor árat', other: '{0} jándora árat'),
        future: TimeAgoPluralLabels(
            one: '{0} jándor maŋŋilit',
            two: '{0} jándor amaŋŋilit',
            other: '{0} jándora maŋŋilit')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(
            one: '{0} vahku árat', other: '{0} vahkku árat'),
        future: TimeAgoPluralLabels(
            one: '{0} vahku maŋŋilit', other: '{0} vahkku maŋŋilit')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month',
        past: '{0} mánotbadji árat',
        future: '{0} mánotbadji maŋŋilit'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past: TimeAgoPluralLabels(
            one: '{0} jahki árat', other: '{0} jahkki árat'),
        future: TimeAgoPluralLabels(
            one: '{0} jahki maŋŋilit', other: '{0} jahkki maŋŋilit')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekunda', other: '{0} sekundda'),
    minute: TimeAgoPluralLabels(one: '{0} minuhta', other: '{0} minuhtta'),
    hour: TimeAgoPluralLabels(one: '{0} diibmu', other: '{0} diibmur'),
    day: TimeAgoPluralLabels(
        one: '{0} jándor', two: '{0} jándor', other: '{0} jándora'),
    week: TimeAgoPluralLabels(one: '{0} vahku', other: '{0} vahkku'),
    month: TimeAgoPluralLabels.same('{0} mánotbadji'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} jahki', other: '{0} jahkki'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} árat',
    future: '{0} maŋŋilit',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: '{0} sekunda árat', other: '{0} sekundda árat'),
        future: TimeAgoPluralLabels(
            one: '{0} sekunda maŋŋilit', other: '{0} sekundda maŋŋilit')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: '{0} minuhta árat', other: '{0} minuhtta árat'),
        future: TimeAgoPluralLabels(
            one: '{0} minuhta maŋŋilit', other: '{0} minuhtta maŋŋilit')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: '{0} diibmu árat', other: '{0} diibmur árat'),
        future: TimeAgoPluralLabels(
            one: '{0} diibmu maŋŋilit', other: '{0} diibmur maŋŋilit')),
    day: TimeAgoRelativeUnitLabels(
        current: 'odne',
        past: TimeAgoPluralLabels(
            one: '{0} jándor árat', other: '{0} jándora árat'),
        future: TimeAgoPluralLabels(
            one: '{0} jándor maŋŋilit',
            two: '{0} jándor amaŋŋilit',
            other: '{0} jándora maŋŋilit')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(
            one: '{0} vahku árat', other: '{0} vahkku árat'),
        future: TimeAgoPluralLabels(
            one: '{0} vahku maŋŋilit', other: '{0} vahkku maŋŋilit')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month',
        past: '{0} mánotbadji árat',
        future: '{0} mánotbadji maŋŋilit'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past: TimeAgoPluralLabels(
            one: '{0} jahki árat', other: '{0} jahkki árat'),
        future: TimeAgoPluralLabels(
            one: '{0} jahki maŋŋilit', other: '{0} jahkki maŋŋilit')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekunda', other: '{0} sekundda'),
    minute: TimeAgoPluralLabels(one: '{0} minuhta', other: '{0} minuhtta'),
    hour: TimeAgoPluralLabels(one: '{0} diibmu', other: '{0} diibmur'),
    day: TimeAgoPluralLabels(
        one: '{0} jándor', two: '{0} jándor', other: '{0} jándora'),
    week: TimeAgoPluralLabels(one: '{0} vahku', other: '{0} vahkku'),
    month: TimeAgoPluralLabels.same('{0} mánotbadji'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} jahki', other: '{0} jahkki'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} árat',
    future: '{0} maŋŋilit',
  ),
);
