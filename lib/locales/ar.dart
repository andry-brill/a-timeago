import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ar'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'قبل ثانية واحدة',
    current: 'الآن',
    future: 'خلال ثانية واحدة',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ar';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'الآن',
        past: TimeAgoPluralLabels(
            one: 'قبل ثانية واحدة',
            two: 'قبل ثانيتين',
            few: 'قبل {0} ثوانِ',
            other: 'قبل {0} ثانية'),
        future: TimeAgoPluralLabels(
            one: 'خلال ثانية واحدة',
            two: 'خلال ثانيتين',
            few: 'خلال {0} ثوانٍ',
            other: 'خلال {0} ثانية')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'هذه الدقيقة',
        past: TimeAgoPluralLabels(
            one: 'قبل دقيقة واحدة',
            two: 'قبل دقيقتين',
            few: 'قبل {0} دقائق',
            other: 'قبل {0} دقيقة'),
        future: TimeAgoPluralLabels(
            one: 'خلال دقيقة واحدة',
            two: 'خلال دقيقتين',
            few: 'خلال {0} دقائق',
            other: 'خلال {0} دقيقة')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'الساعة الحالية',
        past: TimeAgoPluralLabels(
            one: 'قبل ساعة واحدة',
            two: 'قبل ساعتين',
            few: 'قبل {0} ساعات',
            other: 'قبل {0} ساعة'),
        future: TimeAgoPluralLabels(
            one: 'خلال ساعة واحدة',
            two: 'خلال ساعتين',
            few: 'خلال {0} ساعات',
            other: 'خلال {0} ساعة')),
    day: TimeAgoRelativeUnitLabels(
        current: 'اليوم',
        past: TimeAgoPluralLabels(
            one: 'قبل يوم واحد',
            two: 'قبل يومين',
            few: 'قبل {0} أيام',
            many: 'قبل {0} يومًا',
            other: 'قبل {0} يوم'),
        future: TimeAgoPluralLabels(
            one: 'خلال يوم واحد',
            two: 'خلال يومين',
            few: 'خلال {0} أيام',
            many: 'خلال {0} يومًا',
            other: 'خلال {0} يوم')),
    week: TimeAgoRelativeUnitLabels(
        current: 'هذا الأسبوع',
        past: TimeAgoPluralLabels(
            one: 'قبل أسبوع واحد',
            two: 'قبل أسبوعين',
            few: 'قبل {0} أسابيع',
            many: 'قبل {0} أسبوعًا',
            other: 'قبل {0} أسبوع'),
        future: TimeAgoPluralLabels(
            one: 'خلال أسبوع واحد',
            two: 'خلال أسبوعين',
            few: 'خلال {0} أسابيع',
            many: 'خلال {0} أسبوعًا',
            other: 'خلال {0} أسبوع')),
    month: TimeAgoRelativeUnitLabels(
        current: 'هذا الشهر',
        past: TimeAgoPluralLabels(
            one: 'قبل شهر واحد',
            two: 'قبل شهرين',
            few: 'قبل {0} أشهر',
            many: 'قبل {0} شهرًا',
            other: 'قبل {0} شهر'),
        future: TimeAgoPluralLabels(
            one: 'خلال شهر واحد',
            two: 'خلال شهرين',
            few: 'خلال {0} أشهر',
            many: 'خلال {0} شهرًا',
            other: 'خلال {0} شهر')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'هذا الربع',
        past: TimeAgoPluralLabels(
            one: 'قبل ربع سنة واحد',
            two: 'قبل ربعي سنة',
            few: 'قبل {0} أرباع سنة',
            other: 'قبل {0} ربع سنة'),
        future: TimeAgoPluralLabels(
            one: 'خلال ربع سنة واحد',
            two: 'خلال ربعي سنة',
            few: 'خلال {0} أرباع سنة',
            other: 'خلال {0} ربع سنة')),
    year: TimeAgoRelativeUnitLabels(
        current: 'السنة الحالية',
        past: TimeAgoPluralLabels(
            one: 'قبل سنة واحدة',
            two: 'قبل سنتين',
            few: 'قبل {0} سنوات',
            other: 'قبل {0} سنة'),
        future: TimeAgoPluralLabels(
            one: 'خلال سنة واحدة',
            two: 'خلال سنتين',
            few: 'خلال {0} سنوات',
            other: 'خلال {0} سنة')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: 'ثانية واحدة',
        two: 'ثانيتين',
        few: '{0} ثوان',
        other: '{0} ثانية'),
    minute: TimeAgoPluralLabels(
        one: 'دقيقة واحدة',
        two: 'دقيقتين',
        few: '{0} دقائق',
        other: '{0} دقيقة'),
    hour: TimeAgoPluralLabels(
        one: 'ساعة واحدة', two: 'ساعتين', few: '{0} ساعات', other: '{0} ساعة'),
    day: TimeAgoPluralLabels(
        one: 'يوم واحد',
        two: 'يومين',
        few: '{0} أيام',
        many: '{0} يومًا',
        other: '{0} يوم'),
    week: TimeAgoPluralLabels(
        one: 'أسبوع واحد',
        two: 'أسبوعين',
        few: '{0} أسابيع',
        many: '{0} أسبوعًا',
        other: '{0} أسبوع'),
    month: TimeAgoPluralLabels(
        one: 'شهر واحد',
        two: 'شهرين',
        few: '{0} أشهر',
        many: '{0} شهرًا',
        other: '{0} شهر'),
    quarter: TimeAgoPluralLabels(
        one: 'ربع سنة واحد',
        two: 'ربعي سنة',
        few: '{0} أرباع سنة',
        other: '{0} ربع سنة'),
    year: TimeAgoPluralLabels(
        one: 'سنة واحدة', two: 'سنتين', few: '{0} سنوات', other: '{0} سنة'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'قبل {0}',
    future: 'خلال {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'الآن',
        past: TimeAgoPluralLabels(
            one: 'قبل ثانية واحدة',
            two: 'قبل ثانيتين',
            few: 'قبل {0} ثوانٍ',
            other: 'قبل {0} ثانية'),
        future: TimeAgoPluralLabels(
            one: 'خلال ثانية واحدة',
            two: 'خلال ثانيتين',
            few: 'خلال {0} ثوانٍ',
            other: 'خلال {0} ثانية')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'هذه الدقيقة',
        past: TimeAgoPluralLabels(
            one: 'قبل دقيقة واحدة',
            two: 'قبل دقيقتين',
            few: 'قبل {0} دقائق',
            other: 'قبل {0} دقيقة'),
        future: TimeAgoPluralLabels(
            one: 'خلال دقيقة واحدة',
            two: 'خلال دقيقتين',
            few: 'خلال {0} دقائق',
            other: 'خلال {0} دقيقة')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'الساعة الحالية',
        past: TimeAgoPluralLabels(
            one: 'قبل ساعة واحدة',
            two: 'قبل ساعتين',
            few: 'قبل {0} ساعات',
            other: 'قبل {0} ساعة'),
        future: TimeAgoPluralLabels(
            one: 'خلال ساعة واحدة',
            two: 'خلال ساعتين',
            few: 'خلال {0} ساعات',
            other: 'خلال {0} ساعة')),
    day: TimeAgoRelativeUnitLabels(
        current: 'اليوم',
        past: TimeAgoPluralLabels(
            one: 'قبل يوم واحد',
            two: 'قبل يومين',
            few: 'قبل {0} أيام',
            many: 'قبل {0} يومًا',
            other: 'قبل {0} يوم'),
        future: TimeAgoPluralLabels(
            one: 'خلال يوم واحد',
            two: 'خلال يومين',
            few: 'خلال {0} أيام',
            many: 'خلال {0} يومًا',
            other: 'خلال {0} يوم')),
    week: TimeAgoRelativeUnitLabels(
        current: 'هذا الأسبوع',
        past: TimeAgoPluralLabels(
            one: 'قبل أسبوع واحد',
            two: 'قبل أسبوعين',
            few: 'قبل {0} أسابيع',
            many: 'قبل {0} أسبوعًا',
            other: 'قبل {0} أسبوع'),
        future: TimeAgoPluralLabels(
            one: 'خلال أسبوع واحد',
            two: 'خلال {0} أسبوعين',
            few: 'خلال {0} أسابيع',
            many: 'خلال {0} أسبوعًا',
            other: 'خلال {0} أسبوع')),
    month: TimeAgoRelativeUnitLabels(
        current: 'هذا الشهر',
        past: TimeAgoPluralLabels(
            one: 'قبل شهر واحد',
            two: 'قبل شهرين',
            few: 'خلال {0} أشهر',
            many: 'قبل {0} شهرًا',
            other: 'قبل {0} شهر'),
        future: TimeAgoPluralLabels(
            one: 'خلال شهر واحد',
            two: 'خلال شهرين',
            few: 'خلال {0} أشهر',
            many: 'خلال {0} شهرًا',
            other: 'خلال {0} شهر')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'هذا الربع',
        past: TimeAgoPluralLabels(
            one: 'قبل ربع سنة واحد',
            two: 'قبل ربعي سنة',
            few: 'قبل {0} أرباع سنة',
            other: 'قبل {0} ربع سنة'),
        future: TimeAgoPluralLabels(
            one: 'خلال ربع سنة واحد',
            two: 'خلال ربعي سنة',
            few: 'خلال {0} أرباع سنة',
            other: 'خلال {0} ربع سنة')),
    year: TimeAgoRelativeUnitLabels(
        current: 'السنة الحالية',
        past: TimeAgoPluralLabels(
            one: 'قبل سنة واحدة',
            two: 'قبل سنتين',
            few: 'قبل {0} سنوات',
            other: 'قبل {0} سنة'),
        future: TimeAgoPluralLabels(
            one: 'خلال سنة واحدة',
            two: 'خلال سنتين',
            few: 'خلال {0} سنوات',
            other: 'خلال {0} سنة')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: 'ثانية واحدة',
        two: 'ثانيتين',
        few: '{0} ثوانٍ',
        other: '{0} ثانية'),
    minute: TimeAgoPluralLabels(
        one: 'دقيقة واحدة',
        two: 'دقيقتين',
        few: '{0} دقائق',
        other: '{0} دقيقة'),
    hour: TimeAgoPluralLabels(
        one: 'ساعة واحدة', two: 'ساعتين', few: '{0} ساعات', other: '{0} ساعة'),
    day: TimeAgoPluralLabels(
        one: 'يوم واحد',
        two: 'يومين',
        few: '{0} أيام',
        many: '{0} يومًا',
        other: '{0} يوم'),
    week: TimeAgoPluralLabels(
        one: 'أسبوع واحد',
        two: 'أسبوعين',
        few: '{0} أسابيع',
        many: '{0} أسبوعًا',
        other: '{0} أسبوع'),
    month: TimeAgoPluralLabels(
        one: 'شهر واحد',
        two: 'شهرين',
        few: '{0} أشهر',
        many: '{0} شهرًا',
        other: '{0} شهر'),
    quarter: TimeAgoPluralLabels(
        one: 'ربع سنة واحد',
        two: 'ربعي سنة',
        few: '{0} أرباع سنة',
        other: '{0} ربع سنة'),
    year: TimeAgoPluralLabels(
        one: 'سنة واحدة', two: 'سنتين', few: '{0} سنوات', other: '{0} سنة'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'قبل {0}',
    future: 'خلال {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'الآن',
        past: TimeAgoPluralLabels(
            one: 'قبل ثانية واحدة',
            two: 'قبل ثانيتين',
            few: 'قبل {0} ثوانٍ',
            other: 'قبل {0} ثانية'),
        future: TimeAgoPluralLabels(
            one: 'خلال ثانية واحدة',
            two: 'خلال ثانيتين',
            few: 'خلال {0} ثوانٍ',
            other: 'خلال {0} ثانية')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'هذه الدقيقة',
        past: TimeAgoPluralLabels(
            one: 'قبل دقيقة واحدة',
            two: 'قبل دقيقتين',
            few: 'قبل {0} دقائق',
            other: 'قبل {0} دقيقة'),
        future: TimeAgoPluralLabels(
            one: 'خلال دقيقة واحدة',
            two: 'خلال دقيقتين',
            few: 'خلال {0} دقائق',
            other: 'خلال {0} دقيقة')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'الساعة الحالية',
        past: TimeAgoPluralLabels(
            one: 'قبل ساعة واحدة',
            two: 'قبل ساعتين',
            few: 'قبل {0} ساعات',
            other: 'قبل {0} ساعة'),
        future: TimeAgoPluralLabels(
            one: 'خلال ساعة واحدة',
            two: 'خلال ساعتين',
            few: 'خلال {0} ساعات',
            other: 'خلال {0} ساعة')),
    day: TimeAgoRelativeUnitLabels(
        current: 'اليوم',
        past: TimeAgoPluralLabels(
            one: 'قبل يوم واحد',
            two: 'قبل يومين',
            few: 'قبل {0} أيام',
            many: 'قبل {0} يومًا',
            other: 'قبل {0} يوم'),
        future: TimeAgoPluralLabels(
            one: 'خلال يوم واحد',
            two: 'خلال يومين',
            few: 'خلال {0} أيام',
            many: 'خلال {0} يومًا',
            other: 'خلال {0} يوم')),
    week: TimeAgoRelativeUnitLabels(
        current: 'هذا الأسبوع',
        past: TimeAgoPluralLabels(
            one: 'قبل أسبوع واحد',
            two: 'قبل أسبوعين',
            few: 'قبل {0} أسابيع',
            many: 'قبل {0} أسبوعًا',
            other: 'قبل {0} أسبوع'),
        future: TimeAgoPluralLabels(
            one: 'خلال أسبوع واحد',
            two: 'خلال أسبوعين',
            few: 'خلال {0} أسابيع',
            many: 'خلال {0} أسبوعًا',
            other: 'خلال {0} أسبوع')),
    month: TimeAgoRelativeUnitLabels(
        current: 'هذا الشهر',
        past: TimeAgoPluralLabels(
            one: 'قبل شهر واحد',
            two: 'قبل شهرين',
            few: 'قبل {0} أشهر',
            many: 'قبل {0} شهرًا',
            other: 'قبل {0} شهر'),
        future: TimeAgoPluralLabels(
            one: 'خلال شهر واحد',
            two: 'خلال شهرين',
            few: 'خلال {0} أشهر',
            many: 'خلال {0} شهرًا',
            other: 'خلال {0} شهر')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'هذا الربع',
        past: TimeAgoPluralLabels(
            one: 'قبل ربع سنة واحد',
            two: 'قبل ربعي سنة',
            few: 'قبل {0} أرباع سنة',
            other: 'قبل {0} ربع سنة'),
        future: TimeAgoPluralLabels(
            one: 'خلال ربع سنة واحد',
            two: 'خلال ربعي سنة',
            few: 'خلال {0} أرباع سنة',
            other: 'خلال {0} ربع سنة')),
    year: TimeAgoRelativeUnitLabels(
        current: 'السنة الحالية',
        past: TimeAgoPluralLabels(
            one: 'قبل سنة واحدة',
            two: 'قبل سنتين',
            few: 'قبل {0} سنوات',
            other: 'قبل {0} سنة'),
        future: TimeAgoPluralLabels(
            one: 'خلال سنة واحدة',
            two: 'خلال سنتين',
            few: 'خلال {0} سنوات',
            other: 'خلال {0} سنة')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        one: 'ثانية واحدة',
        two: 'ثانيتين',
        few: '{0} ثوانٍ',
        other: '{0} ثانية'),
    minute: TimeAgoPluralLabels(
        one: 'دقيقة واحدة',
        two: 'دقيقتين',
        few: '{0} دقائق',
        other: '{0} دقيقة'),
    hour: TimeAgoPluralLabels(
        one: 'ساعة واحدة', two: 'ساعتين', few: '{0} ساعات', other: '{0} ساعة'),
    day: TimeAgoPluralLabels(
        one: 'يوم واحد',
        two: 'يومين',
        few: '{0} أيام',
        many: '{0} يومًا',
        other: '{0} يوم'),
    week: TimeAgoPluralLabels(
        one: 'أسبوع واحد',
        two: 'أسبوعين',
        few: '{0} أسابيع',
        many: '{0} أسبوعًا',
        other: '{0} أسبوع'),
    month: TimeAgoPluralLabels(
        one: 'شهر واحد',
        two: 'شهرين',
        few: '{0} أشهر',
        many: '{0} شهرًا',
        other: '{0} شهر'),
    quarter: TimeAgoPluralLabels(
        one: 'ربع سنة واحد',
        two: 'ربعي سنة',
        few: '{0} أرباع سنة',
        other: '{0} ربع سنة'),
    year: TimeAgoPluralLabels(
        one: 'سنة واحدة', two: 'سنتين', few: '{0} سنوات', other: '{0} سنة'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'قبل {0}',
    future: 'خلال {0}',
  ),
);
