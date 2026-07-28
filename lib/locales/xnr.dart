import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'xnr'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 सकिंट पैले',
    current: 'हुण',
    future: '1 सकिंटे च',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'xnr';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'हुण', past: '{0} सकिंट पैले', future: '{0} सकिंटे च'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एह मिंट', past: '{0} मिंट पैले', future: '{0} मिंटे च'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एह घंटा', past: '{0} घंटे पैले', future: '{0} घंटे च'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'अज्ज', past: '{0} ध्याड़े पैले', future: '{0} ध्याड़ेयां च'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एह हफ्ता',
        past: '{0} हफ्तेयां पैले',
        future: '{0} हफ्तेयां च'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एह मीन्ना',
        past: '{0} मीन्ने पैले',
        future: '{0} मीन्नेयां च'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एह तिन मीन्ने',
        past: '{0} तिनां मीन्नेयां च',
        future: '{0} तिनां मीन्नेयां च'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एह साल', past: '{0} साल पैले', future: '{0} साल्लां च'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} सकिंट'),
    minute: TimeAgoPluralLabels.same('{0} मिंट'),
    hour: TimeAgoPluralLabels.same('{0} घंटे'),
    day: TimeAgoPluralLabels.same('{0} ध्याड़े'),
    week: TimeAgoPluralLabels.same('{0} हफ्तेयां'),
    month: TimeAgoPluralLabels.same('{0} मीन्ने'),
    quarter: TimeAgoPluralLabels.same('{0} तिनां मीन्नेयां च'),
    year: TimeAgoPluralLabels.same('{0} साल'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पैले',
    future: '{0}े च',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'हुण', past: '{0} स॰ पैले', future: '{0} स॰ च'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एह मिंट', past: '{0} मि॰ पैले', future: '{0} मि॰ च'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एह घंटा', past: '{0} घं॰ पैले', future: '{0} घं॰ च'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'अज्ज', past: '{0} ध्याड़े पैले', future: '{0} ध्याड़ेयां च'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एह हफ्ता',
        past: '{0} हफ्तेयां पैले',
        future: '{0} हफ्तेयां च'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एह मीन्ना',
        past: '{0} मीन्ने पैले',
        future: '{0} मीन्नेयां च'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एह तिन मीन्ने',
        past: '{0} तिनां मीन्नेयां च',
        future: '{0} तिनां मीन्नेयां च'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एह साल', past: '{0} साल पैले', future: '{0} साल्लां च'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} स॰'),
    minute: TimeAgoPluralLabels.same('{0} मि॰'),
    hour: TimeAgoPluralLabels.same('{0} घं॰'),
    day: TimeAgoPluralLabels.same('{0} ध्याड़े'),
    week: TimeAgoPluralLabels.same('{0} हफ्तेयां'),
    month: TimeAgoPluralLabels.same('{0} मीन्ने'),
    quarter: TimeAgoPluralLabels.same('{0} तिनां मीन्नेयां च'),
    year: TimeAgoPluralLabels.same('{0} साल'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पैले',
    future: '{0} च',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'हुण', past: '{0} स॰ पैले', future: '{0} स॰ च'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'एह मिंट', past: '{0} मि॰ पैले', future: '{0} मि॰ च'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'एह घंटा', past: '{0} घं॰ पैले', future: '{0} घं॰ च'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'अज्ज', past: '{0} ध्याड़े पैले', future: '{0} ध्याड़ेयां च'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'एह हफ्ता',
        past: '{0} हफ्तेयां पैले',
        future: '{0} हफ्तेयां च'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'एह मीन्ना',
        past: '{0} मीन्ने पैले',
        future: '{0} मीन्नेयां च'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'एह तिन मीन्ने',
        past: '{0} तिनां मीन्नेयां च',
        future: '{0} तिनां मीन्नेयां च'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'एह साल', past: '{0} साल पैले', future: '{0} साल्लां च'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} स॰'),
    minute: TimeAgoPluralLabels.same('{0} मि॰'),
    hour: TimeAgoPluralLabels.same('{0} घं॰'),
    day: TimeAgoPluralLabels.same('{0} ध्याड़े'),
    week: TimeAgoPluralLabels.same('{0} हफ्तेयां'),
    month: TimeAgoPluralLabels.same('{0} मीन्ने'),
    quarter: TimeAgoPluralLabels.same('{0} तिनां मीन्नेयां च'),
    year: TimeAgoPluralLabels.same('{0} साल'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} पैले',
    future: '{0} च',
  ),
);
