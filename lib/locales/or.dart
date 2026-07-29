import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'or'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 ସେକେଣ୍ଡ ପୂର୍ବେ',
    current: 'ବର୍ତ୍ତମାନ',
    future: '1 ସେକେଣ୍ଡରେ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'or';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ବର୍ତ୍ତମାନ',
        past: '{0} ସେକେଣ୍ଡ ପୂର୍ବେ',
        future: '{0} ସେକେଣ୍ଡରେ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ମିନିଟ୍',
        past: '{0} ମିନିଟ୍ ପୂର୍ବେ',
        future: '{0} ମିନିଟ୍‌‌ରେ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ଘଣ୍ଟା', past: '{0} ଘଣ୍ଟା ପୂର୍ବେ', future: '{0} ଘଣ୍ଟାରେ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ଆଜି', past: '{0} ଦିନ ପୂର୍ବେ', future: '{0} ଦିନରେ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ସପ୍ତାହ',
        past: '{0} ସପ୍ତାହ ପୂର୍ବେ',
        future: '{0} ସପ୍ତାହରେ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ମାସ', past: '{0} ମାସ ପୂର୍ବେ', future: '{0} ମାସରେ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ତ୍ରୟମାସ',
        past: '{0} ତ୍ରୟମାସ ପୂର୍ବେ',
        future: '{0} ତ୍ରୟମାସରେ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ବର୍ଷ', past: '{0} ବର୍ଷ ପୂର୍ବେ', future: '{0} ବର୍ଷରେ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ସେକେଣ୍ଡ'),
    minute: TimeAgoPluralLabels.same('{0} ମିନିଟ୍'),
    hour: TimeAgoPluralLabels.same('{0} ଘଣ୍ଟା'),
    day: TimeAgoPluralLabels.same('{0} ଦିନ'),
    week: TimeAgoPluralLabels.same('{0} ସପ୍ତାହ'),
    month: TimeAgoPluralLabels.same('{0} ମାସ'),
    quarter: TimeAgoPluralLabels.same('{0} ତ୍ରୟମାସ'),
    year: TimeAgoPluralLabels.same('{0} ବର୍ଷ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ପୂର୍ବେ',
    future: '{0}ରେ',
  ),
);

const _shortNarrowUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0} ସେ.'),
  minute: TimeAgoPluralLabels.same('{0} ମି.'),
  hour: TimeAgoPluralLabels.same('{0} ଘ.'),
  day: TimeAgoPluralLabels.same('{0} ଦିନ'),
  week: TimeAgoPluralLabels.same('{0} ସପ୍ତା.'),
  month: TimeAgoPluralLabels.same('{0} ମା.'),
  quarter: TimeAgoPluralLabels.same('{0} ତ୍ରୟ.'),
  year: TimeAgoPluralLabels.same('{0} ବ.'),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ବର୍ତ୍ତମାନ', past: '{0} ସେ. ପୂର୍ବେ', future: '{0} ସେ. ରେ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ମିନିଟ୍', past: '{0} ମି. ପୂର୍ବେ', future: '{0} ମି. ରେ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ଘଣ୍ଟା', past: '{0} ଘ. ପୂର୍ବେ', future: '{0} ଘ. ରେ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ଆଜି', past: '{0} ଦିନ ପୂର୍ବେ', future: '{0} ଦିନରେ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ସପ୍ତାହ',
        past: '{0} ସପ୍ତା. ପୂର୍ବେ',
        future: '{0} ସପ୍ତା. ରେ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ମାସ', past: '{0} ମା. ପୂର୍ବେ', future: '{0} ମା. ରେ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ତ୍ରୟମାସ',
        past: '{0} ତ୍ରୟ. ପୂର୍ବେ',
        future: '{0} ତ୍ରୟ. ରେ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ବର୍ଷ', past: '{0} ବ. ପୂର୍ବେ', future: '{0} ବ. ରେ'),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ପୂର୍ବେ',
    future: '{0} ରେ',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ବର୍ତ୍ତମାନ', past: '{0} ସେ. ପୂର୍ବେ', future: '{0} ସେ. ରେ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ମିନିଟ୍', past: '{0} ମି. ପୂର୍ବେ', future: '{0} ମି. ରେ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ଘଣ୍ଟା', past: '{0} ଘ. ପୂର୍ବେ', future: '{0} ଘ. ରେ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ଆଜି', past: '{0} ଦିନ ପୂର୍ବେ', future: '{0} ଦିନରେ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ସପ୍ତାହ',
        past: '{0} ସପ୍ତା. ପୂର୍ବେ',
        future: '{0} ସପ୍ତା. ରେ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ମାସ', past: '{0} ମା. ପୂର୍ବେ', future: '{0} ମା. ରେ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ତିନିମାସ',
        past: '{0} ତ୍ରୟ. ପୂର୍ବେ',
        future: '{0} ତ୍ରୟ. ରେ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ଏହି ବର୍ଷ', past: '{0} ବ. ପୂର୍ବେ', future: '{0} ବ. ରେ'),
  ),
  units: _shortNarrowUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ପୂର୍ବେ',
    future: '{0} ରେ',
  ),
);
