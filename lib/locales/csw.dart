import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'csw'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ᐅᑖᑯᓯᕽ',
    today: 'ᐊᓄᐦᐨ',
    tomorrow: 'ᐚᐸᐦᑫ',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '-1 s',
    current: 'ᒣᐠᐚᐨ',
    future: '+1 s',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'csw';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ᒣᐠᐚᐨ', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ᐆᒪ ᑎᐸᐦᐃᑲᓂᐢ',
        past: '{0} ᑎᐸᐦᐃᑲᓂᓯᐦᑯᕽ',
        future: 'ᑕᐦᑐ {0} ᑎᐸᐦᐃᑲᓂᓴ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ᐆᒪ ᐘᐢᑳᐸᓄᐤ', past: '{0} ᐘᐢᑳᐸᓂᑯᕽ', future: 'ᑕᐦᑐ {0} ᐘᐢᑳᐸᓂᑭ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ᐊᓄᐦᐨ', past: '{0} ᑳᑮ ᑕᐦᑐ ᑮᓯᑳᐠ', future: 'ᑕᐦᑐ {0} ᑮᓯᑳᑭ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ᐊᓄᐦᐨ ᑳᐃᐢᐸᓂᐠ', past: 'ᑳᑮ {0} ᐃᐢᐸᓂᐠ', future: 'ᓃᑳᐣ {0} ᐃᐢᐸᓂᑭ'),
    month: TimeAgoRelativeUnitLabels(
        current: 'ᐊᓄᐦᐨ ᐲᓯᒼ',
        past: TimeAgoPluralLabels(one: '{0} ᐃᐢᐠᐚᐨ ᐲᓯᒼ', other: '{0} ᑕᐦᑐ ᐲᓯᒼ'),
        future: TimeAgoPluralLabels.same('ᓃᑳᐣ {0} ᐲᓯᒧᐤᐊᐧᐦᑭ')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ᐆᒪ ᐊᐢᑫᕀ',
        past: TimeAgoPluralLabels.same('{0} ᑲᔮᐢ ᐊᐢᑭᕀ'),
        future: TimeAgoPluralLabels(
            one: 'ᓃᑳᐣ {0} ᐊᐢᑮᐊᐧᐦᑭᕀ', other: 'ᓃᑳᐣ {0} ᐊᐢᑮᐊᐧᐦᑭ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} ᑎᐸᐦᐃᑲᓂ'),
    hour: TimeAgoPluralLabels.same('{0} ᐘᐢᑳᐸᓂ'),
    day: TimeAgoPluralLabels.same('{0} ᑳᑮ ᑕᐦᑐ ᑮᓯᑳᐠ'),
    week: TimeAgoPluralLabels.same('{0} ᐃᐢᐸᓂ'),
    month: TimeAgoPluralLabels.same('{0} ᑕᐦᑐ ᐲᓯᒼ'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} ᑲᔮᐢ ᐊᐢᑭᕀ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ᒣᐠᐚᐨ', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ᐆᒪ ᑎᐸᐦᐃᑲᓂᐢ',
        past: '{0} ᑎᐸᐦᐃᑲᓂᓯᐦᑯᕽ',
        future: 'ᑕᐦᑐ {0} ᑎᐸᐦᐃᑲᓂᓴ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ᐆᒪ ᐘᐢᑳᐸᓄᐤ', past: '{0} ᐘᐢᑳᐸᓂᑯᕽ', future: 'ᑕᐦᑐ {0} ᐘᐢᑳᐸᓂᑭ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ᐊᓄᐦᐨ', past: '{0} ᑳᑮ ᑕᐦᑐ ᑮᓯᑳᐠ', future: 'ᑕᐦᑐ {0} ᑮᓯᑳᑭ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ᐊᓄᐦᐨ ᑳᐃᐢᐸᓂᐠ', past: 'ᑳᑮ {0} ᐃᐢᐸᓂᐠ', future: 'ᓃᑳᐣ {0} ᐃᐢᐸᓂᑭ'),
    month: TimeAgoRelativeUnitLabels(
        current: 'ᐊᓄᐦᐨ ᐲᓯᒼ',
        past: TimeAgoPluralLabels(one: '{0} ᐃᐢᐠᐚᐨ ᐲᓯᒼ', other: '{0} ᑕᐦᑐ ᐲᓯᒼ'),
        future: TimeAgoPluralLabels.same('ᓃᑳᐣ {0} ᐲᓯᒧᐤᐊᐧᐦᑭ')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ᐆᒪ ᐊᐢᑫᕀ', past: '{0} ᑲᔮᐢ ᐊᐢᑭᕀ', future: 'ᓃᑳᐣ {0} ᐊᐢᑮᐊᐧᐦᑭ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} ᑎᐸᐦᐃᑲᓂ'),
    hour: TimeAgoPluralLabels.same('{0} ᐘᐢᑳᐸᓂ'),
    day: TimeAgoPluralLabels.same('{0} ᑳᑮ ᑕᐦᑐ ᑮᓯᑳᐠ'),
    week: TimeAgoPluralLabels.same('{0} ᐃᐢᐸᓂ'),
    month: TimeAgoPluralLabels.same('{0} ᑕᐦᑐ ᐲᓯᒼ'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} ᑲᔮᐢ ᐊᐢᑭᕀ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ᒣᐠᐚᐨ', past: '-{0} s', future: '+{0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ᐆᒪ ᑎᐸᐦᐃᑲᓂᐢ',
        past: '{0} ᑎᐸᐦᐃᑲᓂᓯᐦᑯᕽ',
        future: 'ᑕᐦᑐ {0} ᑎᐸᐦᐃᑲᓂᓴ'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ᐆᒪ ᐘᐢᑳᐸᓄᐤ',
        past: TimeAgoPluralLabels(one: '{0} ᑕᐦᑐ ᐘᐢᑳᐸᓂᑭ', other: '{0} ᐘᐢᑳᐸᓂᑯᕽ'),
        future: TimeAgoPluralLabels.same('ᑕᐦᑐ {0} ᐘᐢᑳᐸᓂᑭ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ᐊᓄᐦᐨ',
        past: TimeAgoPluralLabels(one: '{0} ᐅᑖᑯᓰᕽ', other: '{0} ᑳᑮ ᑕᐦᑐ ᑮᓯᑳᐠ'),
        future: TimeAgoPluralLabels.same('ᑕᐦᑐ {0}ᑮᓯᑳᑭ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ᐊᓄᐦᐨ ᑳᐃᐢᐸᓂᐠ',
        past: TimeAgoPluralLabels(one: '{0} ᐅᑖᑯᓰᕽ', other: '{0} ᑳᑮ ᐃᐢᐸᓂᐠ'),
        future: TimeAgoPluralLabels.same('ᓃᑳᐣ {0} ᐃᐢᐸᓂᑭ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ᐊᓄᐦᐨ ᐲᓯᒼ',
        past: TimeAgoPluralLabels(one: '{0} ᐃᐢᐠᐚᐨ ᐲᓯᒼ', other: '{0} ᑕᐦᑐ ᐲᓯᒼ'),
        future: TimeAgoPluralLabels.same('ᓃᑳᐣ {0} ᐲᓯᒧᐤᐊᐧᐦᑭ')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ᐆᒪ ᐊᐢᑫᕀ', past: '{0} ᑲᔮᐢ ᐊᐢᑭᕀ', future: 'ᓃᑳᐣ {0}ᐊᐢᑮᐊᐧᐦᑭ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} ᑎᐸᐦᐃᑲᓂ'),
    hour: TimeAgoPluralLabels(one: '{0} ᑕᐦᑐ ᐘᐢᑳᐸᓂᑭ', other: '{0} ᐘᐢᑳᐸᓂ'),
    day: TimeAgoPluralLabels.same('{0} ᑳᑮ ᑕᐦᑐ ᑮᓯᑳᐠ'),
    week: TimeAgoPluralLabels.same('{0} ᑳᑮ ᐃᐢᐸᓂᐠ'),
    month: TimeAgoPluralLabels.same('{0} ᑕᐦᑐ ᐲᓯᒼ'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} ᑲᔮᐢ ᐊᐢᑭᕀ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);
