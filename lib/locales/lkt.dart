import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'lkt'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'Hékta okpí 1 k’uŋ héhaŋ',
    current: 'now',
    future: 'Letáŋhaŋ okpí 1 kiŋháŋ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'lkt';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now',
        past: 'Hékta okpí {0} k’uŋ héhaŋ',
        future: 'Letáŋhaŋ okpí {0} kiŋháŋ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'Hékta oȟ’áŋkȟo {0} k’uŋ héhaŋ',
        future: 'Letáŋhaŋ oȟ’áŋkȟo {0} kiŋháŋ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'Hékta owápȟe {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ owápȟe {0} kiŋháŋ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Lé aŋpétu kiŋ',
        past: 'Hékta {0}-čháŋ k’uŋ héhaŋ',
        future: 'Letáŋhaŋ {0}-čháŋ kiŋháŋ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Lé okó kiŋ',
        past: 'Hékta okó {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ okó {0} kiŋháŋ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Lé wí kiŋ',
        past: 'Hékta wíyawapi {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ wíyawapi {0} kiŋháŋ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Lé ómakȟa kiŋ',
        past: 'Hékta ómakȟa {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ ómakȟa {0} kiŋháŋ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} k'),
    minute: TimeAgoPluralLabels.same('{0} k'),
    hour: TimeAgoPluralLabels.same('{0} k'),
    day: TimeAgoPluralLabels.same('{0}-čháŋ k'),
    week: TimeAgoPluralLabels.same('{0} k'),
    month: TimeAgoPluralLabels.same('{0} k'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} k'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'Hékta okpí {0}’uŋ héhaŋ',
    future: 'Letáŋhaŋ okpí {0}iŋháŋ',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now',
        past: 'Hékta okpí {0} k’uŋ héhaŋ',
        future: 'Letáŋhaŋ okpí {0} kiŋháŋ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'Hékta oȟ’áŋkȟo {0} k’uŋ héhaŋ',
        future: 'Letáŋhaŋ oȟ’áŋkȟo {0} kiŋháŋ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'Hékta owápȟe {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ owápȟe {0} kiŋháŋ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Lé aŋpétu kiŋ',
        past: 'Hékta {0}-čháŋ k’uŋ héhaŋ',
        future: 'Letáŋhaŋ {0}-čháŋ kiŋháŋ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'Lé okó kiŋ',
        past: 'Hékta okó {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ okó {0} kiŋháŋ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'Lé wí kiŋ',
        past: 'Hékta wíyawapi {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ wíyawapi {0} kiŋháŋ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'Lé ómakȟa kiŋ',
        past: 'Hékta ómakȟa {0} kʼuŋ héhaŋ',
        future: 'Letáŋhaŋ ómakȟa {0} kiŋháŋ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} k'),
    minute: TimeAgoPluralLabels.same('{0} k'),
    hour: TimeAgoPluralLabels.same('{0} k'),
    day: TimeAgoPluralLabels.same('{0}-čháŋ k'),
    week: TimeAgoPluralLabels.same('{0} k'),
    month: TimeAgoPluralLabels.same('{0} k'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} k'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'Hékta okpí {0}’uŋ héhaŋ',
    future: 'Letáŋhaŋ okpí {0}iŋháŋ',
  ),
);
