import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'lv'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'vakar',
    today: 'šodien',
    tomorrow: 'rīt',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'pirms 1 sekundes',
    current: 'tagad',
    future: 'pēc 1 sekundes',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'lv';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'tagad',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} sekundes', other: 'pirms {0} sekundēm'),
        future: TimeAgoPluralLabels(
            one: 'pēc {0} sekundes', other: 'pēc {0} sekundēm')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'šajā minūtē',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} minūtes', other: 'pirms {0} minūtēm'),
        future: TimeAgoPluralLabels(
            one: 'pēc {0} minūtes', other: 'pēc {0} minūtēm')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'šajā stundā',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} stundas', other: 'pirms {0} stundām'),
        future: TimeAgoPluralLabels(
            one: 'pēc {0} stundas', other: 'pēc {0} stundām')),
    day: TimeAgoRelativeUnitLabels(
        current: 'šodien',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} dienas', other: 'pirms {0} dienām'),
        future: TimeAgoPluralLabels(
            one: 'pēc {0} dienas', other: 'pēc {0} dienām')),
    week: TimeAgoRelativeUnitLabels(
        current: 'šajā nedēļā',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} nedēļas', other: 'pirms {0} nedēļām'),
        future: TimeAgoPluralLabels(
            one: 'pēc {0} nedēļas', other: 'pēc {0} nedēļām')),
    month: TimeAgoRelativeUnitLabels(
        current: 'šajā mēnesī',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} mēneša', other: 'pirms {0} mēnešiem'),
        future: TimeAgoPluralLabels(
            one: 'pēc {0} mēneša', other: 'pēc {0} mēnešiem')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'šis ceturksnis',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} ceturkšņa', other: 'pirms {0} ceturkšņiem'),
        future: TimeAgoPluralLabels(
            one: 'pēc {0} ceturkšņa', other: 'pēc {0} ceturkšņiem')),
    year: TimeAgoRelativeUnitLabels(
        current: 'šajā gadā',
        past: TimeAgoPluralLabels(
            one: 'pirms {0} gada', other: 'pirms {0} gadiem'),
        future:
            TimeAgoPluralLabels(one: 'pēc {0} gada', other: 'pēc {0} gadiem')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekundes', other: '{0} sekundēm'),
    minute: TimeAgoPluralLabels(one: '{0} minūtes', other: '{0} minūtēm'),
    hour: TimeAgoPluralLabels(one: '{0} stundas', other: '{0} stundām'),
    day: TimeAgoPluralLabels(one: '{0} dienas', other: '{0} dienām'),
    week: TimeAgoPluralLabels(one: '{0} nedēļas', other: '{0} nedēļām'),
    month: TimeAgoPluralLabels(one: '{0} mēneša', other: '{0} mēnešiem'),
    quarter:
        TimeAgoPluralLabels(one: '{0} ceturkšņa', other: '{0} ceturkšņiem'),
    year: TimeAgoPluralLabels(one: '{0} gada', other: '{0} gadiem'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pirms {0}',
    future: 'pēc {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'tagad', past: 'pirms {0} sek.', future: 'pēc {0} sek.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'šajā minūtē', past: 'pirms {0} min.', future: 'pēc {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'šajā stundā', past: 'pirms {0} st.', future: 'pēc {0} st.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'šodien',
        past: TimeAgoPluralLabels(one: 'pirms {0} d.', other: 'pirms {0} d.'),
        future: TimeAgoPluralLabels(one: 'pēc {0} d.', other: 'pēc {0} d.')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'šajā ned.', past: 'pirms {0} ned.', future: 'pēc {0} ned.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'šajā mēn.', past: 'pirms {0} mēn.', future: 'pēc {0} mēn.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'šis ceturksnis',
        past: 'pirms {0} cet.',
        future: 'pēc {0} cet.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'šajā g.', past: 'pirms {0} g.', future: 'pēc {0} g.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sek.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} st.'),
    day: TimeAgoPluralLabels(one: '{0} d.', other: '{0} d.'),
    week: TimeAgoPluralLabels.same('{0} ned.'),
    month: TimeAgoPluralLabels.same('{0} mēn.'),
    quarter: TimeAgoPluralLabels.same('{0} cet.'),
    year: TimeAgoPluralLabels.same('{0} g.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pirms {0}',
    future: 'pēc {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'tagad',
        past: TimeAgoPluralLabels(one: 'pirms {0} s', other: 'pirms {0} s'),
        future: TimeAgoPluralLabels.same('pēc {0} s')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'šajā minūtē',
        past: TimeAgoPluralLabels.same('pirms {0} min'),
        future: TimeAgoPluralLabels(one: 'pēc {0} min', other: 'pēc {0} min')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'šajā stundā', past: 'pirms {0} h', future: 'pēc {0} h'),
    day: TimeAgoRelativeUnitLabels(
        current: 'šodien',
        past: TimeAgoPluralLabels(one: 'pirms {0} d.', other: 'pirms {0} d.'),
        future: TimeAgoPluralLabels(one: 'pēc {0} d.', other: 'pēc {0} d.')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'šajā ned.', past: 'pirms {0} ned.', future: 'pēc {0} ned.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'šajā mēn.', past: 'pirms {0} mēn.', future: 'pēc {0} mēn.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'šis ceturksnis',
        past: 'pirms {0} cet.',
        future: 'pēc {0} cet.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'šajā g.', past: 'pirms {0} g.', future: 'pēc {0} g.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} s', other: '{0} s'),
    minute: TimeAgoPluralLabels(one: '{0} min', other: '{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels(one: '{0} d.', other: '{0} d.'),
    week: TimeAgoPluralLabels.same('{0} ned.'),
    month: TimeAgoPluralLabels.same('{0} mēn.'),
    quarter: TimeAgoPluralLabels.same('{0} cet.'),
    year: TimeAgoPluralLabels.same('{0} g.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'pirms {0}',
    future: 'pēc {0}',
  ),
);
