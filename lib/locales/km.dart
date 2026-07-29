import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'km'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 វិនាទី​មុន',
    current: 'ឥឡូវ',
    future: '1 វិនាទីទៀត',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'km';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ឥឡូវ', past: '{0} វិនាទី​មុន', future: '{0} វិនាទីទៀត'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'នាទីនេះ', past: '{0} នាទី​មុន', future: '{0} នាទីទៀត'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ម៉ោងនេះ',
        past: '{0} ម៉ោង​មុន',
        future: 'ក្នុង​រយៈ​ពេល {0} ម៉ោង'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ថ្ងៃ​នេះ', past: '{0} ថ្ងៃ​មុន', future: '{0} ថ្ងៃទៀត'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'សប្ដាហ៍​នេះ',
        past: '{0} សប្ដាហ៍​មុន',
        future: '{0} សប្ដាហ៍ទៀត'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ខែ​នេះ', past: '{0} ខែមុន', future: '{0} ខែទៀត'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ត្រីមាស​នេះ',
        past: '{0} ត្រីមាស​មុន',
        future: '{0} ត្រីមាសទៀត'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ឆ្នាំ​នេះ', past: '{0} ឆ្នាំ​មុន', future: '{0} ឆ្នាំទៀត'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} វិនាទី'),
    minute: TimeAgoPluralLabels.same('{0} នាទី'),
    hour: TimeAgoPluralLabels.same('{0} ម៉ោង'),
    day: TimeAgoPluralLabels.same('{0} ថ្ងៃ'),
    week: TimeAgoPluralLabels.same('{0} សប្ដាហ៍'),
    month: TimeAgoPluralLabels.same('{0} ខែ'),
    quarter: TimeAgoPluralLabels.same('{0} ត្រីមាស'),
    year: TimeAgoPluralLabels.same('{0} ឆ្នាំ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}​មុន',
    future: '{0}ទៀត',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ឥឡូវ', past: '{0} វិនាទី​មុន', future: '{0} វិនាទីទៀត'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'នាទីនេះ', past: '{0} នាទី​​មុន', future: '{0} នាទីទៀត'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ម៉ោងនេះ', past: '{0} ម៉ោង​មុន', future: '{0} ម៉ោងទៀត'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ថ្ងៃ​នេះ', past: '{0} ថ្ងៃ​​មុន', future: '{0} ថ្ងៃទៀត'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'សប្ដាហ៍​នេះ',
        past: '{0} សប្ដាហ៍​មុន',
        future: '{0} សប្ដាហ៍ទៀត'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ខែ​នេះ', past: '{0} ខែមុន', future: '{0} ខែទៀត'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ត្រីមាស​នេះ',
        past: '{0} ត្រីមាស​មុន',
        future: '{0} ត្រីមាសទៀត'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ឆ្នាំ​នេះ', past: '{0} ឆ្នាំ​មុន', future: '{0} ឆ្នាំទៀត'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} វិនាទី'),
    minute: TimeAgoPluralLabels.same('{0} នាទី'),
    hour: TimeAgoPluralLabels.same('{0} ម៉ោង'),
    day: TimeAgoPluralLabels.same('{0} ថ្ងៃ'),
    week: TimeAgoPluralLabels.same('{0} សប្ដាហ៍'),
    month: TimeAgoPluralLabels.same('{0} ខែ'),
    quarter: TimeAgoPluralLabels.same('{0} ត្រីមាស'),
    year: TimeAgoPluralLabels.same('{0} ឆ្នាំ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}​មុន',
    future: '{0}ទៀត',
  ),
);
