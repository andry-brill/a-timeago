import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'brx'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 सेकेण्ड सिगां',
    current: 'दा',
    future: '1 सेकेण्डआव',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'brx';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'दा', past: '{0} सेकेण्ड सिगां', future: '{0} सेकेण्डआव'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'बे मिनिट', past: '{0} मिनिट सिगां', future: '{0} मिनिटआव'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'बे घन्टा', past: '{0} घन्टा सिगां', future: '{0} घन्टायाव'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'दिनै', past: '{0} सान सिगां', future: '{0} सानाव'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'बे सप्थाह',
        past: '{0} सप्थाह सिगां',
        future: '{0} सप्थाहयाव'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'बे दान', past: '{0} दान सिगां', future: '{0} दानाव'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'बे खोन्दोसे',
        past: '{0} खोन्दोसे सिगां',
        future: '{0} खोन्दोसेआव'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'बे बोसोर', past: '{0} बोसोर सिगां', future: '{0} बोसोरआव'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेण्ड'),
    minute: TimeAgoPluralLabels.same('{0} मिनिट'),
    hour: TimeAgoPluralLabels.same('{0} घन्टा'),
    day: TimeAgoPluralLabels.same('{0} सान'),
    week: TimeAgoPluralLabels.same('{0} सप्थाह'),
    month: TimeAgoPluralLabels.same('{0} दान'),
    quarter: TimeAgoPluralLabels.same('{0} खोन्दोसे'),
    year: TimeAgoPluralLabels.same('{0} बोसोर'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} सिगां',
    future: '{0}आव',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'दा', past: '{0} सेकेण्ड सिगां', future: '{0} सेकेण्डआव'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'बे मिनिट', past: '{0} मिनिट सिगां', future: '{0} मिनिटआव'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'बे घन्टा', past: '{0} घन्टा सिगां', future: '{0} घन्टायाव'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'दिनै', past: '{0} सान सिगां', future: '{0} सानाव'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'बे सप्थाह',
        past: '{0} सप्थाह सिगां',
        future: '{0} सप्थाहयाव'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'बे दान', past: '{0} दान सिगां', future: '{0} दानाव'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'बे खोन्दोसे',
        past: '{0} खोन्दोसे सिगां',
        future: '{0} खोन्दोसेआव'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'बे बोसोर', past: '{0} बोसोर सिगां', future: '{0} बोसोरआव'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेण्ड'),
    minute: TimeAgoPluralLabels.same('{0} मिनिट'),
    hour: TimeAgoPluralLabels.same('{0} घन्टा'),
    day: TimeAgoPluralLabels.same('{0} सान'),
    week: TimeAgoPluralLabels.same('{0} सप्थाह'),
    month: TimeAgoPluralLabels.same('{0} दान'),
    quarter: TimeAgoPluralLabels.same('{0} खोन्दोसे'),
    year: TimeAgoPluralLabels.same('{0} बोसोर'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} सिगां',
    future: '{0}आव',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'दा', past: '{0} सेकेण्ड सिगां', future: '{0} सेकेण्डआव'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'बे मिनिट', past: '{0} मिनिट सिगां', future: '{0} मिनिटआव'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'बे घन्टा', past: '{0} घन्टा सिगां', future: '{0} घन्टायाव'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'दिनै', past: '{0} सान सिगां', future: '{0} सानाव'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'बे सप्थाह',
        past: '{0} सप्थाह सिगां',
        future: '{0} सप्थाहयाव'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'बे दान', past: '{0} दान सिगां', future: '{0} दानाव'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'बे खोन्दोसे',
        past: '{0} खोन्दोसे सिगां',
        future: '{0} खोन्दोसेआव'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'बे बोसोर', past: '{0} बोसोर सिगां', future: '{0} बोसोरआव'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेण्ड'),
    minute: TimeAgoPluralLabels.same('{0} मिनिट'),
    hour: TimeAgoPluralLabels.same('{0} घन्टा'),
    day: TimeAgoPluralLabels.same('{0} सान'),
    week: TimeAgoPluralLabels.same('{0} सप्थाह'),
    month: TimeAgoPluralLabels.same('{0} दान'),
    quarter: TimeAgoPluralLabels.same('{0} खोन्दोसे'),
    year: TimeAgoPluralLabels.same('{0} बोसोर'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} सिगां',
    future: '{0}आव',
  ),
);
