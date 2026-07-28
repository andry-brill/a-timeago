import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'hi'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: _mini,
  ),
  now: TimeAgoNowLabels(
    past: '1 सेकंड पहले',
    current: 'अब',
    future: '1 सेकंड में',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'hi';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'अब', past: '{0} सेकंड पहले', future: '{0} सेकंड में'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'यह मिनट', past: '{0} मिनट पहले', future: '{0} मिनट में'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'यह घंटा', past: '{0} घंटे पहले', future: '{0} घंटे में'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आज', past: '{0} दिन पहले', future: '{0} दिन में'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'इस सप्ताह',
        past: '{0} सप्ताह पहले',
        future: '{0} सप्ताह में'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'इस माह', past: '{0} माह पहले', future: '{0} माह में'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'इस तिमाही',
        past: TimeAgoPluralLabels.same('{0} तिमाही पहले'),
        future: TimeAgoPluralLabels(
            one: '{0} तिमाही में', other: '{0} तिमाहियों में')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'इस वर्ष', past: '{0} वर्ष पहले', future: '{0} वर्ष में'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकंड'),
    minute: TimeAgoPluralLabels.same('{0} मिनट'),
    hour: TimeAgoPluralLabels.same('{0} घंटे'),
    day: TimeAgoPluralLabels.same('{0} दिन'),
    week: TimeAgoPluralLabels.same('{0} सप्ताह'),
    month: TimeAgoPluralLabels.same('{0} माह'),
    quarter: TimeAgoPluralLabels(one: '{0} तिमाही', other: '{0} तिमाह'),
    year: TimeAgoPluralLabels.same('{0} वर्ष'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहले',
    future: '{0} में',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'अब', past: '{0} से॰ पहले', future: '{0} से॰ में'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'यह मिनट', past: '{0} मि॰ पहले', future: '{0} मि॰ में'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'यह घंटा', past: '{0} घं॰ पहले', future: '{0} घं॰ में'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आज', past: '{0} दिन पहले', future: '{0} दिन में'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'इस सप्ताह',
        past: '{0} सप्ताह पहले',
        future: '{0} सप्ताह में'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'इस माह', past: '{0} माह पहले', future: '{0} माह में'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'इस तिमाही',
        past: TimeAgoPluralLabels(
            one: '{0} तिमाही पहले', other: '{0} तिमाहियों पहले'),
        future: TimeAgoPluralLabels(
            one: '{0} तिमाही में', other: '{0} तिमाहियों में')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'इस वर्ष', past: '{0} वर्ष पहले', future: '{0} वर्ष में'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} से॰'),
    minute: TimeAgoPluralLabels.same('{0} मि॰'),
    hour: TimeAgoPluralLabels.same('{0} घं॰'),
    day: TimeAgoPluralLabels.same('{0} दिन'),
    week: TimeAgoPluralLabels.same('{0} सप्ताह'),
    month: TimeAgoPluralLabels.same('{0} माह'),
    quarter: TimeAgoPluralLabels(one: '{0} तिमाही', other: '{0} तिमाहियों'),
    year: TimeAgoPluralLabels.same('{0} वर्ष'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहले',
    future: '{0} में',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'अब', past: '{0} से॰ पहले', future: '{0} से॰ में'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'यह मिनट', past: '{0} मि॰ पहले', future: '{0} मि॰ में'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'यह घंटा', past: '{0} घं॰ पहले', future: '{0} घं॰ में'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आज', past: '{0} दिन पहले', future: '{0} दिन में'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'इस सप्ताह',
        past: '{0} सप्ताह पहले',
        future: '{0} सप्ताह में'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'इस माह', past: '{0} माह पहले', future: '{0} माह में'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'इस तिमाही', past: '{0} ति॰ पहले', future: '{0} ति॰ में'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'इस साल', past: '{0} वर्ष पहले', future: '{0} वर्ष में'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} से॰'),
    minute: TimeAgoPluralLabels.same('{0} मि॰'),
    hour: TimeAgoPluralLabels.same('{0} घं॰'),
    day: TimeAgoPluralLabels.same('{0} दिन'),
    week: TimeAgoPluralLabels.same('{0} सप्ताह'),
    month: TimeAgoPluralLabels.same('{0} माह'),
    quarter: TimeAgoPluralLabels.same('{0} ति॰'),
    year: TimeAgoPluralLabels.same('{0} वर्ष'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहले',
    future: '{0} में',
  ),
);

const _mini = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}से॰ पहले'),
        future: TimeAgoPluralLabels.same('{0}से॰ में')),
    minute: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}मि॰ पहले'),
        future: TimeAgoPluralLabels.same('{0}मि॰ में')),
    hour: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}घं॰ पहले'),
        future: TimeAgoPluralLabels.same('{0}घं॰ में')),
    day: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}दिन पहले'),
        future: TimeAgoPluralLabels.same('{0}दिन में')),
    week: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}सप्ताह पहले'),
        future: TimeAgoPluralLabels.same('{0}सप्ताह में')),
    month: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}माह पहले'),
        future: TimeAgoPluralLabels.same('{0}माह में')),
    quarter: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels(
            one: '{0}तिमाही पहले', other: '{0}तिमाहियों पहले'),
        future: TimeAgoPluralLabels(
            one: '{0}तिमाही में', other: '{0}तिमाहियों में')),
    year: TimeAgoRelativeUnitLabels(
        past: TimeAgoPluralLabels.same('{0}वर्ष पहले'),
        future: TimeAgoPluralLabels.same('{0}वर्ष में')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0}से॰'),
    minute: TimeAgoPluralLabels.same('{0}मि॰'),
    hour: TimeAgoPluralLabels.same('{0}घं॰'),
    day: TimeAgoPluralLabels.same('{0}दिन'),
    week: TimeAgoPluralLabels.same('{0}सप्ताह'),
    month: TimeAgoPluralLabels.same('{0}माह'),
    quarter: TimeAgoPluralLabels(one: '{0}तिमाही', other: '{0}तिमाहियों'),
    year: TimeAgoPluralLabels.same('{0}वर्ष'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0} {1}',
    start: '{0} {1}',
    middle: '{0} {1}',
    end: '{0} {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहले',
    future: '{0} में',
  ),
  now: 'अब',
);
