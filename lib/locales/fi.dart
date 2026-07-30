import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'fi'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'eilen',
    today: 'tänään',
    tomorrow: 'huomenna',
    dateTime: '{1} klo {0}',
    relativeDateTime: '{1} klo {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekunti sitten',
    current: 'nyt',
    future: '1 sekunnin päästä',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'fi';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nyt',
        past: TimeAgoPluralLabels(
            one: '{0} sekunti sitten', other: '{0} sekuntia sitten'),
        future: TimeAgoPluralLabels.same('{0} sekunnin päästä')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'tämän minuutin aikana',
        past: TimeAgoPluralLabels(
            one: '{0} minuutti sitten', other: '{0} minuuttia sitten'),
        future: TimeAgoPluralLabels.same('{0} minuutin päästä')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'tämän tunnin aikana',
        past: TimeAgoPluralLabels(
            one: '{0} tunti sitten', other: '{0} tuntia sitten'),
        future: TimeAgoPluralLabels.same('{0} tunnin päästä')),
    day: TimeAgoRelativeUnitLabels(
        current: 'tänään',
        past: TimeAgoPluralLabels(
            one: '{0} päivä sitten', other: '{0} päivää sitten'),
        future: TimeAgoPluralLabels.same('{0} päivän päästä')),
    week: TimeAgoRelativeUnitLabels(
        current: 'tällä viikolla',
        past: TimeAgoPluralLabels(
            one: '{0} viikko sitten', other: '{0} viikkoa sitten'),
        future: TimeAgoPluralLabels.same('{0} viikon päästä')),
    month: TimeAgoRelativeUnitLabels(
        current: 'tässä kuussa',
        past: TimeAgoPluralLabels(
            one: '{0} kuukausi sitten', other: '{0} kuukautta sitten'),
        future: TimeAgoPluralLabels.same('{0} kuukauden päästä')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'tänä neljännesvuonna',
        past: TimeAgoPluralLabels(
            one: '{0} neljännesvuosi sitten',
            other: '{0} neljännesvuotta sitten'),
        future: TimeAgoPluralLabels.same('{0} neljännesvuoden päästä')),
    year: TimeAgoRelativeUnitLabels(
        current: 'tänä vuonna',
        past: TimeAgoPluralLabels(
            one: '{0} vuosi sitten', other: '{0} vuotta sitten'),
        future: TimeAgoPluralLabels.same('{0} vuoden päästä')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekun', other: '{0} sekun'),
    minute: TimeAgoPluralLabels(one: '{0} minuut', other: '{0} minuut'),
    hour: TimeAgoPluralLabels(one: '{0} tun', other: '{0} tun'),
    day: TimeAgoPluralLabels(one: '{0} päivä', other: '{0} päivä'),
    week: TimeAgoPluralLabels(one: '{0} viik', other: '{0} viik'),
    month: TimeAgoPluralLabels(one: '{0} kuukau', other: '{0} kuukau'),
    quarter:
        TimeAgoPluralLabels(one: '{0} neljännesvuo', other: '{0} neljännesvuo'),
    year: TimeAgoPluralLabels(one: '{0} vuo', other: '{0} vuo'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}tia sitten',
    future: '{0}nin päästä',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nyt', past: '{0} s sitten', future: '{0} s päästä'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'minuutin sisällä',
        past: '{0} min sitten',
        future: '{0} min päästä'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'tunnin sisällä',
        past: '{0} t sitten',
        future: '{0} t päästä'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'tänään', past: '{0} pv sitten', future: '{0} pv päästä'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tällä vk', past: '{0} vk sitten', future: '{0} vk päästä'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tässä kk', past: '{0} kk sitten', future: '{0} kk päästä'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'tänä neljänneksenä',
        past: TimeAgoPluralLabels(
            one: '{0} neljännes sitten', other: '{0} neljännestä sitten'),
        future: TimeAgoPluralLabels.same('{0} neljänneksen päästä')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tänä v', past: '{0} v sitten', future: '{0} v päästä'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} pv'),
    week: TimeAgoPluralLabels.same('{0} vk'),
    month: TimeAgoPluralLabels.same('{0} kk'),
    quarter: TimeAgoPluralLabels(one: '{0} neljänne', other: '{0} neljänne'),
    year: TimeAgoPluralLabels.same('{0} v'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} sitten',
    future: '{0} päästä',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nyt', past: '{0} s sitten', future: '{0} s päästä'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'minuutin sisällä',
        past: '{0} min sitten',
        future: '{0} min päästä'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'tunnin sisällä',
        past: '{0} t sitten',
        future: '{0} t päästä'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'tänään', past: '{0} pv sitten', future: '{0} pv päästä'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tällä vk', past: '{0} vk sitten', future: '{0} vk päästä'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tässä kk', past: '{0} kk sitten', future: '{0} kk päästä'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'tänä nelj.',
        past: '{0} nelj. sitten',
        future: '{0} nelj. päästä'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'tänä v', past: '{0} v sitten', future: '{0} v päästä'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} t'),
    day: TimeAgoPluralLabels.same('{0} pv'),
    week: TimeAgoPluralLabels.same('{0} vk'),
    month: TimeAgoPluralLabels.same('{0} kk'),
    quarter: TimeAgoPluralLabels.same('{0} nelj.'),
    year: TimeAgoPluralLabels.same('{0} v'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} sitten',
    future: '{0} päästä',
  ),
);
