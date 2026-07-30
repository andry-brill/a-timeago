import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ee'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'etsɔ si va yi',
    today: 'egbe',
    tomorrow: 'etsɔ si gbɔna',
    dateTime: '{0} {1}',
    relativeDateTime: '{0} {1}',
  ),
  now: TimeAgoNowLabels(
    past: 'sekend 1 si va yi',
    current: 'fifi',
    future: 'le sekend 1 me',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ee';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'fifi',
        past: TimeAgoPluralLabels(
            one: 'sekend {0} si va yi', other: 'sekend {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le sekend {0} me', other: 'le sekend {0} wo me')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: 'aɖabaƒoƒo {0} si va yi', other: 'aɖabaƒoƒo {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le aɖabaƒoƒo {0} me', other: 'le aɖabaƒoƒo {0} wo me')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: 'gaƒoƒo {0} si va yi', other: 'gaƒoƒo {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le gaƒoƒo {0} me', other: 'le gaƒoƒo {0} wo me')),
    day: TimeAgoRelativeUnitLabels(
        current: 'egbe',
        past: TimeAgoPluralLabels(
            one: 'ŋkeke {0} si va yi', other: 'ŋkeke {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le ŋkeke {0} me', other: 'le ŋkeke {0} wo me')),
    week: TimeAgoRelativeUnitLabels(
        current: 'kɔsiɖa sia',
        past: TimeAgoPluralLabels(
            one: 'kɔsiɖa {0} si va yi', other: 'kɔsiɖa {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le kɔsiɖa {0} me', other: 'le kɔsiɖa {0} wo me')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ɣleti sia',
        past: TimeAgoPluralLabels(
            one: 'ɣleti {0} si va yi', other: 'ɣleti {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le ɣleti {0} me', other: 'le ɣleti {0} wo me')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter',
        past: 'kɔta {0} si va yi me',
        future: 'le kɔta {0} si gbɔ na me'),
    year: TimeAgoRelativeUnitLabels(
        current: 'ƒe sia',
        past: TimeAgoPluralLabels(
            one: 'ƒe {0} si va yi', other: 'ƒe {0} si wo va yi'),
        future: TimeAgoPluralLabels.same('le ƒe {0} me')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekend {0} si wo va yi'),
    minute: TimeAgoPluralLabels.same('aɖabaƒoƒo {0} si wo va yi'),
    hour: TimeAgoPluralLabels.same('gaƒoƒo {0} si wo va yi'),
    day: TimeAgoPluralLabels.same('ŋkeke {0} si wo va yi'),
    week: TimeAgoPluralLabels.same('kɔsiɖa {0} si wo va yi'),
    month: TimeAgoPluralLabels.same('ɣleti {0} si wo va yi'),
    quarter: TimeAgoPluralLabels.same('{0} si'),
    year: TimeAgoPluralLabels.same('ƒe {0} si wo va yi'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'kɔta {0} va yi me',
    future: 'le kɔta {0} gbɔ na me',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'fifi',
        past: TimeAgoPluralLabels(
            one: 'sekend {0} si va yi', other: 'sekend {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le sekend {0} me', other: 'le sekend {0} wo me')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: 'aɖabaƒoƒo {0} si va yi', other: 'aɖabaƒoƒo {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le aɖabaƒoƒo {0} me', other: 'le aɖabaƒoƒo {0} wo me')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: 'gaƒoƒo {0} si va yi', other: 'gaƒoƒo {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le gaƒoƒo {0} me', other: 'le gaƒoƒo {0} wo me')),
    day: TimeAgoRelativeUnitLabels(
        current: 'egbe',
        past: TimeAgoPluralLabels(
            one: 'ŋkeke {0} si va yi', other: 'ŋkeke {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le ŋkeke {0} me', other: 'le ŋkeke {0} wo me')),
    week: TimeAgoRelativeUnitLabels(
        current: 'kɔsiɖa sia',
        past: TimeAgoPluralLabels(
            one: 'kɔsiɖa {0} si va yi', other: 'kɔsiɖa {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le kɔsiɖa {0} me', other: 'le kɔsiɖa {0} wo me')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ɣleti sia',
        past: TimeAgoPluralLabels(
            one: 'ɣleti {0} si va yi', other: 'ɣleti {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le ɣleti {0} me', other: 'le ɣleti {0} wo me')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter',
        past: 'kɔta {0} si va yi me',
        future: 'le kɔta {0} si gbɔ na me'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ƒe sia',
        past: 'le ƒe {0} si va yi me',
        future: 'le ƒe {0} me'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekend {0} si wo va yi'),
    minute: TimeAgoPluralLabels.same('aɖabaƒoƒo {0} si wo va yi'),
    hour: TimeAgoPluralLabels.same('gaƒoƒo {0} si wo va yi'),
    day: TimeAgoPluralLabels.same('ŋkeke {0} si wo va yi'),
    week: TimeAgoPluralLabels.same('kɔsiɖa {0} si wo va yi'),
    month: TimeAgoPluralLabels.same('ɣleti {0} si wo va yi'),
    quarter: TimeAgoPluralLabels.same('{0} si'),
    year: TimeAgoPluralLabels.same('le ƒe {0} si'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'kɔta {0} va yi me',
    future: 'le kɔta {0} gbɔ na me',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'fifi',
        past: TimeAgoPluralLabels(
            one: 'sekend {0} si va yi', other: 'sekend {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le sekend {0} me', other: 'le sekend {0} wo me')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: 'aɖabaƒoƒo {0} si va yi', other: 'aɖabaƒoƒo {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le aɖabaƒoƒo {0} me', other: 'le aɖabaƒoƒo {0} wo me')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: 'gaƒoƒo {0} si va yi', other: 'gaƒoƒo {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le gaƒoƒo {0} me', other: 'le gaƒoƒo {0} wo me')),
    day: TimeAgoRelativeUnitLabels(
        current: 'egbe',
        past: TimeAgoPluralLabels(
            one: 'ŋkeke {0} si va yi', other: 'ŋkeke {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le ŋkeke {0} me', other: 'le ŋkeke {0} wo me')),
    week: TimeAgoRelativeUnitLabels(
        current: 'kɔsiɖa sia',
        past: TimeAgoPluralLabels(
            one: 'kɔsiɖa {0} si va yi', other: 'kɔsiɖa {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le kɔsiɖa {0} me', other: 'le kɔsiɖa {0} wo me')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ɣleti sia',
        past: TimeAgoPluralLabels(
            one: 'ɣleti {0} si va yi', other: 'ɣleti {0} si wo va yi'),
        future: TimeAgoPluralLabels(
            one: 'le ɣleti {0} me', other: 'le ɣleti {0} wo me')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'this quarter',
        past: TimeAgoPluralLabels.same('kɔta {0} si va yi me'),
        future: TimeAgoPluralLabels(
            one: 'le kɔta {0} si gbɔna me', other: 'le kɔta {0} si gbɔ na me')),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ƒe sia',
        past: 'ƒe {0} si va yi me',
        future: 'le ƒe {0} si gbɔna me'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekend {0} si wo va yi'),
    minute: TimeAgoPluralLabels.same('aɖabaƒoƒo {0} si wo va yi'),
    hour: TimeAgoPluralLabels.same('gaƒoƒo {0} si wo va yi'),
    day: TimeAgoPluralLabels.same('ŋkeke {0} si wo va yi'),
    week: TimeAgoPluralLabels.same('kɔsiɖa {0} si wo va yi'),
    month: TimeAgoPluralLabels.same('ɣleti {0} si wo va yi'),
    quarter: TimeAgoPluralLabels(one: '{0} si', other: '{0} si'),
    year: TimeAgoPluralLabels.same('{0} si'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'kɔta {0} va yi me',
    future: 'le kɔta {0} gbɔ na me',
  ),
);
