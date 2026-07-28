import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'dz'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'སྐར་ཆ་ 1 ཧེ་མ་',
    current: 'now',
    future: 'སྐར་ཆ་ 1 ནང་',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'dz';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'now', past: 'སྐར་ཆ་ {0} ཧེ་མ་', future: 'སྐར་ཆ་ {0} ནང་'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'སྐར་མ་ {0} ཧེ་མ་',
        future: 'སྐར་མ་ {0} ནང་'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'ཆུ་ཚོད་ {0} ཧེ་མ་',
        future: 'ཆུ་ཚོད་ {0} ནང་'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ད་རིས་', past: 'ཉིནམ་ {0} ཧེ་མ་', future: 'ཉིནམ་ {0} ནང་'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'བངུན་ཕྲག་ {0} ཧེ་མ་',
        future: 'བངུན་ཕྲག་ {0} ནང་'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: 'ཟླཝ་ {0} ཧེ་མ་', future: 'ཟླཝ་ {0} ནང་'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'ལོ་འཁོར་ {0} ཧེ་མ་',
        future: 'ལོ་འཁོར་ {0} ནང་'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('སྐར་ཆ་ {0} ཧེ་མ་'),
    minute: TimeAgoPluralLabels.same('སྐར་མ་ {0} ཧེ་མ་'),
    hour: TimeAgoPluralLabels.same('ཆུ་ཚོད་ {0} ཧེ་མ་'),
    day: TimeAgoPluralLabels.same('ཉིནམ་ {0} ཧེ་མ་'),
    week: TimeAgoPluralLabels.same('བངུན་ཕྲག་ {0} ཧེ་མ་'),
    month: TimeAgoPluralLabels.same('ཟླཝ་ {0} ཧེ་མ་'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('ལོ་འཁོར་ {0} ཧེ་མ་'),
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
        current: 'now', past: 'སྐར་ཆ་ {0} ཧེ་མ་', future: 'སྐར་ཆ་ {0} ནང་'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'སྐར་མ་ {0} ཧེ་མ་',
        future: 'སྐར་མ་ {0} ནང་'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'ཆུ་ཚོད་ {0} ཧེ་མ་',
        future: 'ཆུ་ཚོད་ {0} ནང་'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ད་རིས་', past: 'ཉིནམ་ {0} ཧེ་མ་', future: 'ཉིནམ་ {0} ནང་'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'བངུན་ཕྲག་ {0} ཧེ་མ་',
        future: 'བངུན་ཕྲག་ {0} ནང་'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: 'ཟླཝ་ {0} ཧེ་མ་', future: 'ཟླཝ་ {0} ནང་'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'ལོ་འཁོར་ {0} ཧེ་མ་',
        future: 'ལོ་འཁོར་ {0} ནང་'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('སྐར་ཆ་ {0} ཧེ་མ་'),
    minute: TimeAgoPluralLabels.same('སྐར་མ་ {0} ཧེ་མ་'),
    hour: TimeAgoPluralLabels.same('ཆུ་ཚོད་ {0} ཧེ་མ་'),
    day: TimeAgoPluralLabels.same('ཉིནམ་ {0} ཧེ་མ་'),
    week: TimeAgoPluralLabels.same('བངུན་ཕྲག་ {0} ཧེ་མ་'),
    month: TimeAgoPluralLabels.same('ཟླཝ་ {0} ཧེ་མ་'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('ལོ་འཁོར་ {0} ཧེ་མ་'),
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
        current: 'now', past: 'སྐར་ཆ་ {0} ཧེ་མ་', future: 'སྐར་ཆ་ {0} ནང་'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: 'སྐར་མ་ {0} ཧེ་མ་',
        future: 'སྐར་མ་ {0} ནང་'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: 'ཆུ་ཚོད་ {0} ཧེ་མ་',
        future: 'ཆུ་ཚོད་ {0} ནང་'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ད་རིས་', past: 'ཉིནམ་ {0} ཧེ་མ་', future: 'ཉིནམ་ {0} ནང་'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'this week',
        past: 'བངུན་ཕྲག་ {0} ཧེ་མ་',
        future: 'བངུན་ཕྲག་ {0} ནང་'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: 'ཟླཝ་ {0} ཧེ་མ་', future: 'ཟླཝ་ {0} ནང་'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'this year',
        past: 'ལོ་འཁོར་ {0} ཧེ་མ་',
        future: 'ལོ་འཁོར་ {0} ནང་'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('སྐར་ཆ་ {0} ཧེ་མ་'),
    minute: TimeAgoPluralLabels.same('སྐར་མ་ {0} ཧེ་མ་'),
    hour: TimeAgoPluralLabels.same('ཆུ་ཚོད་ {0} ཧེ་མ་'),
    day: TimeAgoPluralLabels.same('ཉིནམ་ {0} ཧེ་མ་'),
    week: TimeAgoPluralLabels.same('བངུན་ཕྲག་ {0} ཧེ་མ་'),
    month: TimeAgoPluralLabels.same('ཟླཝ་ {0} ཧེ་མ་'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels.same('ལོ་འཁོར་ {0} ཧེ་མ་'),
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
