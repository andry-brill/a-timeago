import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sah'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'Бэҕэһээ',
    today: 'Бүгүн',
    tomorrow: 'Сарсын',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 сөкүүндэ ынараа өттүгэр',
    current: 'билигин',
    future: '1 сөкүүндэннэн',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sah';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'билигин',
        past: '{0} сөкүүндэ ынараа өттүгэр',
        future: '{0} сөкүүндэннэн'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} мүнүүтэ ынараа өттүгэр',
        future: '{0} мүнүүтэннэн'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: '{0} чаас ынараа өттүгэр',
        future: '{0} чааһынан'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Бүгүн',
        past: '{0} күн ынараа өттүгэр',
        future: '{0} күнүнэн'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'бу нэдиэлэ',
        past: '{0} нэдиэлэ анараа өттүгэр',
        future: '{0} нэдиэлэннэн'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бу ый', past: '{0} ый ынараа өттүгэр', future: '{0} ыйынан'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'бу кыбаартал',
        past: '{0} кыбаартал анараа өттүгэр',
        future: '{0} кыбаарталынан'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл',
        past: '{0} сыл ынараа өттүгэр',
        future: '{0} сылынан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сөкүүндэ'),
    minute: TimeAgoPluralLabels.same('{0} мүнүүтэ'),
    hour: TimeAgoPluralLabels.same('{0} чаа'),
    day: TimeAgoPluralLabels.same('{0} күн'),
    week: TimeAgoPluralLabels.same('{0} нэдиэлэ'),
    month: TimeAgoPluralLabels.same('{0} ый'),
    quarter: TimeAgoPluralLabels.same('{0} кыбаартал'),
    year: TimeAgoPluralLabels.same('{0} сыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} ынараа өттүгэр',
    future: '{0}ннэн',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'билигин',
        past: '{0} сөк. анараа өттүгэр',
        future: '{0} сөкүүндэннэн'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'this minute',
        past: '{0} мүнүүтэ ынараа өттүгэр',
        future: '{0} мүнүүтэннэн'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'this hour',
        past: '{0} чаас ынараа өттүгэр',
        future: '{0} чааһынан'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Бүгүн',
        past: '{0} күн ынараа өттүгэр',
        future: '{0} күнүнэн'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'бу нэдиэлэ',
        past: '{0} нэдиэлэ анараа өттүгэр',
        future: '{0} нэдиэлэннэн'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'бу ый', past: '{0} ый ынараа өттүгэр', future: '{0} ыйынан'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'бу кыбаартал',
        past: '{0} кыб. анараа өттүгэр',
        future: '{0} кыбаарталынан'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'быйыл',
        past: '{0} сыл ынараа өттүгэр',
        future: '{0} сылынан'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сөк'),
    minute: TimeAgoPluralLabels.same('{0} мүнүүтэ'),
    hour: TimeAgoPluralLabels.same('{0} чаа'),
    day: TimeAgoPluralLabels.same('{0} күн'),
    week: TimeAgoPluralLabels.same('{0} нэдиэлэ'),
    month: TimeAgoPluralLabels.same('{0} ый'),
    quarter: TimeAgoPluralLabels.same('{0} кыб'),
    year: TimeAgoPluralLabels.same('{0} сыл'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. анараа өттүгэр',
    future: '{0}үүндэннэн',
  ),
);
