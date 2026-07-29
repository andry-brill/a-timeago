import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'mn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 секундын өмнө',
    current: 'одоо',
    future: '1 секундын дараа',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'mn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'одоо',
        past: '{0} секундын өмнө',
        future: '{0} секундын дараа'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'энэ минут',
        past: '{0} минутын өмнө',
        future: '{0} минутын дараа'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'энэ цаг',
        past: '{0} цагийн өмнө',
        future: '{0} цагийн дараа'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'өнөөдөр',
        past: '{0} өдрийн өмнө',
        future: '{0} өдрийн дараа'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'энэ долоо хоног',
        past: '{0} долоо хоногийн өмнө',
        future: '{0} долоо хоногийн дараа'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'энэ сар', past: '{0} сарын өмнө', future: '{0} сарын дараа'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'энэ улирал',
        past: '{0} улирлын өмнө',
        future: '{0} улирлын дараа'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'энэ жил',
        past: '{0} жилийн өмнө',
        future: '{0} жилийн дараа'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} секундын'),
    minute: TimeAgoPluralLabels.same('{0} минутын'),
    hour: TimeAgoPluralLabels.same('{0} цагийн'),
    day: TimeAgoPluralLabels.same('{0} өдрийн'),
    week: TimeAgoPluralLabels.same('{0} долоо хоногийн'),
    month: TimeAgoPluralLabels.same('{0} сарын'),
    quarter: TimeAgoPluralLabels.same('{0} улирлын'),
    year: TimeAgoPluralLabels.same('{0} жилийн'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} өмнө',
    future: '{0} дараа',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'одоо', past: '{0} сек өмнө', future: '{0} сек дараа'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'энэ минут', past: '{0} мин өмнө', future: '{0} мин дараа'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'энэ цаг', past: '{0} ц өмнө', future: '{0} ц дараа'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'өнөөдөр',
        past: '{0} өдрийн өмнө',
        future: '{0} өдрийн дараа'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'энэ 7 хоног',
        past: '{0} 7 хоногийн өмнө',
        future: '{0} 7 хоногийн дараа'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'энэ сар', past: '{0} сарын өмнө', future: '{0} сарын дараа'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'энэ улирал',
        past: '{0} улирлын өмнө',
        future: '{0} улирлын дараа'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'энэ жил',
        past: '{0} жилийн өмнө',
        future: '{0} жилийн дараа'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} сек'),
    minute: TimeAgoPluralLabels.same('{0} мин'),
    hour: TimeAgoPluralLabels.same('{0} ц'),
    day: TimeAgoPluralLabels.same('{0} өдрийн'),
    week: TimeAgoPluralLabels.same('{0} 7 хоногийн'),
    month: TimeAgoPluralLabels.same('{0} сарын'),
    quarter: TimeAgoPluralLabels.same('{0} улирлын'),
    year: TimeAgoPluralLabels.same('{0} жилийн'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} өмнө',
    future: '{0} дараа',
  ),
);
