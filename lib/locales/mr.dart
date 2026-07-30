import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'mr'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'काल',
    today: 'आज',
    tomorrow: 'उद्या',
    dateTime: '{1} रोजी {0} वाजता',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 सेकंदापूर्वी',
    current: 'आत्ता',
    future: '1 सेकंदामध्ये',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'mr';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'आत्ता',
        past: TimeAgoPluralLabels(
            one: '{0} सेकंदापूर्वी', other: '{0} सेकंदांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} सेकंदामध्ये', other: '{0} सेकंदांमध्ये')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'या मिनिटात',
        past: TimeAgoPluralLabels(
            one: '{0} मिनिटापूर्वी', other: '{0} मिनिटांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} मिनिटामध्ये', other: '{0} मिनिटांमध्ये')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'तासात',
        past: TimeAgoPluralLabels(
            one: '{0} तासापूर्वी', other: '{0} तासांपूर्वी'),
        future:
            TimeAgoPluralLabels(one: '{0} तासामध्ये', other: '{0} तासांमध्ये')),
    day: TimeAgoRelativeUnitLabels(
        current: 'आज',
        past: TimeAgoPluralLabels(
            one: '{0} दिवसापूर्वी', other: '{0} दिवसांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} दिवसामध्ये', other: 'येत्या {0} दिवसांमध्ये')),
    week: TimeAgoRelativeUnitLabels(
        current: 'हा आठवडा',
        past: TimeAgoPluralLabels(
            one: '{0} आठवड्यापूर्वी', other: '{0} आठवड्यांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} आठवड्यामध्ये', other: '{0} आठवड्यांमध्ये')),
    month: TimeAgoRelativeUnitLabels(
        current: 'हा महिना',
        past: TimeAgoPluralLabels(
            one: '{0} महिन्यापूर्वी', other: '{0} महिन्यांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} महिन्यामध्ये', other: 'येत्या {0} महिन्यांमध्ये')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ही तिमाही',
        past: TimeAgoPluralLabels(
            one: '{0} तिमाहीपूर्वी', other: '{0} तिमाहींपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} तिमाहीमध्ये', other: '{0} तिमाहींमध्ये')),
    year: TimeAgoRelativeUnitLabels(
        current: 'हे वर्ष',
        past: TimeAgoPluralLabels(
            one: '{0} वर्षापूर्वी', other: '{0} वर्षांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} वर्षामध्ये', other: 'येत्या {0} वर्षांमध्ये')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} सेकंदा', other: '{0} सेकंदां'),
    minute: TimeAgoPluralLabels(one: '{0} मिनिटा', other: '{0} मिनिटां'),
    hour: TimeAgoPluralLabels(one: '{0} तासा', other: '{0} तासां'),
    day: TimeAgoPluralLabels(one: '{0} दिवसा', other: '{0} दिवसां'),
    week: TimeAgoPluralLabels(one: '{0} आठवड्या', other: '{0} आठवड्यां'),
    month: TimeAgoPluralLabels(one: '{0} महिन्या', other: '{0} महिन्यां'),
    quarter: TimeAgoPluralLabels(one: '{0} तिमाही', other: '{0} तिमाहीं'),
    year: TimeAgoPluralLabels(one: '{0} वर्षा', other: '{0} वर्षां'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}पूर्वी',
    future: '{0}मध्ये',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'आत्ता', past: '{0} से. पूर्वी', future: '{0} से. मध्ये'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'या मिनिटात',
        past: '{0} मिनि. पूर्वी',
        future: '{0} मिनि. मध्ये'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'तासात',
        past: TimeAgoPluralLabels(
            one: '{0} तासापूर्वी', other: '{0} तासांपूर्वी'),
        future:
            TimeAgoPluralLabels(one: '{0} तासामध्ये', other: '{0} तासांमध्ये')),
    day: TimeAgoRelativeUnitLabels(
        current: 'आज',
        past: TimeAgoPluralLabels(
            one: '{0} दिवसापूर्वी', other: '{0} दिवसांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} दिवसामध्ये', other: 'येत्या {0} दिवसांमध्ये')),
    week: TimeAgoRelativeUnitLabels(
        current: 'हा आठवडा',
        past: TimeAgoPluralLabels(
            one: '{0} आठवड्यापूर्वी', other: '{0} आठवड्यांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} आठवड्यामध्ये', other: 'येत्या {0} आठवड्यांमध्ये')),
    month: TimeAgoRelativeUnitLabels(
        current: 'हा महिना',
        past: TimeAgoPluralLabels(
            one: '{0} महिन्यापूर्वी', other: '{0} महिन्यांपूर्वी'),
        future: TimeAgoPluralLabels.same('{0} महिन्यामध्ये')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ही तिमाही',
        past: TimeAgoPluralLabels(
            one: '{0} तिमाहीपूर्वी', other: '{0} तिमाहींपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} तिमाहीमध्ये', other: 'येत्या {0} तिमाहींमध्ये')),
    year: TimeAgoRelativeUnitLabels(
        current: 'हे वर्ष',
        past: TimeAgoPluralLabels(
            one: '{0} वर्षापूर्वी', other: '{0} वर्षांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} वर्षामध्ये', other: '{0} वर्षांमध्ये')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} से.'),
    minute: TimeAgoPluralLabels.same('{0} मिनि.'),
    hour: TimeAgoPluralLabels(one: '{0} तासा', other: '{0} तासां'),
    day: TimeAgoPluralLabels(one: '{0} दिवसा', other: '{0} दिवसां'),
    week: TimeAgoPluralLabels(one: '{0} आठवड्या', other: '{0} आठवड्यां'),
    month: TimeAgoPluralLabels(one: '{0} महिन्या', other: '{0} महिन्या'),
    quarter: TimeAgoPluralLabels(one: '{0} तिमाही', other: '{0} तिमाहीं'),
    year: TimeAgoPluralLabels(one: '{0} वर्षा', other: '{0} वर्षां'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पूर्वी',
    future: '{0} मध्ये',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'आत्ता',
        past: TimeAgoPluralLabels.same('{0} से. पूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} से. मध्ये', other: 'येत्या {0} से. मध्ये')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'या मिनिटात',
        past: '{0} मिनि. पूर्वी',
        future: '{0} मिनि. मध्ये'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'तासात',
        past: TimeAgoPluralLabels(
            one: '{0} तासापूर्वी', other: '{0} तासांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} तासामध्ये', other: 'येत्या {0} तासांमध्ये')),
    day: TimeAgoRelativeUnitLabels(
        current: 'आज',
        past: TimeAgoPluralLabels(
            one: '{0} दिवसापूर्वी', other: '{0} दिवसांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} दिवसामध्ये', other: '{0} दिवसांमध्ये')),
    week: TimeAgoRelativeUnitLabels(
        current: 'हा आठवडा',
        past: TimeAgoPluralLabels(
            one: '{0} आठवड्यापूर्वी', other: '{0} आठवड्यांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} आठवड्यामध्ये', other: 'येत्या {0} आठवड्यांमध्ये')),
    month: TimeAgoRelativeUnitLabels(
        current: 'हा महिना',
        past: TimeAgoPluralLabels(
            one: '{0} महिन्यापूर्वी', other: '{0} महिन्यांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} महिन्यामध्ये', other: '{0} महिन्यांमध्ये')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ही तिमाही',
        past: TimeAgoPluralLabels(
            one: '{0} तिमाहीपूर्वी', other: '{0} तिमाहींपूर्वी'),
        future: TimeAgoPluralLabels(
            one: '{0} तिमाहीमध्ये', other: '{0} तिमाहींमध्ये')),
    year: TimeAgoRelativeUnitLabels(
        current: 'हे वर्ष',
        past: TimeAgoPluralLabels(
            one: '{0} वर्षापूर्वी', other: '{0} वर्षांपूर्वी'),
        future: TimeAgoPluralLabels(
            one: 'येत्या {0} वर्षामध्ये', other: 'येत्या {0} वर्षांमध्ये')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} से.', other: '{0} से.'),
    minute: TimeAgoPluralLabels.same('{0} मिनि.'),
    hour: TimeAgoPluralLabels(one: '{0} तासा', other: '{0} तासां'),
    day: TimeAgoPluralLabels(one: '{0} दिवसा', other: '{0} दिवसां'),
    week: TimeAgoPluralLabels(one: '{0} आठवड्या', other: '{0} आठवड्यां'),
    month: TimeAgoPluralLabels(one: '{0} महिन्या', other: '{0} महिन्यां'),
    quarter: TimeAgoPluralLabels(one: '{0} तिमाही', other: '{0} तिमाहीं'),
    year: TimeAgoPluralLabels(one: '{0} वर्षा', other: '{0} वर्षां'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पूर्वी',
    future: 'येत्या {0} मध्ये',
  ),
);
