import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ug'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 سېكۇنت ئىلگىرى',
    current: 'now',
    future: '1 سېكۇنتتىن كېيىن',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ug';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now',
        past: '{0} سېكۇنت ئىلگىرى',
        future: '{0} سېكۇنتتىن كېيىن'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} مىنۇت ئىلگىرى',
        future: '{0} مىنۇتتىن كېيىن'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: '{0} سائەت ئىلگىرى',
        future: '{0} سائەتتىن كېيىن'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'بۈگۈن', past: '{0} كۈن ئىلگىرى', future: '{0} كۈندىن كېيىن'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'بۇ ھەپتە',
        past: '{0} ھەپتە ئىلگىرى',
        future: '{0} ھەپتىدىن كېيىن'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'بۇ ئاي', past: '{0} ئاي ئىلگىرى', future: '{0} ئايدىن كېيىن'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'بۇ يىل', past: '{0} يىل ئىلگىرى', future: '{0} يىلدىن كېيىن'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} سېكۇنت'),
    minute: TimeAgoPluralLabels.same('{0} مىنۇت'),
    hour: TimeAgoPluralLabels.same('{0} سائەت'),
    day: TimeAgoPluralLabels.same('{0} كۈن'),
    week: TimeAgoPluralLabels.same('{0} ھەپت'),
    month: TimeAgoPluralLabels.same('{0} ئاي'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} يىل'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ئىلگىرى',
    future: '{0}تىن كېيىن',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now',
        past: '{0} سېكۇنت ئىلگىرى',
        future: '{0} سېكۇنتتىن كېيىن'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} مىنۇت ئىلگىرى',
        future: '{0} مىنۇتتىن كېيىن'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: '{0} سائەت ئىلگىرى',
        future: '{0} سائەتتىن كېيىن'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'بۈگۈن', past: '{0} كۈن ئىلگىرى', future: '{0} كۈندىن كېيىن'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'بۇ ھەپتە',
        past: '{0} ھەپتە ئىلگىرى',
        future: '{0} ھەپتىدىن كېيىن'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'بۇ ئاي', past: '{0} ئاي ئىلگىرى', future: '{0} ئايدىن كېيىن'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'بۇ يىل', past: '{0} يىل ئىلگىرى', future: '{0} يىلدىن كېيىن'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} سېكۇنت'),
    minute: TimeAgoPluralLabels.same('{0} مىنۇت'),
    hour: TimeAgoPluralLabels.same('{0} سائەت'),
    day: TimeAgoPluralLabels.same('{0} كۈن'),
    week: TimeAgoPluralLabels.same('{0} ھەپت'),
    month: TimeAgoPluralLabels.same('{0} ئاي'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('{0} يىل'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ئىلگىرى',
    future: '{0}تىن كېيىن',
  ),
);
