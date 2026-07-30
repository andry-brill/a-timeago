import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'chr'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ᏒᎯ',
    today: 'ᎪᎯ ᎢᎦ',
    tomorrow: 'ᏌᎾᎴᎢ',
    dateTime: '{1} ᎤᎾᎢ {0}',
    relativeDateTime: '{1} ᎤᎾᎢ {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 ᎠᏎᏢ ᏥᎨᏒ',
    current: 'ᏃᏊ',
    future: 'ᎾᎿ 1 ᎠᏎᏢ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'chr';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ᏃᏊ',
        past: TimeAgoPluralLabels(one: '{0} ᎠᏎᏢ ᏥᎨᏒ', other: '{0} ᏓᏓᎾᏩᏍᎬ ᏥᎨᏒ'),
        future:
            TimeAgoPluralLabels(one: 'ᎾᎿ {0} ᎠᏎᏢ', other: 'ᎾᎿ {0} ᏓᏓᎾᏩᏍᎬ ᏥᎨᏒ')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ᎯᎠ ᎢᏯᏔᏬᏍᏔᏅ',
        past: '{0} ᎢᏯᏔᏬᏍᏔᏅ ᏥᎨᏒ',
        future: 'ᎾᎿ {0} ᎢᏯᏔᏬᏍᏔᏅ'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ᎯᎠ ᏑᏟᎶᏓ',
        past: TimeAgoPluralLabels(one: '{0} ᏑᏟᎶᏓ ᏥᎨᏒ', other: '{0} ᎢᏳᏟᎶᏓ ᏥᎨᏒ'),
        future: TimeAgoPluralLabels(one: 'ᎾᎿ {0} ᏑᏟᎶᏓ', other: 'ᎾᎿ {0} ᎢᏳᏟᎶᏓ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ᎪᎯ ᎢᎦ',
        past:
            TimeAgoPluralLabels(one: '{0} ᎢᎦ ᏥᎨᏒ', other: '{0} ᎯᎸᏍᎩ ᏧᏒᎯᏛ ᏥᎨᏒ'),
        future:
            TimeAgoPluralLabels(one: 'ᎾᎿ {0} ᎢᎦ', other: 'ᎾᎿ {0} ᎯᎸᏍᎩ ᏧᏒᎯᏛ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ᎯᎠ ᎠᎵᎵᏌ',
        past: TimeAgoPluralLabels(
            one: '{0} ᏒᎾᏙᏓᏆᏍᏗ ᏥᎨᏒ', other: '{0} ᎢᏳᎾᏙᏓᏆᏍᏗ ᏥᎨᏒ'),
        future: TimeAgoPluralLabels(
            one: 'ᎾᎿ {0} ᏒᎾᏙᏓᏆᏍᏗ', other: 'ᎾᎿ {0} ᎢᏳᎾᏙᏓᏆᏍᏗ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ᎯᎠ ᎧᎸᎢ',
        past: TimeAgoPluralLabels(one: '{0} ᎧᎸᎢ ᏥᎨᏒ', other: '{0} ᏗᎧᎸᎢ ᏥᎨᏒ'),
        future: TimeAgoPluralLabels(one: 'ᎾᎿ {0} ᎧᎸᎢ', other: 'ᎾᎿ {0} ᏗᎧᎸᎢ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ᎯᎠ ᎩᏄᏙᏗ',
        past:
            TimeAgoPluralLabels(one: 'ᎾᎿ {0} ᎩᏄᏙᏗ ᏥᎨᏒ', other: '{0} ᎩᏄᏙᏗ ᏥᎨᏒ'),
        future: TimeAgoPluralLabels.same('ᎾᎿ {0} ᎩᏄᏙᏗ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ᎯᎠ ᏧᏕᏘᏴᏒᏘ',
        past: TimeAgoPluralLabels(
            one: '{0} ᎤᏕᏘᏴᏌᏗᏒᎢ ᏥᎨᏒ', other: '{0} ᎢᏧᏕᏘᏴᏌᏗᏒᎢ ᏥᎨᏒ'),
        future: TimeAgoPluralLabels(
            one: 'ᎾᎿ {0} ᎤᏕᏘᏴᏌᏗᏒᎢ', other: 'ᎾᎿ {0} ᎢᏧᏕᏘᏴᏌᏗᏒᎢ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ᎠᏎᏢ', other: '{0} ᏓᏓᎾᏩᏍᎬ'),
    minute: TimeAgoPluralLabels.same('{0} ᎢᏯᏔᏬᏍᏔᏅ'),
    hour: TimeAgoPluralLabels(one: '{0} ᏑᏟᎶᏓ', other: '{0} ᎢᏳᏟᎶᏓ'),
    day: TimeAgoPluralLabels(one: '{0} ᎢᎦ', other: '{0} ᎯᎸᏍᎩ ᏧᏒᎯᏛ'),
    week: TimeAgoPluralLabels(one: '{0} ᏒᎾᏙᏓᏆᏍᏗ', other: '{0} ᎢᏳᎾᏙᏓᏆᏍᏗ'),
    month: TimeAgoPluralLabels(one: '{0} ᎧᎸᎢ', other: '{0} ᏗᎧᎸᎢ'),
    quarter: TimeAgoPluralLabels(one: '{0} ᎩᏄᏙᏗ', other: '{0} ᎩᏄᏙᏗ'),
    year: TimeAgoPluralLabels(one: '{0} ᎤᏕᏘᏴᏌᏗᏒᎢ', other: '{0} ᎢᏧᏕᏘᏴᏌᏗᏒᎢ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ᏥᎨᏒ',
    future: 'ᎾᎿ {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ᏃᏊ', past: '{0} ᎠᏎ. ᏥᎨᏒ', future: 'ᎾᎿ {0} ᎠᏎ.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ᎯᎠ ᎢᏯᏔᏬᏍᏔᏅ', past: '{0} ᎢᏯᏔ. ᏥᎨᏒ', future: 'ᎾᎿ {0} ᎢᏯᏔ.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ᎯᎠ ᏑᏟᎶᏓ', past: '{0} ᏑᏟ. ᏥᎨᏒ', future: 'ᎾᎿ {0} ᏑᏟ.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'ᎪᎯ ᎢᎦ',
        past:
            TimeAgoPluralLabels(one: '{0} ᎢᎦ ᏥᎨᏒ', other: '{0} ᎯᎸᏍᎩ ᏧᏒᎯᏛ ᏥᎨᏒ'),
        future:
            TimeAgoPluralLabels(one: 'ᎾᎿ {0} ᎢᎦ', other: 'ᎾᎿ {0} ᎯᎸᏍᎩ ᏧᏒᎯᏛ')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ᎯᎠ ᎠᎵᎵᏌ.', past: '{0} ᏒᎾ. ᏥᎨᏒ', future: 'ᎾᎿ {0} ᏒᎾ.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ᎯᎠ ᎧᎸ.', past: '{0} ᎧᎸ. ᏥᎨᏒ', future: 'ᎾᎿ {0} ᎧᎸ.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ᎯᎠ ᎩᏄᏙᏗ', past: '{0} ᎩᏄᏘ. ᏥᎨᏒ', future: 'ᎾᎿ {0} ᎩᏄᏘ.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ᎯᎠ ᏧᏕᏘᏴᏒᏘ.', past: '{0} ᎤᏕ. ᏥᎨᏒ', future: 'ᎾᎿ {0} ᎤᏕ.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ᎠᏎ.'),
    minute: TimeAgoPluralLabels.same('{0} ᎢᏯᏔ.'),
    hour: TimeAgoPluralLabels.same('{0} ᏑᏟ.'),
    day: TimeAgoPluralLabels(one: '{0} ᎢᎦ', other: '{0} ᎯᎸᏍᎩ ᏧᏒᎯᏛ'),
    week: TimeAgoPluralLabels.same('{0} ᏒᎾ.'),
    month: TimeAgoPluralLabels.same('{0} ᎧᎸ.'),
    quarter: TimeAgoPluralLabels.same('{0} ᎩᏄᏘ.'),
    year: TimeAgoPluralLabels.same('{0} ᎤᏕ.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ᏥᎨᏒ',
    future: 'ᎾᎿ {0}',
  ),
);
