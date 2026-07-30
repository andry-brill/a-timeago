import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ky'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'кечээ',
    today: 'бүгүн',
    tomorrow: 'эртең',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 секунд мурун',
    current: 'азыр',
    future: '1 секунддан кийин',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ky';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'азыр',
        past: '{0} секунд мурун',
        future: '{0} секунддан кийин'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ушул мүнөттө',
        past: '{0} мүнөт мурун',
        future: '{0} мүнөттөн кийин'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ушул саатта',
        past: '{0} саат мурун',
        future: '{0} сааттан кийин'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бүгүн', past: '{0} күн мурун', future: '{0} күндөн кийин'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ушул аптада',
        past: '{0} апта мурун',
        future: '{0} аптадан кийин'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бул айда', past: '{0} ай мурун', future: '{0} айдан кийин'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'бул чейрек',
        past: '{0} чейрек мурун',
        future: '{0} чейректен кийин'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл', past: '{0} жыл мурун', future: '{0} жылдан кийин'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} секунд'),
    minute: TimeAgoPluralLabels.same('{0} мүнөт'),
    hour: TimeAgoPluralLabels.same('{0} саат'),
    day: TimeAgoPluralLabels.same('{0} күн'),
    week: TimeAgoPluralLabels.same('{0} апта'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} чейрек'),
    year: TimeAgoPluralLabels.same('{0} жыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} мурун',
    future: '{0}дан кийин',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'азыр', past: '{0} сек. мурун', future: '{0} сек. кийин'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ушул мүнөттө',
        past: '{0} мүн. мурун',
        future: '{0} мүн. кийин'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ушул саатта',
        past: '{0} саат. мурун',
        future: '{0} саат. кийин'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бүгүн', past: '{0} күн мурун', future: '{0} күн. кийин'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ушул апт.', past: '{0} апт. мурун', future: '{0} апт. кийин'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бул айда', past: '{0} ай мурун', future: '{0} айд. кийин'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'бул чейр.',
        past: '{0} чейр. мурун',
        future: '{0} чейректен кийин'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл', past: '{0} жыл мурун', future: '{0} жыл. кийин'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мүн.'),
    hour: TimeAgoPluralLabels.same('{0} саат.'),
    day: TimeAgoPluralLabels.same('{0} күн'),
    week: TimeAgoPluralLabels.same('{0} апт.'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} чейр'),
    year: TimeAgoPluralLabels.same('{0} жыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} мурун',
    future: '{0} кийин',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'азыр', past: '{0} сек. мурн', future: '{0} сек. кийн'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ушул мүнөттө',
        past: '{0} мүн. мурн',
        future: '{0} мүн. кийн'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ушул саатта', past: '{0} с. мурн', future: '{0} с. кийн'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'бүгүн', past: '{0} күн мурун', future: '{0} күн. кийин'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ушул апт.', past: '{0} апт. мурун', future: '{0} апт. кийин'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бул айда', past: '{0} ай мурн', future: '{0} айд. кийн'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'бул чейр.',
        past: '{0} чейр. мурун',
        future: '{0} чейр. кийин'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл', past: '{0} жыл мурун', future: '{0} жыл. кийин'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек.'),
    minute: TimeAgoPluralLabels.same('{0} мүн.'),
    hour: TimeAgoPluralLabels.same('{0} с.'),
    day: TimeAgoPluralLabels.same('{0} күн'),
    week: TimeAgoPluralLabels.same('{0} апт.'),
    month: TimeAgoPluralLabels.same('{0} ай'),
    quarter: TimeAgoPluralLabels.same('{0} чейр.'),
    year: TimeAgoPluralLabels.same('{0} жыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} мурн',
    future: '{0} кийн',
  ),
);
