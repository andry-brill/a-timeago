import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'si'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ඊයේ',
    today: 'අද',
    tomorrow: 'හෙට',
    dateTime: '{1} දින {0}',
    relativeDateTime: '{1} දින {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'තත්පර 1කට පෙර',
    current: 'දැන්',
    future: 'තත්පර 1කින්',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'si';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'දැන්', past: 'තත්පර {0}කට පෙර', future: 'තත්පර {0}කින්'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම මිනිත්තුව',
        past: 'මිනිත්තු {0}කට පෙර',
        future: 'මිනිත්තු {0}කින්'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම පැය', past: 'පැය {0}කට පෙර', future: 'පැය {0}කින්'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'අද', past: 'දින {0}කට පෙර', future: 'දින {0}න්'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම සතිය', past: 'සති {0}කට පෙර', future: 'සති {0}කින්'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම මාසය', past: 'මාස {0}කට පෙර', future: 'මාස {0}කින්'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම කාර්තුව',
        past: 'කාර්තු {0}කට පෙර',
        future: 'කාර්තු {0}කින්'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම වසර', past: 'වසර {0}කට පෙර', future: 'වසර {0}කින්'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}ක'),
    minute: TimeAgoPluralLabels.same('{0}ක'),
    hour: TimeAgoPluralLabels.same('{0}ක'),
    day: TimeAgoPluralLabels.same('දින {0}ක'),
    week: TimeAgoPluralLabels.same('{0}ක'),
    month: TimeAgoPluralLabels.same('{0}ක'),
    quarter: TimeAgoPluralLabels.same('{0}ක'),
    year: TimeAgoPluralLabels.same('{0}ක'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'තත්පර {0}ට පෙර',
    future: 'තත්පර {0}ින්',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'දැන්', past: 'තත්පර {0}කට පෙර', future: 'තත්පර {0}කින්'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම මිනිත්තුව',
        past: 'මිනිත්තු {0}කට පෙර',
        future: 'මිනිත්තු {0}කින්'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම පැය', past: 'පැය {0}කට පෙර', future: 'පැය {0}කින්'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'අද', past: 'දින {0}කට පෙර', future: 'දින {0}න්'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම සති.', past: 'සති {0}කට පෙර', future: 'සති {0}කින්'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම මාස.', past: 'මාස {0}කට පෙර', future: 'මාස {0}කින්'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම කාර්.', past: 'කාර්. {0}කට පෙර', future: 'කාර්. {0}කින්'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'මෙම වසර', past: 'වසර {0}කට පෙර', future: 'වසර {0}කින්'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}ක'),
    minute: TimeAgoPluralLabels.same('{0}ක'),
    hour: TimeAgoPluralLabels.same('{0}ක'),
    day: TimeAgoPluralLabels.same('දින {0}ක'),
    week: TimeAgoPluralLabels.same('{0}ක'),
    month: TimeAgoPluralLabels.same('{0}ක'),
    quarter: TimeAgoPluralLabels.same('{0}ක'),
    year: TimeAgoPluralLabels.same('{0}ක'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'තත්පර {0}ට පෙර',
    future: 'තත්පර {0}ින්',
  ),
);
