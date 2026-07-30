import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kok'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'काल',
    today: 'आयज',
    tomorrow: 'फाल्यां',
    dateTime: '{1} {0} वरांचेर',
    relativeDateTime: '{1} {0} वरांचेर',
  ),
  now: TimeAgoNowLabels(
    past: '1 सॅकंड आदीं',
    current: 'आतां',
    future: '1 सॅकंडान',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kok';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'आतां',
        past: TimeAgoPluralLabels.same('{0} सॅकंड आदीं'),
        future:
            TimeAgoPluralLabels(one: '{0} सॅकंडान', other: '{0} सॅकंडानीं')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'हो मिनूट',
        past: TimeAgoPluralLabels(
            one: '{0} मिनूट आदीं', other: '{0} मिणटां आदीं'),
        future: TimeAgoPluralLabels(one: '{0} मिणटान', other: '{0} मिणटांनी')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'हें वर',
        past: TimeAgoPluralLabels(one: '{0} वर आदीं', other: '{0} वरां आदीं'),
        future: TimeAgoPluralLabels(one: '{0} वरान', other: '{0} वरांनीं')),
    day: TimeAgoRelativeUnitLabels(
        current: 'आयज',
        past: TimeAgoPluralLabels.same('{0} दीस आदीं'),
        future: TimeAgoPluralLabels(one: '{0} दिसान', other: '{0} दिसानीं')),
    week: TimeAgoRelativeUnitLabels(
        current: 'हो सप्तक',
        past: TimeAgoPluralLabels(
            one: '{0} सप्तक आदीं', other: '{0} सप्तकां आदीं'),
        future:
            TimeAgoPluralLabels(one: '{0} सप्तकान', other: '{0} सप्तकांनीं')),
    month: TimeAgoRelativeUnitLabels(
        current: 'हो म्हयनो',
        past: TimeAgoPluralLabels(
            one: '{0} म्हयनो आदीं', other: '{0} म्हयने आदीं'),
        future: TimeAgoPluralLabels(
            one: '{0} म्हयन्यान', other: '{0} म्हयन्यानीं')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'हें तिम्हयनाळें',
        past: TimeAgoPluralLabels(
            one: '{0} तिम्हयनाळें आदीं', other: '{0} तिम्हयनाळे आदीं'),
        future: TimeAgoPluralLabels(
            one: '{0} तिम्हयनाळ्यान', other: '{0} तिम्हयनाळ्यांनीं')),
    year: TimeAgoRelativeUnitLabels(
        current: 'हें वर्स',
        past:
            TimeAgoPluralLabels(one: '{0} वर्स आदीं', other: '{0} वर्सां आदीं'),
        future: TimeAgoPluralLabels(one: '{0} वर्सान', other: '{0} वर्सांनीं')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} सॅकंड', other: '{0} सॅकंड'),
    minute: TimeAgoPluralLabels(one: '{0} मि', other: '{0} मिणटां'),
    hour: TimeAgoPluralLabels(one: '{0} वर', other: '{0} वरां'),
    day: TimeAgoPluralLabels(one: '{0} द', other: '{0} द'),
    week: TimeAgoPluralLabels(one: '{0} सप्तक', other: '{0} सप्तकां'),
    month: TimeAgoPluralLabels(one: '{0} म्हयन', other: '{0} म्हयन'),
    quarter: TimeAgoPluralLabels(one: '{0} तिम्हयनाळ', other: '{0} तिम्हयनाळ'),
    year: TimeAgoPluralLabels(one: '{0} वर्स', other: '{0} वर्सां'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} आदीं',
    future: '{0}ानीं',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'आतां',
        past: TimeAgoPluralLabels.same('{0} सॅक. आदीं'),
        future:
            TimeAgoPluralLabels(one: '{0} सॅकंडान', other: '{0} सॅकंडानीं')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'हो मिन.',
        past: TimeAgoPluralLabels.same('{0} मिण. आदीं'),
        future: TimeAgoPluralLabels(one: '{0} मिणटान', other: '{0} मिण.')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'हें वर',
        past: TimeAgoPluralLabels(one: '{0} वर आदीं', other: '{0} वरां आदीं'),
        future: TimeAgoPluralLabels(one: '{0} वरान', other: '{0} वरांनीं')),
    day: TimeAgoRelativeUnitLabels(
        current: 'आयज',
        past: TimeAgoPluralLabels.same('{0} दीस आदीं'),
        future: TimeAgoPluralLabels(one: '{0} दिसान', other: '{0} दिसानीं')),
    week: TimeAgoRelativeUnitLabels(
        current: 'हो सप्तक',
        past: TimeAgoPluralLabels(
            one: '{0} सप्तक आदीं', other: '{0} सप्तकां आदीं'),
        future:
            TimeAgoPluralLabels(one: '{0} सप्तकान', other: '{0} सप्तकांनीं')),
    month: TimeAgoRelativeUnitLabels(
        current: 'हो म्ह.',
        past: TimeAgoPluralLabels.same('{0} म्ह. आदीं'),
        future: TimeAgoPluralLabels(
            one: '{0} म्हयन्यान', other: '{0} म्हयन्यानीं')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'हें तिम्ह.',
        past: TimeAgoPluralLabels.same('{0} तिम्ह. आदीं'),
        future: TimeAgoPluralLabels(
            one: '{0} तिम्हयनाळ्यान', other: '{0} तिम्हयनाळ्यांनीं')),
    year: TimeAgoRelativeUnitLabels(
        current: 'हें वर्स',
        past:
            TimeAgoPluralLabels(one: '{0} वर्स आदीं', other: '{0} वर्सां आदीं'),
        future: TimeAgoPluralLabels(one: '{0} वर्सान', other: '{0} वर्सांनीं')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} सॅक', other: '{0} सॅक'),
    minute: TimeAgoPluralLabels(one: '{0} मिण', other: '{0} मिण.'),
    hour: TimeAgoPluralLabels(one: '{0} वर', other: '{0} वरां'),
    day: TimeAgoPluralLabels(one: '{0} द', other: '{0} द'),
    week: TimeAgoPluralLabels(one: '{0} सप्तक', other: '{0} सप्तकां'),
    month: TimeAgoPluralLabels(one: '{0} म्ह', other: '{0} म्ह'),
    quarter: TimeAgoPluralLabels(one: '{0} तिम्ह', other: '{0} तिम्ह'),
    year: TimeAgoPluralLabels(one: '{0} वर्स', other: '{0} वर्सां'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. आदीं',
    future: '{0}ंडानीं',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'आतां',
        past: TimeAgoPluralLabels.same('{0}सॅक आदीं'),
        future: TimeAgoPluralLabels(one: '{0}सॅकंडान', other: '{0}सॅकंडानीं')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'हो मिन',
        past: TimeAgoPluralLabels.same('{0}मिण आदीं'),
        future: TimeAgoPluralLabels(one: '{0}मिणटान', other: '{0}मिण')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'हें वर',
        past: TimeAgoPluralLabels(one: '{0}वर आदीं', other: '{0}वरां आदीं'),
        future: TimeAgoPluralLabels(one: '{0}वरान', other: '{0}वरांनीं')),
    day: TimeAgoRelativeUnitLabels(
        current: 'आयज',
        past: TimeAgoPluralLabels.same('{0}दी आदीं'),
        future: TimeAgoPluralLabels(one: '{0}दिसान', other: '{0}दिसानीं')),
    week: TimeAgoRelativeUnitLabels(
        current: 'हो सप्त',
        past: TimeAgoPluralLabels.same('{0}सप्त आदीं'),
        future: TimeAgoPluralLabels(one: '{0}सप्तकान', other: '{0}सप्तकांनीं')),
    month: TimeAgoRelativeUnitLabels(
        current: 'हो म्ह',
        past: TimeAgoPluralLabels.same('{0}म्ह आदीं'),
        future:
            TimeAgoPluralLabels(one: '{0}म्हयन्यान', other: '{0}म्हयन्यानीं')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'हें तिम्ह',
        past: TimeAgoPluralLabels.same('{0}तिम्ह आदीं'),
        future: TimeAgoPluralLabels(
            one: '{0}तिम्हयनाळ्यान', other: '{0}तिम्हयनाळ्यांनीं')),
    year: TimeAgoRelativeUnitLabels(
        current: 'हें वर्स',
        past: TimeAgoPluralLabels(one: '{0}वर्स आदीं', other: '{0}वर्सां आदीं'),
        future: TimeAgoPluralLabels(one: '{0}वर्सान', other: '{0}वर्सांनीं')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0}सॅक', other: '{0}सॅक'),
    minute: TimeAgoPluralLabels(one: '{0}मिण', other: '{0}मिण'),
    hour: TimeAgoPluralLabels(one: '{0}वर', other: '{0}वरां'),
    day: TimeAgoPluralLabels(one: '{0}द', other: '{0}द'),
    week: TimeAgoPluralLabels(one: '{0}सप्त', other: '{0}सप्त'),
    month: TimeAgoPluralLabels(one: '{0}म्ह', other: '{0}म्ह'),
    quarter: TimeAgoPluralLabels(one: '{0}तिम्ह', other: '{0}तिम्ह'),
    year: TimeAgoPluralLabels(one: '{0}वर्स', other: '{0}वर्सां'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} आदीं',
    future: '{0}ंडानीं',
  ),
);
