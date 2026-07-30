import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'my'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'မနေ့က',
    today: 'ယနေ့',
    tomorrow: 'မနက်ဖြန်',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'ပြီးခဲ့သည့် 1 စက္ကန့်',
    current: 'ယခု',
    future: '1 စက္ကန့်အတွင်း',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'my';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ယခု',
        past: 'ပြီးခဲ့သည့် {0} စက္ကန့်',
        future: '{0} စက္ကန့်အတွင်း'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ဤမိနစ်',
        past: 'ပြီးခဲ့သည့် {0} မိနစ်',
        future: '{0} မိနစ်အတွင်း'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ဤအချိန်',
        past: 'ပြီးခဲ့သည့် {0} နာရီ',
        future: '{0} နာရီအတွင်း'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ယနေ့', past: 'ပြီးခဲ့သည့် {0} ရက်', future: '{0} ရက်အတွင်း'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ယခု သီတင်းပတ်',
        past: 'ပြီးခဲ့သည့် {0} ပတ်',
        future: '{0} ပတ်အတွင်း'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ယခုလ', past: 'ပြီးခဲ့သည့် {0} လ', future: '{0} လအတွင်း'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ယခု သုံးလပတ်',
        past: 'ပြီးခဲ့သည့် သုံးလပတ်ကာလ {0} ခုအတွင်း',
        future: 'သုံးလပတ်ကာလ {0} အတွင်း'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ယခုနှစ်',
        past: 'ပြီးခဲ့သည့် {0} နှစ်',
        future: '{0} နှစ်အတွင်း'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} စက္ကန့်'),
    minute: TimeAgoPluralLabels.same('{0} မိနစ်'),
    hour: TimeAgoPluralLabels.same('{0} နာရီ'),
    day: TimeAgoPluralLabels.same('{0} ရက်'),
    week: TimeAgoPluralLabels.same('{0} ပတ်'),
    month: TimeAgoPluralLabels.same('{0} လ'),
    quarter: TimeAgoPluralLabels.same('သုံးလပတ်ကာလ {0} ခုအတွင်း'),
    year: TimeAgoPluralLabels.same('{0} နှစ်'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ပြီးခဲ့သည့် {0}',
    future: '{0}အတွင်း',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ယခု',
        past: 'ပြီးခဲ့သည့် {0} စက္ကန့်',
        future: '{0} စက္ကန့်အတွင်း'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ဤမိနစ်',
        past: 'ပြီးခဲ့သည့် {0} မိနစ်',
        future: '{0} မိနစ်အတွင်း'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ဤအချိန်',
        past: 'ပြီးခဲ့သည့် {0} နာရီ',
        future: '{0} နာရီအတွင်း'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ယနေ့', past: 'ပြီးခဲ့သည့် {0} ရက်', future: '{0} ရက်အတွင်း'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ယခု သီတင်းပတ်',
        past: 'ပြီးခဲ့သည့် {0} ပတ်',
        future: '{0} ပတ်အတွင်း'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ယခုလ', past: 'ပြီးခဲ့သည့် {0} လ', future: '{0} လအတွင်း'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ယခုသုံးလပတ်',
        past: 'ပြီးခဲ့သည့် သုံးလပတ်ကာလ {0} ခုအတွင်း',
        future: 'သုံးလပတ်ကာလ {0} ခုအတွင်း'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ယခုနှစ်',
        past: 'ပြီးခဲ့သည့် {0} နှစ်',
        future: '{0} နှစ်အတွင်း'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} စက္ကန့်'),
    minute: TimeAgoPluralLabels.same('{0} မိနစ်'),
    hour: TimeAgoPluralLabels.same('{0} နာရီ'),
    day: TimeAgoPluralLabels.same('{0} ရက်'),
    week: TimeAgoPluralLabels.same('{0} ပတ်'),
    month: TimeAgoPluralLabels.same('{0} လ'),
    quarter: TimeAgoPluralLabels.same('{0} ခုအတွင်း'),
    year: TimeAgoPluralLabels.same('{0} နှစ်'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ပြီးခဲ့သည့် {0}',
    future: '{0}အတွင်း',
  ),
);
