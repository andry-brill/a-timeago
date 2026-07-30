import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'syr'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'ܐܬܡܠܝ',
    today: 'ܐܕܝܘܡ',
    tomorrow: 'ܩܘܕܡܐ',
    dateTime: '{1} ܒܫܥܬܐ {0}',
    relativeDateTime: '{1}، {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'ܡ̣ܢ ܩܕܡ ܚܕ ܪܦܦܐ',
    current: 'ܗܫܐ',
    future: 'ܒܚܕ ܪܦܦܐ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'syr';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ܗܫܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܪܦܦܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܖ̈ܦܦܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܪܦܦܐ', other: 'ܒ{0} ܪ̈ܦܦܐ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ܗܢܐ ܩܛܝܢܬܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕܐ ܩܛܝܢܬܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܩܛܝ̈ܢܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕܐ ܩܛܝܢܬܐ', other: 'ܒ{0} ܩܛܝ̈ܢܐ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ܗܕܐ ܫܥܬܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕܐ ܫܥܬܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܫܥ̈ܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕܐ ܫܥܬܐ', other: 'ܒ{0} ܫܥ̈ܐ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ܐܕܝܘܡ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܝܘܡܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܝܘܡܢ̈ܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܝܘܡܐ', other: 'ܒ{0} ܝܘܡܢ̈ܐ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ܗܢܐ ܫܒܘܥܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܫܒܘܥܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܫܒ̈ܘܥܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܫܒܘܥܐ', other: 'ܒ{0} ܫܒ̈ܘܥܐ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ܗܢܐ ܝܪܚܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܝܪܚܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܝܪ̈ܚܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܝܪܚܐ', other: 'ܒ{0} ܝܪ̈ܚܐ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ܗܢܐ ܪܘܒܥܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܪܘܒܥܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܪ̈ܘܒܥܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܪܘܒܥܐ', other: 'ܒ{0} ܪ̈ܘܒܥܐ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ܗܕܐ ܫܢܬܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕܐ ܫܢܬܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܫܢܝ̈ܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕܐ ܫܢܬܐ', other: 'ܒ{0} ܫܢܝ̈ܐ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ܖ̈ܦܦܐ'),
    minute: TimeAgoPluralLabels(one: 'ܚܕܐ ܩܛܝܢܬܐ', other: '{0} ܩܛܝ̈ܢܐ'),
    hour: TimeAgoPluralLabels(one: 'ܚܕܐ ܫܥܬܐ', other: '{0} ܫܥ̈ܐ'),
    day: TimeAgoPluralLabels(one: 'ܚܕ ܝܘܡܐ', other: '{0} ܝܘܡܢ̈ܐ'),
    week: TimeAgoPluralLabels(one: 'ܚܕ ܫܒܘܥܐ', other: '{0} ܫܒ̈ܘܥܐ'),
    month: TimeAgoPluralLabels(one: 'ܚܕ ܝܪܚܐ', other: '{0} ܝܪ̈ܚܐ'),
    quarter: TimeAgoPluralLabels(one: 'ܚܕ ܪܘܒܥܐ', other: '{0} ܪ̈ܘܒܥܐ'),
    year: TimeAgoPluralLabels(one: 'ܚܕܐ ܫܢܬܐ', other: '{0} ܫܢܝ̈ܐ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ܡ̣ܢ ܩܕܡ {0}',
    future: 'ܒ{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ܗܫܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܪܦܦܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܖ̈ܦܦܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܪܦܦܐ', other: 'ܒ{0} ܪ̈ܦܦܐ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ܗܢܐ ܩܛܝܢܬܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕܐ ܩܛܝܢܬܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܩܛܝ̈ܢܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕܐ ܩܛܝܢܬܐ', other: 'ܒ{0} ܩܛܝ̈ܢܐ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ܗܕܐ ܫܥܬܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕܐ ܫܥܬܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܫܥ̈ܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕܐ ܫܥܬܐ', other: 'ܒ{0} ܫܥ̈ܐ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ܐܕܝܘܡ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܝܘܡܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܝܘܡܢ̈ܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܝܘܡܐ', other: 'ܒ{0} ܝܘܡܢ̈ܐ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ܗܢ ܏ܫܒܘ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܫܒܘܥܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܫܒ̈ܘܥܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܫܒܘܥܐ', other: 'ܒ{0} ܫܒ̈ܘܥܐ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ܗܢ ܏ܝܪܚ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܝܪܚܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܝܖ̈ܚܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܝܪܚܐ', other: 'ܒ{0} ܝܪ̈ܚܐ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ܗܢܐ ܪܘܒܥܐ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕ ܪܘܒܥܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܪ̈ܘܒܥܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕ ܪܘܒܥܐ', other: 'ܒ{0} ܪ̈ܘܒܥܐ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ܗܕ ܏ܫܢ',
        past: TimeAgoPluralLabels(
            one: 'ܡ̣ܢ ܩܕܡ ܚܕܐ ܫܢܬܐ', other: 'ܡ̣ܢ ܩܕܡ {0} ܫܢܝ̈ܐ'),
        future: TimeAgoPluralLabels(one: 'ܒܚܕܐ ܫܢܬܐ', other: 'ܒ{0} ܫܢܝ̈ܐ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ܖ̈ܦܦܐ'),
    minute: TimeAgoPluralLabels(one: 'ܚܕܐ ܩܛܝܢܬܐ', other: '{0} ܩܛܝ̈ܢܐ'),
    hour: TimeAgoPluralLabels(one: 'ܚܕܐ ܫܥܬܐ', other: '{0} ܫܥ̈ܐ'),
    day: TimeAgoPluralLabels(one: 'ܚܕ ܝܘܡܐ', other: '{0} ܝܘܡܢ̈ܐ'),
    week: TimeAgoPluralLabels(one: 'ܚܕ ܫܒܘܥܐ', other: '{0} ܫܒ̈ܘܥܐ'),
    month: TimeAgoPluralLabels(one: 'ܚܕ ܝܪܚܐ', other: '{0} ܝ'),
    quarter: TimeAgoPluralLabels(one: 'ܚܕ ܪܘܒܥܐ', other: '{0} ܪ̈ܘܒܥܐ'),
    year: TimeAgoPluralLabels(one: 'ܚܕܐ ܫܢܬܐ', other: '{0} ܫܢܝ̈ܐ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'ܡ̣ܢ ܩܕܡ {0}',
    future: 'ܒ{0}',
  ),
);
