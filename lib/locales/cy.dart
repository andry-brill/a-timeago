import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'cy'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ddoe',
    today: 'heddiw',
    tomorrow: 'yfory',
    dateTime: '{1} am {0}',
    relativeDateTime: '{1} am {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 eiliad yn ôl',
    current: 'nawr',
    future: 'ymhen 1 eiliad',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'cy';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nawr', past: '{0} eiliad yn ôl', future: 'ymhen {0} eiliad'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'y funud hon',
        past: '{0} munud yn ôl',
        future: 'ymhen {0} munud'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'yr awr hon',
        past: TimeAgoPluralLabels.same('{0} awr yn ôl'),
        future: TimeAgoPluralLabels(one: 'ymhen awr', other: 'ymhen {0} awr')),
    day: TimeAgoRelativeUnitLabels(
        current: 'heddiw',
        past: TimeAgoPluralLabels(
            two: '{0} ddiwrnod yn ôl', other: '{0} diwrnod yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen diwrnod',
            two: 'ymhen deuddydd',
            other: 'ymhen {0} diwrnod')),
    week: TimeAgoRelativeUnitLabels(
        current: 'yr wythnos hon',
        past: TimeAgoPluralLabels.same('{0} wythnos yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen wythnos',
            two: 'ymhen pythefnos',
            other: 'ymhen {0} wythnos')),
    month: TimeAgoRelativeUnitLabels(
        current: 'y mis hwn',
        past: TimeAgoPluralLabels(two: '{0} fis yn ôl', other: '{0} mis yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen mis', two: 'ymhen deufis', other: 'ymhen {0} mis')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'chwarter hwn',
        past: TimeAgoPluralLabels(
            one: '{0} chwarter yn ôl',
            two: '{0} chwarter yn ôl',
            few: '{0} chwarter yn ôl',
            many: '{0} chwarter yn ôl',
            other: '{0} o chwarteri yn ôl'),
        future: TimeAgoPluralLabels.same('ymhen {0} chwarter')),
    year: TimeAgoRelativeUnitLabels(
        current: 'eleni',
        past: TimeAgoPluralLabels(
            one: 'blwyddyn yn ôl',
            two: '{0} flynedd yn ôl',
            other: '{0} o flynyddoedd yn ôl'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} o flynyddoedd',
            one: 'ymhen blwyddyn',
            two: 'ymhen {0} flynedd',
            few: 'ymhen {0} blynedd',
            many: 'ymhen {0} blynedd',
            other: 'ymhen {0} mlynedd')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} eiliad'),
    minute: TimeAgoPluralLabels.same('{0} munud'),
    hour: TimeAgoPluralLabels(one: '{0} awr', other: '{0} awr'),
    day: TimeAgoPluralLabels(
        one: '{0} diwrnod', two: '{0} ddiwrnod', other: '{0} diwrnod'),
    week: TimeAgoPluralLabels(
        one: '{0} wythnos', two: '{0} wythnos', other: '{0} wythnos'),
    month:
        TimeAgoPluralLabels(one: '{0} mis', two: '{0} fis', other: '{0} mis'),
    quarter: TimeAgoPluralLabels(
        one: '{0} chwarter',
        two: '{0} chwarter',
        few: '{0} chwarter',
        many: '{0} chwarter',
        other: '{0} o chwarteri'),
    year: TimeAgoPluralLabels(
        zero: '{0} o flynyddoedd',
        one: 'blwyddyn',
        two: '{0} flynedd',
        few: '{0} o flynyddoedd',
        many: '{0} o flynyddoedd',
        other: '{0} o flynyddoedd'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} yn ôl',
    future: 'ymhen {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'nawr',
        past: TimeAgoPluralLabels(
            zero: '{0} eiliad yn ôl',
            two: '{0} eiliad yn ôl',
            few: '{0} eiliad yn ôl',
            many: '{0} eiliad yn ôl',
            other: '{0} eil. yn ôl'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} eiliad',
            two: 'ymhen {0} eiliad',
            few: 'ymhen {0} eiliad',
            many: 'ymhen {0} eiliad',
            other: 'ymhen {0} eil.')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'y funud hon',
        past: TimeAgoPluralLabels(
            zero: '{0} munud yn ôl',
            two: '{0} funud yn ôl',
            few: '{0} munud yn ôl',
            many: '{0} munud yn ôl',
            other: '{0} mun. yn ôl'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} munud',
            two: 'ymhen {0} fun.',
            few: 'ymhen {0} munud',
            many: 'ymhen {0} munud',
            other: 'ymhen {0} mun.')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'yr awr hon',
        past: TimeAgoPluralLabels(one: 'awr yn ôl', other: '{0} awr yn ôl'),
        future: TimeAgoPluralLabels(one: 'ymhen awr', other: 'ymhen {0} awr')),
    day: TimeAgoRelativeUnitLabels(
        current: 'heddiw',
        past: TimeAgoPluralLabels(
            two: '{0} ddiwrnod yn ôl', other: '{0} diwrnod yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen diwrnod',
            two: 'ymhen deuddydd',
            other: 'ymhen {0} diwrnod')),
    week: TimeAgoRelativeUnitLabels(
        current: 'yr ws. hon',
        past: TimeAgoPluralLabels(
            zero: '{0} wythnos yn ôl',
            one: '{0} ws. yn ôl',
            two: 'pythefnos yn ôl',
            few: '{0} wythnos yn ôl',
            many: '{0} wythnos yn ôl',
            other: '{0} ws yn ôl.'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} wythnos',
            one: 'ymhen ws.',
            two: 'ymhen pythefnos',
            few: 'ymhen {0} wythnos',
            many: 'ymhen {0} wythnos',
            other: 'ymhen {0} ws.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'y mis hwn',
        past: TimeAgoPluralLabels(two: 'deufis yn ôl', other: '{0} mis yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen mis', two: 'ymhen deufis', other: 'ymhen {0} mis')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'chwarter hwn',
        past: TimeAgoPluralLabels(
            zero: '{0} o chwarteri yn ôl',
            two: '{0} chwarter yn ôl',
            few: '{0} chwarter yn ôl',
            many: '{0} chwarter yn ôl',
            other: '{0} chw. yn ôl'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} chwarter',
            two: 'ymhen {0} chwarter',
            few: 'ymhen {0} chwarter',
            many: 'ymhen {0} chwarter',
            other: 'ymhen {0} chw.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'eleni',
        past: TimeAgoPluralLabels(
            one: '{0} bl. yn ôl',
            two: '{0} flynedd yn ôl',
            other: '{0} o flynyddoedd yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen blwyddyn',
            two: 'ymhen {0} flynedd',
            few: 'ymhen {0} blynedd',
            many: 'ymhen {0} blynedd',
            other: 'ymhen {0} o flynyddoedd')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(
        zero: '{0} eiliad',
        two: '{0} eiliad',
        few: '{0} eiliad',
        many: '{0} eiliad',
        other: '{0} eil.'),
    minute: TimeAgoPluralLabels(
        zero: '{0} munud',
        two: '{0} fun',
        few: '{0} munud',
        many: '{0} munud',
        other: '{0} mun.'),
    hour: TimeAgoPluralLabels(one: 'awr', other: '{0} awr'),
    day: TimeAgoPluralLabels(
        one: '{0} diwrnod', two: '{0} ddiwrnod', other: '{0} diwrnod'),
    week: TimeAgoPluralLabels(
        zero: '{0} wythnos',
        one: '{0} ws.',
        two: 'pythefnos',
        few: '{0} wythnos',
        many: '{0} wythnos',
        other: '{0} ws'),
    month: TimeAgoPluralLabels(one: '{0} mis', two: 'deufis', other: '{0} mis'),
    quarter: TimeAgoPluralLabels(
        zero: '{0} o chwarteri',
        two: '{0} chwarter',
        few: '{0} chwarter',
        many: '{0} chwarter',
        other: '{0} chw.'),
    year: TimeAgoPluralLabels(
        one: '{0} bl.',
        two: '{0} flynedd',
        few: '{0} o flynyddoedd',
        many: '{0} o flynyddoedd',
        other: '{0} o flynyddoedd'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} yn ôl',
    future: 'ymhen {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'nawr', past: '{0} eiliad yn ôl', future: 'ymhen {0} eiliad'),
    minute: TimeAgoRelativeUnitLabels(
        current: 'y funud hon',
        past: TimeAgoPluralLabels(
            zero: '{0} munud yn ôl',
            many: '{0} munud yn ôl',
            other: '{0} mun. yn ôl'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} munud',
            few: 'ymhen {0} munud',
            many: 'ymhen {0} munud',
            other: 'ymhen {0} mun.')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'yr awr hon', past: '{0} awr yn ôl', future: 'ymhen {0} awr'),
    day: TimeAgoRelativeUnitLabels(
        current: 'heddiw',
        past: TimeAgoPluralLabels(
            two: '{0} ddiwrnod yn ôl', other: '{0} diwrnod yn ôl'),
        future: TimeAgoPluralLabels.same('ymhen {0} diwrnod')),
    week: TimeAgoRelativeUnitLabels(
        current: 'yr ws. hon',
        past: TimeAgoPluralLabels(
            zero: '{0} wythnos yn ôl',
            two: 'pythefnos yn ôl',
            few: '{0} wythnos yn ôl',
            many: '{0} wythnos yn ôl',
            other: '{0} ws. yn ôl'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} wythnos',
            two: 'ymhen {0} wythnos',
            few: 'ymhen {0} wythnos',
            many: 'ymhen {0} wythnos',
            other: 'ymhen {0} ws.')),
    month: TimeAgoRelativeUnitLabels(
        current: 'y mis hwn',
        past: TimeAgoPluralLabels(two: '{0} fis yn ôl', other: '{0} mis yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen mis', two: 'ymhen deufis', other: 'ymhen {0} mis')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'chwarter hwn',
        past: TimeAgoPluralLabels(
            zero: '{0} o chwarteri yn ôl',
            two: '{0} chwarter yn ôl',
            few: '{0} chwarter yn ôl',
            many: '{0} chwarter yn ôl',
            other: '{0} chw. yn ôl'),
        future: TimeAgoPluralLabels(
            zero: 'ymhen {0} chwarter',
            two: 'ymhen {0} chwarter',
            few: 'ymhen {0} chwarter',
            many: 'ymhen {0} chwarter',
            other: 'ymhen {0} chw.')),
    year: TimeAgoRelativeUnitLabels(
        current: 'eleni',
        past: TimeAgoPluralLabels(
            one: 'blwyddyn yn ôl',
            two: '{0} flynedd yn ôl',
            other: '{0} o flynyddoedd yn ôl'),
        future: TimeAgoPluralLabels(
            one: 'ymhen bl.',
            two: 'ymhen {0} flynedd',
            few: 'ymhen {0} blynedd',
            many: 'ymhen {0} blynedd',
            other: 'ymhen {0} o flynyddoedd')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} eiliad'),
    minute: TimeAgoPluralLabels(
        zero: '{0} munud',
        few: '{0} mun',
        many: '{0} munud',
        other: '{0} mun.'),
    hour: TimeAgoPluralLabels.same('{0} awr'),
    day: TimeAgoPluralLabels(two: '{0} d', other: '{0} diwrnod'),
    week: TimeAgoPluralLabels(
        zero: '{0} wythnos',
        two: 'pythefnos',
        few: '{0} wythnos',
        many: '{0} wythnos',
        other: '{0} ws.'),
    month:
        TimeAgoPluralLabels(one: '{0} mis', two: '{0} fis', other: '{0} mis'),
    quarter: TimeAgoPluralLabels(
        zero: '{0} o chwarteri',
        two: '{0} chwarter',
        few: '{0} chwarter',
        many: '{0} chwarter',
        other: '{0} chw.'),
    year: TimeAgoPluralLabels(
        one: 'blwyddyn',
        two: '{0} flynedd',
        few: '{0} o flynyddoedd',
        many: '{0} o flynyddoedd',
        other: '{0} o flynyddoedd'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} yn ôl',
    future: 'ymhen {0}',
  ),
);
