import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'to'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'sekoni ʻe 1 kuoʻosi',
    current: 'taimí ni',
    future: 'ʻi he sekoni ʻe 1',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'to';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'taimí ni',
        past: 'sekoni ʻe {0} kuoʻosi',
        future: 'ʻi he sekoni ʻe {0}'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ko e miniti ʻeni',
        past: 'miniti ʻe {0} kuoʻosi',
        future: 'ʻi he miniti ʻe {0}'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ko e houa ʻeni',
        past: 'houa ʻe {0} kuoʻosi',
        future: 'ʻi he houa ʻe {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ʻahó ni',
        past: 'ʻaho ʻe {0} kuoʻosi',
        future: 'ʻi he ʻaho ʻe {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'uiké ni',
        past: 'uike ʻe {0} kuoʻosi',
        future: 'ʻi he uike ʻe {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'māhiná ni',
        past: 'māhina ʻe {0} kuoʻosi',
        future: 'ʻi he māhina ʻe {0}'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kuata koʻeni',
        past: 'kuata ʻe {0} kuoʻosi',
        future: 'ʻi he kuata ʻe {0}'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'taʻú ni',
        past: 'taʻu ʻe {0} kuoʻosi',
        future: 'ʻi he taʻu ʻe {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekoni ʻe {0} kuoʻosi'),
    minute: TimeAgoPluralLabels.same('miniti ʻe {0} kuoʻosi'),
    hour: TimeAgoPluralLabels.same('houa ʻe {0} kuoʻosi'),
    day: TimeAgoPluralLabels.same('ʻaho ʻe {0} kuoʻosi'),
    week: TimeAgoPluralLabels.same('uike ʻe {0} kuoʻosi'),
    month: TimeAgoPluralLabels.same('māhina ʻe {0} kuoʻosi'),
    quarter: TimeAgoPluralLabels.same('kuata ʻe {0} kuoʻosi'),
    year: TimeAgoPluralLabels.same('taʻu ʻe {0} kuoʻosi'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'taimí ni',
        past: 'sekoni ʻe {0} kuoʻosi',
        future: 'ʻi he sekoni ʻe {0}'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ko e miniti ʻeni',
        past: 'miniti ʻe {0} kuoʻosi',
        future: 'ʻi he miniti ʻe {0}'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ko e houa ʻeni',
        past: 'houa ʻe {0} kuoʻosi',
        future: 'ʻi he houa ʻe {0}'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'ʻa.ni',
        past: 'ʻaho ʻe {0} kuoʻosi',
        future: 'ʻi he ʻaho ʻe {0}'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ui.ni',
        past: 'uike ʻe {0} kuoʻosi',
        future: 'ʻi he uike ʻe {0}'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'mh.ni',
        past: 'māhina ʻe {0} kuoʻosi',
        future: 'ʻi he māhina ʻe {0}'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kuata koʻeni',
        past: 'kuata ʻe {0} kuoʻosi',
        future: 'ʻi he kuata ʻe {0}'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 't.ni',
        past: 'taʻu ʻe {0} kuoʻosi',
        future: 'ʻi he taʻu ʻe {0}'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekoni ʻe {0} kuoʻosi'),
    minute: TimeAgoPluralLabels.same('miniti ʻe {0} kuoʻosi'),
    hour: TimeAgoPluralLabels.same('houa ʻe {0} kuoʻosi'),
    day: TimeAgoPluralLabels.same('ʻaho ʻe {0} kuoʻosi'),
    week: TimeAgoPluralLabels.same('uike ʻe {0} kuoʻosi'),
    month: TimeAgoPluralLabels.same('māhina ʻe {0} kuoʻosi'),
    quarter: TimeAgoPluralLabels.same('kuata ʻe {0} kuoʻosi'),
    year: TimeAgoPluralLabels.same('taʻu ʻe {0} kuoʻosi'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}',
    future: '{0}',
  ),
);
