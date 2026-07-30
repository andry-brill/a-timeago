import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'tg'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'дирӯз',
    today: 'имрӯз',
    tomorrow: 'фардо',
    dateTime: '{1} соати {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 сония пеш',
    current: 'ҳозир',
    future: 'пас аз 1 сония',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'tg';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ҳозир', past: '{0} сония пеш', future: 'пас аз {0} сония'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'дақиқаи ҷорӣ',
        past: '{0} дақиқа пеш',
        future: 'пас аз {0} дақиқа'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'соати ҷорӣ', past: '{0} соат пеш', future: 'пас аз {0} соат'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'имрӯз', past: '{0} рӯз пеш', future: 'пас аз {0} рӯз'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ҳафтаи ҷорӣ',
        past: '{0} ҳафта пеш',
        future: 'пас аз {0} ҳафта'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'моҳи ҷорӣ', past: '{0} моҳ пеш', future: 'пас аз {0} моҳ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'чоряки ҷорӣ',
        past: '{0} чоряк пеш',
        future: 'пас аз {0} чоряк'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'соли ҷорӣ', past: '{0} сол пеш', future: 'пас аз {0} сол'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сония'),
    minute: TimeAgoPluralLabels.same('{0} дақиқа'),
    hour: TimeAgoPluralLabels.same('{0} соат'),
    day: TimeAgoPluralLabels.same('{0} рӯз'),
    week: TimeAgoPluralLabels.same('{0} ҳафта'),
    month: TimeAgoPluralLabels.same('{0} моҳ'),
    quarter: TimeAgoPluralLabels.same('{0} чоряк'),
    year: TimeAgoPluralLabels.same('{0} сол'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} пеш',
    future: 'пас аз {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ҳозир', past: '{0} сон. пеш', future: 'пас аз {0} сон.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'дақиқаи ҷорӣ',
        past: '{0} дақ. пеш',
        future: 'пас аз {0} дақ.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'соати ҷорӣ', past: '{0} ст. пеш', future: 'пас аз {0} ст.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'имрӯз', past: '{0} рӯз пеш', future: 'пас аз {0} рӯз'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ҳафтаи ҷ.', past: '{0} ҳ. пеш', future: 'пас аз {0} ҳ.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'моҳи ҷ.', past: '{0} м. пеш', future: 'пас аз {0} м.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'чоряки ҷорӣ', past: '{0} чр. пеш', future: 'пас аз {0} чр.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'соли ҷ.', past: '{0} с. пеш', future: 'пас аз {0} с.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сон.'),
    minute: TimeAgoPluralLabels.same('{0} дақ.'),
    hour: TimeAgoPluralLabels.same('{0} ст.'),
    day: TimeAgoPluralLabels.same('{0} рӯз'),
    week: TimeAgoPluralLabels.same('{0} ҳ.'),
    month: TimeAgoPluralLabels.same('{0} м.'),
    quarter: TimeAgoPluralLabels.same('{0} чр.'),
    year: TimeAgoPluralLabels.same('{0} с.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} пеш',
    future: 'пас аз {0}',
  ),
);
