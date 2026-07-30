import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kk', scriptCode: 'Arab'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'كەشە',
    today: 'بۇگىن',
    tomorrow: 'ەرتەڭ',
    dateTime: '{1}, {0}',
    relativeDateTime: '{1}، {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 سەكۋند بۇرىن',
    current: 'قازىر',
    future: '1 سەكۋندتان كەيىن',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kk_Arab';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'قازىر',
        past: '{0} سەكۋند بۇرىن',
        future: '{0} سەكۋندتان كەيىن'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'وسى مينۋت',
        past: '{0} مينۋت بۇرىن',
        future: '{0} مينۋتتان كەيىن'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'وسى ساعات',
        past: '{0} ساعات بۇرىن',
        future: '{0} ساعاتتان كەيىن'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'بۇگىن', past: '{0} كۇن بۇرىن', future: '{0} كۇننەن كەيىن'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'وسى اپتا',
        past: '{0} اپتا بۇرىن',
        future: '{0} اپتادان كەيىن'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'وسى اي', past: '{0} اي بۇرىن', future: '{0} ايدان كەيىن'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'وسى توقسان',
        past: '{0} توقسان بۇرىن',
        future: '{0} توقساننان كەيىن'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'بيىلعى جىل',
        past: '{0} جىل بۇرىن',
        future: '{0} جىلدان كەيىن'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} سەكۋند'),
    minute: TimeAgoPluralLabels.same('{0} مينۋت'),
    hour: TimeAgoPluralLabels.same('{0} ساعات'),
    day: TimeAgoPluralLabels.same('{0} كۇن'),
    week: TimeAgoPluralLabels.same('{0} اپتا'),
    month: TimeAgoPluralLabels.same('{0} اي'),
    quarter: TimeAgoPluralLabels.same('{0} توقسان'),
    year: TimeAgoPluralLabels.same('{0} جىل'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} بۇرىن',
    future: '{0}تان كەيىن',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'قازىر',
        past: '{0} سەكۋند بۇرىن',
        future: '{0} سەكۋندتان كەيىن'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'وسى مينۋت',
        past: '{0} مينۋت بۇرىن',
        future: '{0} مينۋتتان كەيىن'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'وسى ساعات',
        past: '{0} ساعات بۇرىن',
        future: '{0} ساعاتتان كەيىن'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'بۇگىن', past: '{0} كۇن بۇرىن', future: '{0} كۇننەن كەيىن'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'وسى اپتا',
        past: '{0} اپتا بۇرىن',
        future: '{0} اپتادان كەيىن'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'وسى اي', past: '{0} اي بۇرىن', future: '{0} ايدان كەيىن'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'وسى توقسان',
        past: '{0} توقسان بۇرىن',
        future: '{0} توقساننان كەيىن'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'بيىلعى جىل',
        past: '{0} جىل بۇرىن',
        future: '{0} جىلدان كەيىن'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} سەكۋند'),
    minute: TimeAgoPluralLabels.same('{0} مينۋت'),
    hour: TimeAgoPluralLabels.same('{0} ساعات'),
    day: TimeAgoPluralLabels.same('{0} كۇن'),
    week: TimeAgoPluralLabels.same('{0} اپتا'),
    month: TimeAgoPluralLabels.same('{0} اي'),
    quarter: TimeAgoPluralLabels.same('{0} توقسان'),
    year: TimeAgoPluralLabels.same('{0} جىل'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} بۇرىن',
    future: '{0}تان كەيىن',
  ),
);
