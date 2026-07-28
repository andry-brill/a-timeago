import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ha'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'dakika 1 da ta gabata',
    current: 'yanzu',
    future: 'cikin dakika 1',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ha';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'yanzu',
        past: TimeAgoPluralLabels(
            one: 'dakika {0} da ta gabata', other: 'dakiku {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin dakika {0}', other: 'cikin dakiku {0}')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'wannan mintin',
        past: TimeAgoPluralLabels(
            one: 'minti {0} da ya gabata', other: 'mintuna {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin minti {0}', other: 'cikin mintuna {0}')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'wannan awa',
        past: TimeAgoPluralLabels(
            one: 'awa {0} da ta gabata', other: 'awanni {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin awa {0}', other: 'cikin awanni {0}')),
    day: TimeAgoRelativeUnitLabels(
        current: 'yau',
        past: TimeAgoPluralLabels(
            one: 'kwana {0} da ya gabata', other: 'kwanaki {0} da suka gabata'),
        future: TimeAgoPluralLabels.same('a cikin kwanaki {0}')),
    week: TimeAgoRelativeUnitLabels(
        current: 'wannan satin',
        past: TimeAgoPluralLabels(
            one: 'mako {0} da ya gabata', other: 'makonni {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'a cikin mako {0}', other: 'a cikin makonni {0}')),
    month: TimeAgoRelativeUnitLabels(
        current: 'wannan watan',
        past: TimeAgoPluralLabels(
            one: 'wata {0} da ya gabata', other: 'watanni {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'a cikin watan {0}', other: 'a cikin watanni {0}')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'wannan kwatan',
        past: TimeAgoPluralLabels.same('kwata {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'a cikin kwata {0}', other: 'a cikin kwatas {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: 'bana',
        past: TimeAgoPluralLabels(
            one: 'shekara {0} da ta gabata',
            other: 'shekaru {0} da suka gabata'),
        future:
            TimeAgoPluralLabels(one: 'a shekarar {0}', other: 'a shekaru {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('dakiku {0} da suka gabata'),
    minute: TimeAgoPluralLabels.same('mintuna {0} da suka gabata'),
    hour: TimeAgoPluralLabels.same('awanni {0} da suka gabata'),
    day: TimeAgoPluralLabels.same('kwanaki {0} da suka gabata'),
    week: TimeAgoPluralLabels.same('makonni {0} da suka gabata'),
    month: TimeAgoPluralLabels.same('watanni {0} da suka gabata'),
    quarter: TimeAgoPluralLabels.same('kwata {0} da suka gabata'),
    year: TimeAgoPluralLabels.same('shekaru {0} da suka gabata'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'yanzu',
        past: TimeAgoPluralLabels(
            one: 'dakika {0} da ta gabata', other: 'dakiku {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin dakika {0}', other: 'cikin dakiku {0}')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'wannan mintin',
        past: TimeAgoPluralLabels(
            one: 'minti {0} da ya gabata', other: 'mintuna {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin minti {0}', other: 'cikin mintuna {0}')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'wannan awa',
        past: TimeAgoPluralLabels(
            one: 'awa {0} da ta gabata', other: 'awanni {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin awa {0}', other: 'cikin awanni {0}')),
    day: TimeAgoRelativeUnitLabels(
        current: 'yau',
        past: TimeAgoPluralLabels(
            one: 'kwana {0} da ya gabata', other: 'kwanaki {0} da suka gabata'),
        future: TimeAgoPluralLabels.same('a cikin kwanaki {0}')),
    week: TimeAgoRelativeUnitLabels(
        current: 'wannan satin',
        past: TimeAgoPluralLabels(
            one: 'mako {0} da ya gabata', other: 'makonni {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'a cikin mako {0}', other: 'a cikin makonni {0}')),
    month: TimeAgoRelativeUnitLabels(
        current: 'wannan watan',
        past: TimeAgoPluralLabels(
            one: 'wata {0} da ya gabata', other: 'watanni {0} da suka gabata'),
        future: TimeAgoPluralLabels.same('a cikin watan {0}')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'wannan kwatan',
        past: TimeAgoPluralLabels.same('kwata {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'a cikin kwata {0}', other: 'a cikin kwatas {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: 'bana',
        past: TimeAgoPluralLabels(
            one: 'shekara {0} da ta gabata',
            other: 'shekaru {0} da suka gabata'),
        future:
            TimeAgoPluralLabels(one: 'a shekarar {0}', other: 'a shekaru {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('dakiku {0} da suka gabata'),
    minute: TimeAgoPluralLabels.same('mintuna {0} da suka gabata'),
    hour: TimeAgoPluralLabels.same('awanni {0} da suka gabata'),
    day: TimeAgoPluralLabels.same('kwanaki {0} da suka gabata'),
    week: TimeAgoPluralLabels.same('makonni {0} da suka gabata'),
    month: TimeAgoPluralLabels.same('watanni {0} da suka gabata'),
    quarter: TimeAgoPluralLabels.same('kwata {0} da suka gabata'),
    year: TimeAgoPluralLabels.same('shekaru {0} da suka gabata'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'yanzu',
        past: TimeAgoPluralLabels(
            one: 'dakika {0} da ta gabata', other: 'dakiku {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin dakika {0}', other: 'cikin dakiku {0}')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'wannan mintin',
        past: TimeAgoPluralLabels(
            one: 'minti {0} da ya gabata', other: 'mintuna {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin minti {0}', other: 'cikin mintuna {0}')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'wannan awa',
        past: TimeAgoPluralLabels(
            one: 'awa {0} da ta gabata', other: 'awanni {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'cikin awa {0}', other: 'cikin awanni {0}')),
    day: TimeAgoRelativeUnitLabels(
        current: 'yau',
        past: TimeAgoPluralLabels(
            one: 'kwana {0} da ya gabata', other: 'kwanaki {0} da suka gabata'),
        future: TimeAgoPluralLabels.same('a cikin kwanaki {0}')),
    week: TimeAgoRelativeUnitLabels(
        current: 'wannan satin',
        past: TimeAgoPluralLabels.same('mako {0} da ya gabata'),
        future: TimeAgoPluralLabels(
            one: 'a cikin mako {0}', other: 'a cikin makonni {0}')),
    month: TimeAgoRelativeUnitLabels(
        current: 'wannan watan',
        past: TimeAgoPluralLabels(
            one: 'wata {0} da ya gabata', other: 'watanni {0} da suka gabata'),
        future: TimeAgoPluralLabels.same('a cikin watan {0}')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'wannan kwatan',
        past: TimeAgoPluralLabels.same('kwata {0} da suka gabata'),
        future: TimeAgoPluralLabels(
            one: 'a cikin kwata {0}', other: 'a cikin kwatas {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: 'bana',
        past: TimeAgoPluralLabels(
            one: 'shekara {0} da ta gabata',
            other: 'shekaru {0} da suka gabata'),
        future:
            TimeAgoPluralLabels(one: 'a shekarar {0}', other: 'a shekaru {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('dakiku {0} da suka gabata'),
    minute: TimeAgoPluralLabels.same('mintuna {0} da suka gabata'),
    hour: TimeAgoPluralLabels.same('awanni {0} da suka gabata'),
    day: TimeAgoPluralLabels.same('kwanaki {0} da suka gabata'),
    week: TimeAgoPluralLabels.same('mako {0} da ya gabata'),
    month: TimeAgoPluralLabels.same('watanni {0} da suka gabata'),
    quarter: TimeAgoPluralLabels.same('kwata {0} da suka gabata'),
    year: TimeAgoPluralLabels.same('shekaru {0} da suka gabata'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);
