import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ko'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: '1초 전',
    current: '지금',
    future: '1초 후',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ko';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '지금', past: '{0}초 전', future: '{0}초 후'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '현재 분', past: '{0}분 전', future: '{0}분 후'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '현재 시간', past: '{0}시간 전', future: '{0}시간 후'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '오늘', past: '{0}일 전', future: '{0}일 후'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '이번 주', past: '{0}주 전', future: '{0}주 후'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '이번 달', past: '{0}개월 전', future: '{0}개월 후'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '이번 분기', past: '{0}분기 전', future: '{0}분기 후'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '올해', past: '{0}년 전', future: '{0}년 후'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}초'),
    minute: TimeAgoPluralLabels.same('{0}분'),
    hour: TimeAgoPluralLabels.same('{0}시간'),
    day: TimeAgoPluralLabels.same('{0}일'),
    week: TimeAgoPluralLabels.same('{0}주'),
    month: TimeAgoPluralLabels.same('{0}개월'),
    quarter: TimeAgoPluralLabels.same('{0}분기'),
    year: TimeAgoPluralLabels.same('{0}년'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 전',
    future: '{0} 후',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: '지금', past: '{0}초 전', future: '{0}초 후'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: '현재 분', past: '{0}분 전', future: '{0}분 후'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: '현재 시간', past: '{0}시간 전', future: '{0}시간 후'),
    day: TimeAgoRelativeUnitLabels.same(
        current: '오늘', past: '{0}일 전', future: '{0}일 후'),
    week: TimeAgoRelativeUnitLabels.same(
        current: '이번 주', past: '{0}주 전', future: '{0}주 후'),
    month: TimeAgoRelativeUnitLabels.same(
        current: '이번 달', past: '{0}개월 전', future: '{0}개월 후'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: '이번 분기', past: '{0}분기 전', future: '{0}분기 후'),
    year: TimeAgoRelativeUnitLabels.same(
        current: '올해', past: '{0}년 전', future: '{0}년 후'),
  ),
  units: _compactUnits,
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 전',
    future: '{0} 후',
  ),
);

const _compactUnits = TimeAgoUnitLabels(
  second: TimeAgoPluralLabels.same('{0}초'),
  minute: TimeAgoPluralLabels.same('{0}분'),
  hour: TimeAgoPluralLabels.same('{0}시간'),
  day: TimeAgoPluralLabels.same('{0}일'),
  week: TimeAgoPluralLabels.same('{0}주'),
  month: TimeAgoPluralLabels.same('{0}개월'),
  quarter: TimeAgoPluralLabels.same('{0}분기'),
  year: TimeAgoPluralLabels.same('{0}년'),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}초 전'),
        future: TimeAgoPluralLabels.same('{0}초 후')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}분 전'),
        future: TimeAgoPluralLabels.same('{0}분 후')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}시간 전'),
        future: TimeAgoPluralLabels.same('{0}시간 후')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}일 전'),
        future: TimeAgoPluralLabels.same('{0}일 후')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}주 전'),
        future: TimeAgoPluralLabels.same('{0}주 후')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}개월 전'),
        future: TimeAgoPluralLabels.same('{0}개월 후')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}분기 전'),
        future: TimeAgoPluralLabels.same('{0}분기 후')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}년 전'),
        future: TimeAgoPluralLabels.same('{0}년 후')),
  ),
  units: _compactUnits,
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} 전',
    future: '{0} 후',
  ),
  now: '지금',
);
