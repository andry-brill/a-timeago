import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ps', countryCode: 'PK'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'پرون',
    today: 'نن',
    tomorrow: 'سبا',
    dateTime: '{1} په {0}',
    relativeDateTime: '{1} په {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 ثانيه مخکې',
    current: 'اوس',
    future: 'په 1 ثانيه کې',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ps_PK';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'اوس',
        past:
            TimeAgoPluralLabels(one: '{0} ثانيه مخکې', other: '{0} ثانيې مخکې'),
        future: TimeAgoPluralLabels(
            one: 'په {0} ثانيه کې', other: 'په {0} ثانيو کې')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'دا دقيقه',
        past:
            TimeAgoPluralLabels(one: '{0} دقيقه مخکې', other: '{0} دقيقې مخکې'),
        future: TimeAgoPluralLabels(
            one: 'په {0} دقيقه کې', other: 'په {0} دقيقو کې')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'دا ساعت',
        past: TimeAgoPluralLabels(
            one: '{0} ساعت مخکې', other: '{0} ساعتونه مخکې'),
        future: TimeAgoPluralLabels(
            one: 'په {0} ساعت کې', other: 'په {0} ساعتو کې')),
    day: TimeAgoRelativeUnitLabels(
        current: 'نن',
        past: TimeAgoPluralLabels(one: '{0} ورځ مخکې', other: '{0} ورځې مخکې'),
        future:
            TimeAgoPluralLabels(one: 'په {0} ورځ کې', other: 'په {0} ورځو کې')),
    week: TimeAgoRelativeUnitLabels(
        current: 'دا اونۍ',
        past: TimeAgoPluralLabels.same('{0} اونۍ مخکې'),
        future: TimeAgoPluralLabels(
            one: 'په {0} اونۍ کې', other: 'په {0} اونيو کې')),
    month: TimeAgoRelativeUnitLabels(
        current: 'دا مياشت',
        past: TimeAgoPluralLabels(
            one: '{0} مياشت مخکې', other: '{0} مياشتې مخکې'),
        future: TimeAgoPluralLabels(
            one: 'په {0} مياشت کې', other: 'په {0} مياشتو کې')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'دا ربع',
        past: TimeAgoPluralLabels(one: '{0} ربع مخکې', other: '{0} ربعې مخکې'),
        future:
            TimeAgoPluralLabels(one: 'په {0} ربع کې', other: 'په {0} ربعو کې')),
    year: TimeAgoRelativeUnitLabels(
        current: 'سږکال',
        past: TimeAgoPluralLabels(one: '{0} کال مخکے', other: '{0} کاله مخکے'),
        future: TimeAgoPluralLabels(
            one: 'په {0} کال کے', other: 'په {0} کالونو کے')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ثانيه', other: '{0} ثاني'),
    minute: TimeAgoPluralLabels(one: '{0} دقيقه', other: '{0} دقيق'),
    hour: TimeAgoPluralLabels(one: '{0} ساعت', other: '{0} ساعتو'),
    day: TimeAgoPluralLabels(one: '{0} ورځ', other: '{0} ورځ'),
    week: TimeAgoPluralLabels(one: '{0} اونۍ', other: '{0} اون'),
    month: TimeAgoPluralLabels(one: '{0} مياشت', other: '{0} مياشت'),
    quarter: TimeAgoPluralLabels(one: '{0} ربع', other: '{0} ربع'),
    year: TimeAgoPluralLabels(one: '{0} کال', other: '{0} کال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ې مخکې',
    future: 'په {0}و کې',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اوس', past: '{0} ثانيه مخکې', future: 'په {0} ثانيه کې'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'دا دقيقه', past: '{0} دقيقه مخکې', future: 'په {0} دقيقه کې'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'دا ساعت', past: '{0} ساعت مخکې', future: 'په {0} ساعت کې'),
    day: TimeAgoRelativeUnitLabels(
        current: 'نن',
        past: TimeAgoPluralLabels(one: '{0} ورځ مخکې', other: '{0} ورځې مخکې'),
        future:
            TimeAgoPluralLabels(one: 'په {0} ورځ کې', other: 'په {0} ورځو کې')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'دا اونۍ', past: '{0} اونۍ مخکې', future: 'په {0} اونۍ کې'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'دا مياشت', past: '{0} مياشت مخکې', future: 'په {0} مياشت کې'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'دا ربع',
        past: TimeAgoPluralLabels(one: '{0} ربع مخکې', other: '{0} ربعې مخکې'),
        future:
            TimeAgoPluralLabels(one: 'په {0} ربع کې', other: 'په {0} ربعو کې')),
    year: TimeAgoRelativeUnitLabels(
        current: 'سږ کال',
        past: TimeAgoPluralLabels(one: '{0} کال مخکے', other: '{0} کاله مخکے'),
        future: TimeAgoPluralLabels(
            one: 'په {0} کال کے', other: 'په {0} کالونو کے')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ثانيه'),
    minute: TimeAgoPluralLabels.same('{0} دقيقه'),
    hour: TimeAgoPluralLabels.same('{0} ساعت'),
    day: TimeAgoPluralLabels(one: '{0} ورځ', other: '{0} ورځ'),
    week: TimeAgoPluralLabels.same('{0} اونۍ'),
    month: TimeAgoPluralLabels.same('{0} مياشت'),
    quarter: TimeAgoPluralLabels(one: '{0} ربع', other: '{0} ربع'),
    year: TimeAgoPluralLabels(one: '{0} کال', other: '{0} کال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} مخکې',
    future: 'په {0} کې',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'اوس', past: '{0} ثانيه کې', future: 'په {0} ثانيه کې'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'دا دقيقه', past: '{0} دقيقه مخکې', future: 'په {0} دقيقه کې'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'دا ساعت', past: '{0} ساعت مخکې', future: 'په {0} ساعت کې'),
    day: TimeAgoRelativeUnitLabels(
        current: 'نن',
        past: TimeAgoPluralLabels(one: '{0} ورځ مخکې', other: '{0} ورځې مخکې'),
        future:
            TimeAgoPluralLabels(one: 'په {0} ورځ کې', other: 'په {0} ورځو کې')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'دا اونۍ', past: '{0} اونۍ مخکې', future: 'په {0} اونۍ کې'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'دا مياشت', past: '{0} مياشت مخکې', future: 'په {0} مياشت کې'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'دا ربع',
        past: TimeAgoPluralLabels(one: '{0} ربع مخکې', other: '{0} ربعې مخکې'),
        future:
            TimeAgoPluralLabels(one: 'په {0} ربع کې', other: 'په {0} ربعو کې')),
    year: TimeAgoRelativeUnitLabels(
        current: 'سږ کال',
        past: TimeAgoPluralLabels(one: '{0} کال مخکے', other: '{0} کاله مخکے'),
        future: TimeAgoPluralLabels(
            one: 'په {0} کال کے', other: 'په {0} کالونو کے')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ثانيه کې'),
    minute: TimeAgoPluralLabels.same('{0} دقيقه'),
    hour: TimeAgoPluralLabels.same('{0} ساعت'),
    day: TimeAgoPluralLabels(one: '{0} ورځ', other: '{0} ورځ'),
    week: TimeAgoPluralLabels.same('{0} اونۍ'),
    month: TimeAgoPluralLabels.same('{0} مياشت'),
    quarter: TimeAgoPluralLabels(one: '{0} ربع', other: '{0} ربع'),
    year: TimeAgoPluralLabels(one: '{0} کال', other: '{0} کال'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} مخکې',
    future: 'په {0} کې',
  ),
);
