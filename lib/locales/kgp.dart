import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kgp'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'rãketá',
    today: 'uri',
    tomorrow: 'vajkỹ',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'segũno 1 si ser',
    current: 'ha',
    future: 'segũno 1 kar kỹ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kgp';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ha', past: 'segũno {0} si ser', future: 'segũno {0} kar kỹ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'mĩnũtu tag',
        past: 'mĩnũtu {0} si ser',
        future: 'mĩnũtu {0} kar kỹ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'óra tag kã',
        past: 'óra {0} si ser',
        future: 'óra {0} kar kỹ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'uri', past: 'kurã {0} si ser', future: 'kurã {0} kar kỹ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'simỹnỹ tag kã',
        past: 'simỹnỹ {0} si ser',
        future: 'simỹnỹ {0} kar kỹ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kysã tag kã',
        past: 'kysã {0} si ser',
        future: 'kysã {0} kar kỹ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kysã tẽgtũ tag',
        past: 'kysã-tẽgtũ {0} si ser',
        future: 'kysã-tẽgtũ {0} kar kỹ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'prỹg tag kã',
        past: 'prỹg {0} si ser',
        future: 'prỹg {0} kar kỹ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('segũno {0} si ser'),
    minute: TimeAgoPluralLabels.same('mĩnũtu {0} si ser'),
    hour: TimeAgoPluralLabels.same('óra {0} si ser'),
    day: TimeAgoPluralLabels.same('kurã {0} si ser'),
    week: TimeAgoPluralLabels.same('simỹnỹ {0} si ser'),
    month: TimeAgoPluralLabels.same('kysã {0} si ser'),
    quarter: TimeAgoPluralLabels.same('kysã-tẽgtũ {0} si ser'),
    year: TimeAgoPluralLabels.same('prỹg {0} si ser'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ha', past: 'seg. {0} si ser', future: 'seg. {0} kar kỹ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'mĩnũtu tag',
        past: 'mĩn. {0} si ser',
        future: 'mĩn. {0} kar kỹ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'óra tag kã', past: '{0} h si ser', future: '{0} h kar kỹ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'uri', past: 'kurã {0} si ser', future: 'kurã {0} kar kỹ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'simỹnỹ tag kã',
        past: 'sim. {0} si ser',
        future: 'sim. {0} kar kỹ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'kysã tag kã',
        past: 'kysã {0} si ser',
        future: 'kysã {0} kar kỹ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kysã tẽgtũ tag',
        past: 'kysã-tẽgtũ {0} si ser',
        future: 'kysã-tẽgtũ {0} kar kỹ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'prỹg tag kã',
        past: 'prỹg {0} si ser',
        future: 'prỹg {0} kar kỹ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('seg. {0}'),
    minute: TimeAgoPluralLabels.same('mĩn. {0}'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('kurã {0}'),
    week: TimeAgoPluralLabels.same('sim. {0}'),
    month: TimeAgoPluralLabels.same('kysã {0}'),
    quarter: TimeAgoPluralLabels.same('kysã-tẽgtũ {0}'),
    year: TimeAgoPluralLabels.same('prỹg {0}'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} si ser',
    future: '{0} kar kỹ',
  ),
);
