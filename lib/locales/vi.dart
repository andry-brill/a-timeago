import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'vi'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 giây trước',
    current: 'bây giờ',
    future: 'sau 1 giây nữa',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'vi';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'bây giờ', past: '{0} giây trước', future: 'sau {0} giây nữa'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'phút này',
        past: '{0} phút trước',
        future: 'sau {0} phút nữa'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'giờ này', past: '{0} giờ trước', future: 'sau {0} giờ nữa'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'Hôm nay', past: '{0} ngày trước', future: 'sau {0} ngày nữa'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tuần này',
        past: '{0} tuần trước',
        future: 'sau {0} tuần nữa'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tháng này',
        past: '{0} tháng trước',
        future: 'sau {0} tháng nữa'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'quý này', past: '{0} quý trước', future: 'sau {0} quý nữa'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'năm nay', past: '{0} năm trước', future: 'sau {0} năm nữa'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} giây'),
    minute: TimeAgoPluralLabels.same('{0} phút'),
    hour: TimeAgoPluralLabels.same('{0} giờ'),
    day: TimeAgoPluralLabels.same('{0} ngày'),
    week: TimeAgoPluralLabels.same('{0} tuần'),
    month: TimeAgoPluralLabels.same('{0} tháng'),
    quarter: TimeAgoPluralLabels.same('{0} quý'),
    year: TimeAgoPluralLabels.same('{0} năm'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} trước',
    future: 'sau {0} nữa',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'bây giờ', past: '{0} giây trước', future: 'sau {0} giây nữa'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'phút này',
        past: '{0} phút trước',
        future: 'sau {0} phút nữa'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'giờ này', past: '{0} giờ trước', future: 'sau {0} giờ nữa'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hôm nay', past: '{0} ngày trước', future: 'sau {0} ngày nữa'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tuần này',
        past: '{0} tuần trước',
        future: 'sau {0} tuần nữa'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tháng này',
        past: '{0} tháng trước',
        future: 'sau {0} tháng nữa'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'quý này', past: '{0} quý trước', future: 'sau {0} quý nữa'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'năm nay', past: '{0} năm trước', future: 'sau {0} năm nữa'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} giây'),
    minute: TimeAgoPluralLabels.same('{0} phút'),
    hour: TimeAgoPluralLabels.same('{0} giờ'),
    day: TimeAgoPluralLabels.same('{0} ngày'),
    week: TimeAgoPluralLabels.same('{0} tuần'),
    month: TimeAgoPluralLabels.same('{0} tháng'),
    quarter: TimeAgoPluralLabels.same('{0} quý'),
    year: TimeAgoPluralLabels.same('{0} năm'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} trước',
    future: 'sau {0} nữa',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'bây giờ', past: '{0} giây trước', future: 'sau {0} giây nữa'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'phút này',
        past: '{0} phút trước',
        future: 'sau {0} phút nữa'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'giờ này', past: '{0} giờ trước', future: 'sau {0} giờ nữa'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'hôm nay', past: '{0} ngày trước', future: 'sau {0} ngày nữa'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'tuần này',
        past: '{0} tuần trước',
        future: 'sau {0} tuần nữa'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'tháng này',
        past: '{0} tháng trước',
        future: 'sau {0} tháng nữa'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'quý này', past: '{0} quý trước', future: 'sau {0} quý nữa'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'năm nay', past: '{0} năm trước', future: 'sau {0} năm nữa'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} giây'),
    minute: TimeAgoPluralLabels.same('{0} phút'),
    hour: TimeAgoPluralLabels.same('{0} giờ'),
    day: TimeAgoPluralLabels.same('{0} ngày'),
    week: TimeAgoPluralLabels.same('{0} tuần'),
    month: TimeAgoPluralLabels.same('{0} tháng'),
    quarter: TimeAgoPluralLabels.same('{0} quý'),
    year: TimeAgoPluralLabels.same('{0} năm'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} trước',
    future: 'sau {0} nữa',
  ),
);
