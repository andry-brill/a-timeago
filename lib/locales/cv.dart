import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'cv'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ӗнер',
    today: 'паян',
    tomorrow: 'ыран',
    dateTime: '{1}, {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 ҫеккунт каялла',
    current: 'халь',
    future: '1 ҫеккунтран',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'cv';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'халь', past: '{0} ҫеккунт каялла', future: '{0} ҫеккунтран'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ку минутра',
        past: '{0} минут каялла',
        future: '{0} минутран'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ку сехетре',
        past: '{0} сехет каялла',
        future: '{0} сехетрен'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'паян', past: '{0} кун каялла', future: '{0} кунтан'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ку эрнере', past: '{0} эрне каялла', future: '{0} эрнерен'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ку уйӑхра', past: '{0} уйӑх каялла', future: '{0} уйӑхран'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ку чӗрӗкре',
        past: '{0} чӗрӗк каялла',
        future: '{0} чӗрӗкрен'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'кӑҫал', past: '{0} ҫул каялла', future: '{0} ҫултан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ҫеккунт'),
    minute: TimeAgoPluralLabels.same('{0} минут'),
    hour: TimeAgoPluralLabels.same('{0} сехет'),
    day: TimeAgoPluralLabels.same('{0} кун'),
    week: TimeAgoPluralLabels.same('{0} эрне'),
    month: TimeAgoPluralLabels.same('{0} уйӑх'),
    quarter: TimeAgoPluralLabels.same('{0} чӗрӗк'),
    year: TimeAgoPluralLabels.same('{0} ҫул'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} каялла',
    future: '{0}ран',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'халь',
        past: TimeAgoPluralLabels(
            zero: '{0} ҫеккунт каялла',
            one: '{0} ҫеккунт каялла',
            other: '{0} ҫек. каялла'),
        future: TimeAgoPluralLabels.same('{0} ҫеккунтран')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ку мин.',
        past: TimeAgoPluralLabels(
            zero: '{0} минут каялла',
            one: '{0} минут каялла',
            other: '{0} мин. каялла'),
        future: TimeAgoPluralLabels.same('{0} минутран')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ку сех.',
        past: TimeAgoPluralLabels(
            zero: '{0} сехет каялла',
            one: '{0} сехет каялла',
            other: '{0} сех. каялла'),
        future: TimeAgoPluralLabels.same('{0} сехетрен')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'паян', past: '{0} кун каялла', future: '{0} кунтан'),
    week: TimeAgoRelativeUnitLabels(
        current: 'ку эрн.',
        past: TimeAgoPluralLabels(
            zero: '{0} эрне каялла',
            one: '{0} эрне каялла',
            other: '{0} эрн. каялла'),
        future: TimeAgoPluralLabels.same('{0} эрнерен')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ку уйӑхра',
        past: TimeAgoPluralLabels(
            zero: '{0} уйӑх каялла',
            one: '{0} уйӑх каялла',
            other: '{0} уй. каялла'),
        future: TimeAgoPluralLabels.same('{0} уйӑхран')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ку чӗр.',
        past: TimeAgoPluralLabels(
            zero: '{0} чӗрӗк каялла',
            one: '{0} чӗрӗк каялла',
            other: '{0} чӗр. каялла'),
        future: TimeAgoPluralLabels.same('{0} чӗрӗкрен')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'кӑҫал', past: '{0} ҫул каялла', future: '{0} ҫултан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        zero: '{0} ҫеккунт', one: '{0} ҫеккунт', other: '{0} ҫек'),
    minute: TimeAgoPluralLabels(
        zero: '{0} минут', one: '{0} минут', other: '{0} мин'),
    hour: TimeAgoPluralLabels(
        zero: '{0} сехет', one: '{0} сехет', other: '{0} сех'),
    day: TimeAgoPluralLabels.same('{0} кун'),
    week: TimeAgoPluralLabels(
        zero: '{0} эрне', one: '{0} эрне', other: '{0} эрн'),
    month:
        TimeAgoPluralLabels(zero: '{0} уйӑх', one: '{0} уйӑх', other: '{0} уй'),
    quarter: TimeAgoPluralLabels(
        zero: '{0} чӗрӗк', one: '{0} чӗрӗк', other: '{0} чӗр'),
    year: TimeAgoPluralLabels.same('{0} ҫул'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. каялла',
    future: '{0}кунтран',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'халь',
        past: TimeAgoPluralLabels(
            zero: '{0} ҫеккунт каялла',
            one: '{0} ҫеккунт каялла',
            other: '{0} ҫ каялла'),
        future: TimeAgoPluralLabels(
            zero: '{0} ҫеккунтран', one: '{0} ҫеккунтран', other: '{0} ҫ-ран')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ку мин.',
        past: TimeAgoPluralLabels(
            zero: '{0} минут каялла',
            one: '{0} минут каялла',
            other: '{0} мин. каялла'),
        future: TimeAgoPluralLabels.same('{0} минутран')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ку сех.',
        past: TimeAgoPluralLabels(
            zero: '{0} сехет каялла',
            one: '{0} сехет каялла',
            other: '{0} сех. каялла'),
        future: TimeAgoPluralLabels.same('{0} сехетрен')),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'паян', past: '{0} кун каялла', future: '{0} кунтан'),
    week: TimeAgoRelativeUnitLabels(
        current: 'ку эрн.',
        past: TimeAgoPluralLabels(
            zero: '{0} эрне каялла',
            one: '{0} эрне каялла',
            other: '{0} эрн. каялла'),
        future: TimeAgoPluralLabels.same('{0} эрнерен')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ку уйӑхра',
        past: TimeAgoPluralLabels(
            zero: '{0} уйӑх каялла',
            one: '{0} уйӑх каялла',
            other: '{0} уй. каялла'),
        future: TimeAgoPluralLabels.same('{0} уйӑхран')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ку чӗр.',
        past: TimeAgoPluralLabels(
            zero: '{0} чӗрӗк каялла',
            one: '{0} чӗрӗк каялла',
            other: '{0} чӗр. каялла'),
        future: TimeAgoPluralLabels.same('{0} чӗрӗкрен')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'кӑҫал', past: '{0} ҫул каялла', future: '{0} ҫултан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        zero: '{0} ҫеккунт', one: '{0} ҫеккунт', other: '{0} ҫ'),
    minute: TimeAgoPluralLabels(
        zero: '{0} минут', one: '{0} минут', other: '{0} мин'),
    hour: TimeAgoPluralLabels(
        zero: '{0} сехет', one: '{0} сехет', other: '{0} сех'),
    day: TimeAgoPluralLabels.same('{0} кун'),
    week: TimeAgoPluralLabels(
        zero: '{0} эрне', one: '{0} эрне', other: '{0} эрн'),
    month:
        TimeAgoPluralLabels(zero: '{0} уйӑх', one: '{0} уйӑх', other: '{0} уй'),
    quarter: TimeAgoPluralLabels(
        zero: '{0} чӗрӗк', one: '{0} чӗрӗк', other: '{0} чӗр'),
    year: TimeAgoPluralLabels.same('{0} ҫул'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} каялла',
    future: '{0}-ран',
  ),
);
