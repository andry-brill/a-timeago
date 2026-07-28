import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'mai'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 सेकेंड पहिले',
    current: 'एहि समय',
    future: '1 सेकेंड मे',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'mai';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'एहि समय', past: '{0} सेकेंड पहिले', future: '{0} सेकेंड मे'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एहि मिनट', past: '{0} मिनट पहिले', future: '{0} मिनट मे'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एहि घंटा', past: '{0} घंटा पहिले', future: '{0} घंटा मे'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आजुक दिन', past: '{0} दिन मे', future: '{0} दिन मे'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एहि सप्ताह',
        past: '{0} सप्ताह पहिले',
        future: '{0} सप्ताह मे'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एहि माह', past: '{0} माह पहिले', future: '{0} माह मे'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एहि तिमाही',
        past: '{0} तिमाही पहिले',
        future: '{0} तिमाही मे'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एहि बरख', past: '{0} बरख पहिले', future: '{0} बरख मे'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेंड'),
    minute: TimeAgoPluralLabels.same('{0} मिनट'),
    hour: TimeAgoPluralLabels.same('{0} घंटा'),
    day: TimeAgoPluralLabels.same('{0} दिन मे'),
    week: TimeAgoPluralLabels.same('{0} सप्ताह'),
    month: TimeAgoPluralLabels.same('{0} माह'),
    quarter: TimeAgoPluralLabels.same('{0} तिमाही'),
    year: TimeAgoPluralLabels.same('{0} बरख'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहिले',
    future: '{0} मे',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'एहि समय', past: '{0} सेकेंड पहिले', future: '{0} सेकेंड मे'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एहि मिनट', past: '{0} मिनट पहिले', future: '{0} मिनट मे'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एहि घंटा', past: '{0} घंटा पहिले', future: '{0} घंटा मे'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आजुक दिन', past: '{0}दिन पहिले', future: '{0} दिन मे'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एहि सप्ताह',
        past: '{0} सप्ताह पहिले',
        future: '{0} सप्ताह मे'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एहि माह', past: '{0} माह पहिले', future: '{0} माह मे'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एहि तिमाही',
        past: '{0} तिमाही पहिले',
        future: '{0} तिमाही मे'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एहि बरख', past: '{0} बरख पहिले', future: '{0} बरख मे'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेंड'),
    minute: TimeAgoPluralLabels.same('{0} मिनट'),
    hour: TimeAgoPluralLabels.same('{0} घंटा'),
    day: TimeAgoPluralLabels.same('{0}दिन'),
    week: TimeAgoPluralLabels.same('{0} सप्ताह'),
    month: TimeAgoPluralLabels.same('{0} माह'),
    quarter: TimeAgoPluralLabels.same('{0} तिमाही'),
    year: TimeAgoPluralLabels.same('{0} बरख'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहिले',
    future: '{0} मे',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'एहि समय', past: '{0} सेकेंड पहिले', future: '{0} सेकेंड मे'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एहि मिनट', past: '{0} मिनट पहिले', future: '{0} मिनट मे'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एहि घंटा', past: '{0} घंटा पहिले', future: '{0} घंटा मे'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'आजुक दिन', past: '{0}दिन पहिले', future: '{0} दिन मे'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एहि सप्ताह',
        past: '{0} सप्ताह पहिले',
        future: '{0} सप्ताह मे'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एहि माह', past: '{0}माह पहिले', future: '{0}माह मे'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एहि तिमाही',
        past: '{0} तिमाही पहिले',
        future: '{0} तिमाही मे'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एहि बरख', past: '{0}बरख पहिले', future: '{0}बरख मे'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सेकेंड'),
    minute: TimeAgoPluralLabels.same('{0} मिनट'),
    hour: TimeAgoPluralLabels.same('{0} घंटा'),
    day: TimeAgoPluralLabels.same('{0}दिन'),
    week: TimeAgoPluralLabels.same('{0} सप्ताह'),
    month: TimeAgoPluralLabels.same('{0}माह'),
    quarter: TimeAgoPluralLabels.same('{0} तिमाही'),
    year: TimeAgoPluralLabels.same('{0}बरख'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पहिले',
    future: '{0} मे',
  ),
);
