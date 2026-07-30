import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'he'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'אתמול',
    today: 'היום',
    tomorrow: 'מחר',
    dateTime: '{1} בשעה {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'לפני שנייה',
    current: 'עכשיו',
    future: 'בעוד שנייה (1)',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'he';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'עכשיו',
        past: TimeAgoPluralLabels(
            one: 'לפני שנייה', two: 'לפני שתי שניות', other: 'לפני {0} שניות'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שנייה ({0})',
            two: 'בעוד שתי שניות',
            other: 'בעוד {0} שניות')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'בדקה זו',
        past:
            TimeAgoPluralLabels(one: 'לפני דקה ({0})', other: 'לפני {0} דקות'),
        future:
            TimeAgoPluralLabels(one: 'בעוד דקה ({0})', other: 'בעוד {0} דקות')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'בשעה זו',
        past: TimeAgoPluralLabels(
            one: 'לפני שעה ({0})',
            two: 'לפני שעתיים ({0})',
            other: 'לפני {0} שעות'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שעה ({0})',
            two: 'בעוד שעתיים ({0})',
            other: 'בעוד {0} שעות')),
    day: TimeAgoRelativeUnitLabels(
        current: 'היום',
        past: TimeAgoPluralLabels(
            one: 'לפני יום אחד ({0})',
            two: 'לפני יומיים ({0})',
            other: 'לפני {0} ימים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד יום ({0})',
            two: 'בעוד יומיים ({0})',
            other: 'בעוד {0} ימים')),
    week: TimeAgoRelativeUnitLabels(
        current: 'השבוע',
        past: TimeAgoPluralLabels(
            one: 'לפני שבוע ({0})',
            two: 'לפני שבועיים ({0})',
            other: 'לפני {0} שבועות'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שבוע ({0})',
            two: 'בעוד שבועיים ({0})',
            other: 'בעוד {0} שבועות')),
    month: TimeAgoRelativeUnitLabels(
        current: 'החודש',
        past: TimeAgoPluralLabels(
            one: 'לפני חודש ({0})',
            two: 'לפני חודשיים ({0})',
            other: 'לפני {0} חודשים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד חודש ({0})',
            two: 'בעוד חודשיים ({0})',
            other: 'בעוד {0} חודשים')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'הרבעון הזה',
        past: TimeAgoPluralLabels(
            one: 'לפני רבעון אחד ({0})', other: 'לפני {0} רבעונים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד רבעון אחד ({0})',
            two: 'בעוד שני רבעונים',
            other: 'בעוד {0} רבעונים')),
    year: TimeAgoRelativeUnitLabels(
        current: 'השנה',
        past: TimeAgoPluralLabels(
            one: 'לפני שנה', two: 'לפני שנתיים', other: 'לפני {0} שנים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שנה', two: 'בעוד שנתיים', other: 'בעוד {0} שנים')),
  ),
  units: TimeAgoUnitLabels(
    second:
        TimeAgoPluralLabels(one: 'שנייה', two: 'שתי שניות', other: '{0} שניות'),
    minute: TimeAgoPluralLabels(one: '{0})', other: '{0} דקות'),
    hour: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} שעות'),
    day: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} ימים'),
    week: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} שבועות'),
    month: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} חודשים'),
    quarter: TimeAgoPluralLabels(
        one: '{0})', two: '{0} רבעונים', other: '{0} רבעונים'),
    year: TimeAgoPluralLabels(one: 'שנה', two: 'שנתיים', other: '{0} שנים'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'לפני {0}',
    future: 'בעוד {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'עכשיו',
        past: TimeAgoPluralLabels(
            one: 'לפני שנ׳ ({0})', two: 'לפני שתי שנ׳', other: 'לפני {0} שנ׳'),
        future:
            TimeAgoPluralLabels(one: 'בעוד שנ׳ ({0})', other: 'בעוד {0} שנ׳')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'דקה זו',
        past: TimeAgoPluralLabels(one: 'לפני דק׳ ({0})', other: 'לפני {0} דק׳'),
        future:
            TimeAgoPluralLabels(one: 'בעוד דק׳ ({0})', other: 'בעוד {0} דק׳')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'בשעה זו',
        past: TimeAgoPluralLabels(
            one: 'לפני שע׳ ({0})',
            two: 'לפני שעתיים ({0})',
            other: 'לפני {0} שע׳'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שעה ({0})',
            two: 'בעוד שעתיים ({0})',
            other: 'בעוד {0} שע׳')),
    day: TimeAgoRelativeUnitLabels(
        current: 'היום',
        past: TimeAgoPluralLabels(
            one: 'לפני יום אחד ({0})',
            two: 'לפני יומיים ({0})',
            other: 'לפני {0} ימים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד יום אחד ({0})',
            two: 'בעוד יומיים ({0})',
            other: 'בעוד {0} ימים')),
    week: TimeAgoRelativeUnitLabels(
        current: 'השבוע',
        past: TimeAgoPluralLabels(
            one: 'לפני שב׳ ({0})',
            two: 'לפני שבועיים ({0})',
            other: 'לפני {0} שב׳'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שב׳ ({0})',
            two: 'בעוד שבועיים ({0})',
            other: 'בעוד {0} שב׳')),
    month: TimeAgoRelativeUnitLabels(
        current: 'החודש',
        past: TimeAgoPluralLabels(
            one: 'לפני חודש ({0})',
            two: 'לפני חודשיים ({0})',
            other: 'לפני {0} חודשים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד חודש ({0})',
            two: 'בעוד חודשיים ({0})',
            other: 'בעוד {0} חודשים')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'הרבעון הזה',
        past: TimeAgoPluralLabels(
            one: 'לפני רבע׳ אחד ({0})', other: 'לפני {0} רבע׳'),
        future: TimeAgoPluralLabels(
            one: 'בעוד רבע׳ אחד ({0})', other: 'בעוד {0} רבע׳')),
    year: TimeAgoRelativeUnitLabels(
        current: 'השנה',
        past: TimeAgoPluralLabels(
            one: 'לפני שנה ({0})',
            two: 'לפני שנתיים ({0})',
            other: 'לפני {0} שנים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שנה', two: 'בעוד שנתיים ({0})', other: 'בעוד {0} שנים')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0})', two: 'שתי שנ׳', other: '{0} שנ׳'),
    minute: TimeAgoPluralLabels(one: '{0})', other: '{0} דק׳'),
    hour: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} שע׳'),
    day: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} ימים'),
    week: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} שב׳'),
    month: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} חודשים'),
    quarter: TimeAgoPluralLabels(one: '{0})', other: '{0} רבע׳'),
    year: TimeAgoPluralLabels(one: 'שנה ({0})', two: '{0})', other: '{0} שנים'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'לפני {0}',
    future: 'בעוד {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'עכשיו',
        past: TimeAgoPluralLabels(
            one: 'לפני שנ׳ ({0})', two: 'לפני שתי שנ׳', other: 'לפני {0} שנ׳'),
        future:
            TimeAgoPluralLabels(one: 'בעוד שנ׳ ({0})', other: 'בעוד {0} שנ׳')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'דקה זו',
        past: TimeAgoPluralLabels(one: 'לפני דק׳ ({0})', other: 'לפני {0} דק׳'),
        future:
            TimeAgoPluralLabels(one: 'בעוד דק׳ ({0})', other: 'בעוד {0} דק׳')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'בשעה זו',
        past: TimeAgoPluralLabels(
            one: 'לפני שע׳ ({0})',
            two: 'לפני שעתיים ({0})',
            other: 'לפני {0} שע׳'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שעה ({0})',
            two: 'בעוד שעתיים ({0})',
            other: 'בעוד {0} שע׳')),
    day: TimeAgoRelativeUnitLabels(
        current: 'היום',
        past: TimeAgoPluralLabels(
            one: 'לפני יום אחד ({0})',
            two: 'לפני יומיים ({0})',
            other: 'לפני {0} ימים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד יום אחד ({0})',
            two: 'בעוד יומיים ({0})',
            other: 'בעוד {0} ימים')),
    week: TimeAgoRelativeUnitLabels(
        current: 'השבוע',
        past: TimeAgoPluralLabels(
            one: 'לפני שב׳ ({0})',
            two: 'לפני שבועיים ({0})',
            other: 'לפני {0} שב׳'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שב׳ ({0})',
            two: 'בעוד שבועיים ({0})',
            other: 'בעוד {0} שב׳')),
    month: TimeAgoRelativeUnitLabels(
        current: 'החודש',
        past: TimeAgoPluralLabels(
            one: 'לפני חו׳ ({0})',
            two: 'לפני חודשיים ({0})',
            other: 'לפני {0} חו׳'),
        future: TimeAgoPluralLabels(
            one: 'בעוד חו׳', two: 'בעוד חודשיים ({0})', other: 'בעוד {0} חו׳')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'הרבעון הזה',
        past: TimeAgoPluralLabels(
            one: 'לפני רבע׳ אחד ({0})', other: 'לפני {0} רבע׳'),
        future: TimeAgoPluralLabels(
            one: 'בעוד רבע׳ אחד ({0})', other: 'בעוד {0} רבע׳')),
    year: TimeAgoRelativeUnitLabels(
        current: 'השנה',
        past: TimeAgoPluralLabels(
            one: 'לפני שנה ({0})',
            two: 'לפני שנתיים ({0})',
            other: 'לפני {0} שנים'),
        future: TimeAgoPluralLabels(
            one: 'בעוד שנה ({0})',
            two: 'בעוד שנתיים ({0})',
            other: 'בעוד {0} שנים')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0})', two: 'שתי שנ׳', other: '{0} שנ׳'),
    minute: TimeAgoPluralLabels(one: '{0})', other: '{0} דק׳'),
    hour: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} שע׳'),
    day: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} ימים'),
    week: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} שב׳'),
    month: TimeAgoPluralLabels(one: 'חו׳ ({0})', two: '{0})', other: '{0} חו׳'),
    quarter: TimeAgoPluralLabels(one: '{0})', other: '{0} רבע׳'),
    year: TimeAgoPluralLabels(one: '{0})', two: '{0})', other: '{0} שנים'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'לפני {0}',
    future: 'בעוד {0}',
  ),
);
