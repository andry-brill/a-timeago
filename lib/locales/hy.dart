import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'hy'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'երեկ',
    today: 'այսօր',
    tomorrow: 'վաղը',
    dateTime: '{1}, {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 վայրկյան առաջ',
    current: 'հիմա',
    future: '1 վայրկյանից',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'hy';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'հիմա', past: '{0} վայրկյան առաջ', future: '{0} վայրկյանից'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'այս րոպեին', past: '{0} րոպե առաջ', future: '{0} րոպեից'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'այս ժամին', past: '{0} ժամ առաջ', future: '{0} ժամից'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'այսօր', past: '{0} օր առաջ', future: '{0} օրից'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'այս շաբաթ', past: '{0} շաբաթ առաջ', future: '{0} շաբաթից'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'այս ամիս', past: '{0} ամիս առաջ', future: '{0} ամսից'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'այս եռամսյակ',
        past: '{0} եռամսյակ առաջ',
        future: '{0} եռամսյակից'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'այս տարի', past: '{0} տարի առաջ', future: '{0} տարուց'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} վայրկյան'),
    minute: TimeAgoPluralLabels.same('{0} րոպե'),
    hour: TimeAgoPluralLabels.same('{0} ժամ'),
    day: TimeAgoPluralLabels.same('{0} օր'),
    week: TimeAgoPluralLabels.same('{0} շաբաթ'),
    month: TimeAgoPluralLabels.same('{0} ամ'),
    quarter: TimeAgoPluralLabels.same('{0} եռամսյակ'),
    year: TimeAgoPluralLabels.same('{0} տար'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} առաջ',
    future: '{0}ից',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'հիմա', past: '{0} վրկ առաջ', future: '{0} վրկ-ից'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'այս րոպեին', past: '{0} ր առաջ', future: '{0} ր-ից'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'այս ժամին', past: '{0} ժ առաջ', future: '{0} ժ-ից'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'այսօր', past: '{0} օր առաջ', future: '{0} օրից'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'այս շաբաթ', past: '{0} շաբ առաջ', future: '{0} շաբ-ից'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'այս ամիս', past: '{0} ամիս առաջ', future: '{0} ամսից'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'այս եռամսյակ', past: '{0} եռմս առաջ', future: '{0} եռմս-ից'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'այս տարի', past: '{0} տ առաջ', future: '{0} տարուց'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} վրկ'),
    minute: TimeAgoPluralLabels.same('{0} ր'),
    hour: TimeAgoPluralLabels.same('{0} ժ'),
    day: TimeAgoPluralLabels.same('{0} օր'),
    week: TimeAgoPluralLabels.same('{0} շաբ'),
    month: TimeAgoPluralLabels.same('{0} ամ'),
    quarter: TimeAgoPluralLabels.same('{0} եռմս'),
    year: TimeAgoPluralLabels.same('{0} տ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} առաջ',
    future: '{0}-ից',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'հիմա', past: '{0} վ առաջ', future: '{0} վ-ից'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'այս րոպեին', past: '{0} ր առաջ', future: '{0} ր-ից'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'այս ժամին', past: '{0} ժ առաջ', future: '{0} ժ-ից'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'այսօր', past: '{0} օր առաջ', future: '{0} օրից'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'այս շաբաթ', past: '{0} շաբ առաջ', future: '{0} շաբ անց'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'այս ամիս', past: '{0} ամիս առաջ', future: '{0} ամսից'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'այս եռամսյակ', past: '{0} եռմս առաջ', future: '{0} եռմս-ից'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'այս տարի', past: '{0} տ առաջ', future: '{0} տարուց'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} վ'),
    minute: TimeAgoPluralLabels.same('{0} ր'),
    hour: TimeAgoPluralLabels.same('{0} ժ'),
    day: TimeAgoPluralLabels.same('{0} օր'),
    week: TimeAgoPluralLabels.same('{0} շաբ ա'),
    month: TimeAgoPluralLabels.same('{0} ամ'),
    quarter: TimeAgoPluralLabels.same('{0} եռմս'),
    year: TimeAgoPluralLabels.same('{0} տ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} առաջ',
    future: '{0}-ից',
  ),
);
