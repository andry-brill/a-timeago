import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'zu'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'izolo',
    today: 'namhlanje',
    tomorrow: 'kusasa',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 isekhondi eledlule',
    current: 'manje',
    future: 'kusekhondi elingu-1 elizayo',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'zu';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'manje',
        past: TimeAgoPluralLabels(
            one: '{0} isekhondi eledlule', other: '{0} amasekhondi edlule'),
        future: TimeAgoPluralLabels(
            one: 'kusekhondi elingu-{0} elizayo',
            other: 'kumasekhondi angu-{0} ezayo')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'leli minithi',
        past: TimeAgoPluralLabels(
            one: '{0} iminithi eledlule', other: '{0} amaminithi edlule'),
        future: TimeAgoPluralLabels(
            one: 'kuminithi elingu-{0} elizayo',
            other: 'kumaminithi angu-{0} ezayo')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'leli hora',
        past: TimeAgoPluralLabels(
            one: '{0} ihora eledlule', other: 'emahoreni angu-{0} edlule'),
        future: TimeAgoPluralLabels(
            one: 'ehoreni elingu-{0} elizayo',
            other: 'emahoreni angu-{0} ezayo')),
    day: TimeAgoRelativeUnitLabels(
        current: 'namhlanje',
        past: TimeAgoPluralLabels(
            one: 'osukwini olungu-{0} olwedlule',
            other: 'ezinsukwini ezingu-{0} ezedlule.'),
        future: TimeAgoPluralLabels(
            one: 'osukwini olungu-{0} oluzayo',
            other: 'ezinsukwini ezingu-{0} ezizayo')),
    week: TimeAgoRelativeUnitLabels(
        current: 'leli viki',
        past: TimeAgoPluralLabels(
            one: 'evikini elingu-{0} eledlule',
            other: 'amaviki angu-{0} edlule'),
        future: TimeAgoPluralLabels(
            one: 'evikini elingu-{0}', other: 'emavikini angu-{0}')),
    month: TimeAgoRelativeUnitLabels(
        current: 'le nyanga',
        past: TimeAgoPluralLabels(
            one: '{0} inyanga edlule', other: '{0} izinyanga ezedlule'),
        future: TimeAgoPluralLabels(
            one: 'enyangeni engu-{0}',
            other: 'ezinyangeni ezingu-{0} ezizayo')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'le kota',
        past: TimeAgoPluralLabels(
            one: '{0} ikota edlule', other: '{0} amakota adlule'),
        future: TimeAgoPluralLabels(
            one: 'kwikota engu-{0} ezayo', other: 'kumakota angu-{0} ezayo')),
    year: TimeAgoRelativeUnitLabels(
        current: 'kulo nyaka',
        past: TimeAgoPluralLabels(
            one: '{0} unyaka odlule', other: '{0} iminyaka edlule'),
        future: TimeAgoPluralLabels(
            one: 'onyakeni ongu-{0} ozayo',
            other: 'eminyakeni engu-{0} ezayo')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} amasekhondi e'),
    minute: TimeAgoPluralLabels.same('{0} amaminithi e'),
    hour: TimeAgoPluralLabels(one: '{0} ihora ele', other: '{0} e'),
    day: TimeAgoPluralLabels(one: '{0} ol', other: '{0} ez'),
    week: TimeAgoPluralLabels.same('amaviki angu-{0} e'),
    month: TimeAgoPluralLabels.same('{0} izinyanga eze'),
    quarter: TimeAgoPluralLabels.same('{0} amakota a'),
    year: TimeAgoPluralLabels.same('{0} iminyaka e'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'emahoreni angu-{0}dlule',
    future: 'emahoreni angu-{0}zayo',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'manje',
        past: TimeAgoPluralLabels(
            one: '{0} isekhondi eledlule', other: '{0} amasekhondi edlule'),
        future: TimeAgoPluralLabels(
            one: 'kusekhondi elingu-{0} elizayo',
            other: 'kumasekhondi angu-{0} ezayo')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'leli minithi',
        past: TimeAgoPluralLabels(
            one: '{0} iminithi eledlule', other: '{0} amaminithi edlule'),
        future: TimeAgoPluralLabels(
            one: 'kuminithi elingu-{0} elizayo',
            other: 'kumaminithi angu-{0} ezayo')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'leli hora',
        past: TimeAgoPluralLabels(
            one: '{0} ihora eledlule', other: 'emahoreni angu-{0} edlule'),
        future: TimeAgoPluralLabels(
            one: 'ehoreni elingu-{0} elizayo',
            other: 'emahoreni angu-{0} ezayo')),
    day: TimeAgoRelativeUnitLabels(
        current: 'namhlanje',
        past: TimeAgoPluralLabels(
            one: '{0} usuku olwedlule', other: '{0} izinsuku ezedlule'),
        future: TimeAgoPluralLabels(
            one: 'osukwini olungu-{0} oluzayo',
            other: 'ezinsukwini ezingu-{0} ezizayo')),
    week: TimeAgoRelativeUnitLabels(
        current: 'leli viki',
        past: TimeAgoPluralLabels.same('amaviki angu-{0} edlule'),
        future: TimeAgoPluralLabels(
            one: 'evikini elingu-{0} elizayo',
            other: 'emavikini angu-{0} ezayo')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'le nyanga',
        past: '{0} izinyanga ezedlule',
        future: 'ezinyangeni ezingu-{0} ezizayo'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'le kota',
        past: TimeAgoPluralLabels(
            one: '{0} amakota adlule', other: '{0} amakota edlule'),
        future: TimeAgoPluralLabels(
            one: 'kwikota engu-{0} ezayo', other: 'kumakota angu-{0} ezayo')),
    year: TimeAgoRelativeUnitLabels(
        current: 'kulo nyaka',
        past: TimeAgoPluralLabels.same('{0} unyaka odlule'),
        future: TimeAgoPluralLabels(
            one: 'onyakeni ongu-{0} ozayo',
            other: 'eminyakeni engu-{0} ezayo')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} amasekhondi e'),
    minute: TimeAgoPluralLabels.same('{0} amaminithi e'),
    hour: TimeAgoPluralLabels(one: '{0} ihora ele', other: '{0} e'),
    day: TimeAgoPluralLabels.same('{0} izinsuku eze'),
    week: TimeAgoPluralLabels(one: '{0} e', other: '{0} e'),
    month: TimeAgoPluralLabels.same('{0} izinyanga eze'),
    quarter: TimeAgoPluralLabels.same('{0} amakota e'),
    year: TimeAgoPluralLabels.same('{0} unyaka o'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'emahoreni angu-{0}dlule',
    future: 'emahoreni angu-{0}zayo',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'manje',
        past: TimeAgoPluralLabels(
            one: '{0} isekhondi eledlule', other: '{0} amasekhondi edlule'),
        future: TimeAgoPluralLabels(
            one: 'kusekhondi elingu-{0} elizayo',
            other: 'kumasekhondi angu-{0} ezayo')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'leli minithi',
        past: TimeAgoPluralLabels(
            one: '{0} iminithi eledlule', other: '{0} amaminithi edlule'),
        future: TimeAgoPluralLabels(
            one: 'kuminithi elingu-{0} elizayo',
            other: 'kumaminithi angu-{0} ezayo')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'leli hora',
        past: TimeAgoPluralLabels(
            one: '{0} ihora eledlule', other: '{0} amahora edlule'),
        future: TimeAgoPluralLabels(
            one: 'ehoreni elingu-{0} elizayo',
            other: 'emahoreni angu-{0} ezayo')),
    day: TimeAgoRelativeUnitLabels(
        current: 'namhlanje',
        past: TimeAgoPluralLabels(
            one: '{0} usuku olwedlule', other: '{0} izinsuku ezedlule'),
        future: TimeAgoPluralLabels(
            one: 'osukwini olungu-{0} oluzayo',
            other: 'ezinsukwini ezingu-{0} ezizayo')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'leli viki',
        past: 'amaviki angu-{0} edlule',
        future: 'emavikini angu-{0} ezayo'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'le nyanga',
        past: '{0} izinyanga ezedlule',
        future: 'enyangeni engu-{0} ezayo'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'le kota',
        past: TimeAgoPluralLabels(
            one: '{0} amakota adlule', other: '{0} amakota edlule'),
        future: TimeAgoPluralLabels.same('kumakota angu-{0}')),
    year: TimeAgoRelativeUnitLabels(
        current: 'kulo nyaka',
        past: TimeAgoPluralLabels.same('{0} unyaka odlule'),
        future: TimeAgoPluralLabels(
            one: 'onyakeni ongu-{0} ozayo',
            other: 'eminyakeni engu-{0} ezayo')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} amasekhondi e'),
    minute: TimeAgoPluralLabels.same('{0} amaminithi e'),
    hour: TimeAgoPluralLabels.same('{0} amahora e'),
    day: TimeAgoPluralLabels.same('{0} izinsuku eze'),
    week: TimeAgoPluralLabels.same('{0} e'),
    month: TimeAgoPluralLabels.same('{0} izinyanga eze'),
    quarter: TimeAgoPluralLabels.same('{0} amakota e'),
    year: TimeAgoPluralLabels.same('{0} unyaka o'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'amaviki angu-{0}dlule',
    future: 'emavikini angu-{0}zayo',
  ),
);
