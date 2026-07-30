import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ml'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ഇന്നലെ',
    today: 'ഇന്ന്',
    tomorrow: 'നാളെ',
    dateTime: '{1}, {0}-ന്',
    relativeDateTime: '{1} {0}-ന്',
  ),
  now: TimeAgoNowLabels(
    past: '1 സെക്കൻഡ് മുമ്പ്',
    current: 'ഇപ്പോൾ',
    future: '1 സെക്കൻഡിൽ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ml';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ഇപ്പോൾ',
        past: '{0} സെക്കൻഡ് മുമ്പ്',
        future: '{0} സെക്കൻഡിൽ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ മിനിറ്റിൽ',
        past: '{0} മിനിറ്റ് മുമ്പ്',
        future: '{0} മിനിറ്റിൽ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ മണിക്കൂറിൽ',
        past: '{0} മണിക്കൂർ മുമ്പ്',
        future: '{0} മണിക്കൂറിൽ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ഇന്ന്', past: '{0} ദിവസം മുമ്പ്', future: '{0} ദിവസത്തിൽ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ ആഴ്ച', past: '{0} ആഴ്ച മുമ്പ്', future: '{0} ആഴ്ചയിൽ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ മാസം', past: '{0} മാസം മുമ്പ്', future: '{0} മാസത്തിൽ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ പാദം', past: '{0} പാദം മുമ്പ്', future: '{0} പാദത്തിൽ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ വർ‌ഷം', past: '{0} വർഷം മുമ്പ്', future: '{0} വർഷത്തിൽ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} സെക്കൻഡ'),
    minute: TimeAgoPluralLabels.same('{0} മിനിറ്റ'),
    hour: TimeAgoPluralLabels.same('{0} മണിക്കൂ'),
    day: TimeAgoPluralLabels.same('{0} ദിവസ'),
    week: TimeAgoPluralLabels.same('{0} ആഴ്ച'),
    month: TimeAgoPluralLabels.same('{0} മാസ'),
    quarter: TimeAgoPluralLabels.same('{0} പാദ'),
    year: TimeAgoPluralLabels.same('{0} വർഷ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}് മുമ്പ്',
    future: '{0}ിൽ',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ഇപ്പോൾ',
        past: '{0} സെക്കൻഡ് മുമ്പ്',
        future: '{0} സെക്കൻഡിൽ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ മിനിറ്റിൽ',
        past: '{0} മിനിറ്റ് മുമ്പ്',
        future: '{0} മിനിറ്റിൽ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ മണിക്കൂറിൽ',
        past: '{0} മണിക്കൂർ മുമ്പ്',
        future: '{0} മണിക്കൂറിൽ'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ഇന്ന്', past: '{0} ദിവസം മുമ്പ്', future: '{0} ദിവസത്തിൽ'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ ആഴ്ച', past: '{0} ആഴ്ച മുമ്പ്', future: '{0} ആഴ്ചയിൽ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ മാസം', past: '{0} മാസം മുമ്പ്', future: '{0} മാസത്തിൽ'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ പാദം', past: '{0} പാദം മുമ്പ്', future: '{0} പാദത്തിൽ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ഈ വർ‌ഷം', past: '{0} വർഷം മുമ്പ്', future: '{0} വർഷത്തിൽ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} സെക്കൻഡ'),
    minute: TimeAgoPluralLabels.same('{0} മിനിറ്റ'),
    hour: TimeAgoPluralLabels.same('{0} മണിക്കൂ'),
    day: TimeAgoPluralLabels.same('{0} ദിവസ'),
    week: TimeAgoPluralLabels.same('{0} ആഴ്ച'),
    month: TimeAgoPluralLabels.same('{0} മാസ'),
    quarter: TimeAgoPluralLabels.same('{0} പാദ'),
    year: TimeAgoPluralLabels.same('{0} വർഷ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}് മുമ്പ്',
    future: '{0}ിൽ',
  ),
);
