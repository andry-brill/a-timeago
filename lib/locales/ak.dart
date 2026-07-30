import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ak'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'nnora',
    today: 'ɛnnɛ',
    tomorrow: 'Ɔkyena',
    dateTime: '{1} wɔ {0}',
    relativeDateTime: '{1}, {0}',
  ),
  now: TimeAgoNowLabels(
    past: 'simasin 1 a atwam',
    current: 'seesei',
    future: 'simasin 1 mu',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ak';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'seesei',
        past: 'simasin {0} a atwam',
        future: 'simasin {0} mu'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'sima yi', past: 'sima {0} a atwam', future: 'sima {0} mu'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'dɔnhwere yi',
        past: TimeAgoPluralLabels(
            one: 'dɔnhwere {0} a atwam', other: 'nnɔnhwere {0} a atwam'),
        future: TimeAgoPluralLabels(
            one: 'dɔnhwere {0} mu', other: 'nnɔnhwere {0} mu')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ɛnnɛ',
        past:
            TimeAgoPluralLabels(one: 'da{0} a atwam', other: 'nna{0} a atwam'),
        future: TimeAgoPluralLabels(one: 'da {0} mu', other: 'nna {0} mu')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'nnawɔtwe yi',
        past: 'nnawɔtwe{0} a atwam',
        future: 'nnawɔtwe {0} mu'),
    month: TimeAgoRelativeUnitLabels(
        current: 'bosome yi',
        past: TimeAgoPluralLabels(
            one: '-{0} bosome a atwam', other: 'abosome{0} a atwam'),
        future:
            TimeAgoPluralLabels(one: 'bosome{0} mu', other: 'abosome{0} mu')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'kɔta yi',
        past: TimeAgoPluralLabels(
            one: 'kɔta {0} a atwam', other: 'kɔta ahodoɔ {0} a atwam'),
        future: TimeAgoPluralLabels(
            one: 'kɔta {0} mu', other: 'kɔta ahodoɔ {0} mu')),
    year: TimeAgoRelativeUnitLabels(
        current: 'afe yi',
        past: TimeAgoPluralLabels(
            one: 'afe {0} a atwam', other: 'mfeɛ {0} a atwam'),
        future: TimeAgoPluralLabels(one: 'afe {0} mu', other: 'mfeɛ {0} mu')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('simasin {0} a atwam'),
    minute: TimeAgoPluralLabels.same('sima {0} a atwam'),
    hour: TimeAgoPluralLabels.same('nnɔnhwere {0} a atwam'),
    day: TimeAgoPluralLabels.same('nna{0} a atwam'),
    week: TimeAgoPluralLabels.same('nnawɔtwe{0} a atwam'),
    month: TimeAgoPluralLabels.same('abosome{0} a atwam'),
    quarter: TimeAgoPluralLabels.same('kɔta ahodoɔ {0} a atwam'),
    year: TimeAgoPluralLabels.same('mfeɛ {0} a atwam'),
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
        current: 'seesei',
        past: 'simasin {0} a atwam',
        future: 'simasin {0} mu'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'sima yi', past: 'sima {0} a atwam', future: 'sima {0} mu'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'dɔnhwere yi',
        past: TimeAgoPluralLabels(
            one: 'dɔnhwere {0} a atwam', other: 'nnɔnhwere {0} a atwam'),
        future: TimeAgoPluralLabels(
            one: 'dɔnhwere {0} mu', other: 'nnɔnhwere {0} mu')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ɛnnɛ',
        past:
            TimeAgoPluralLabels(one: 'da{0} a atwam', other: 'nna{0} a atwam'),
        future: TimeAgoPluralLabels(one: 'da {0} mu', other: 'nna {0} mu')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'nnawɔtwe yi',
        past: 'nnawɔtwe{0} a atwam',
        future: 'nnawɔtwe {0} mu'),
    month: TimeAgoRelativeUnitLabels(
        current: 'bosome yi',
        past: TimeAgoPluralLabels(
            one: 'bosome {0} a atwam', other: 'abosome{0} a atwam'),
        future:
            TimeAgoPluralLabels(one: 'bosome {0} mu', other: 'abosome{0} mu')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'kɔta yi',
        past: TimeAgoPluralLabels(
            one: 'kɔta {0} a atwam', other: 'kɔta ahodoɔ {0} a atwam'),
        future: TimeAgoPluralLabels(
            one: 'kɔta {0} mu', other: 'kɔta ahodoɔ {0} mu')),
    year: TimeAgoRelativeUnitLabels(
        current: 'afe yi',
        past: TimeAgoPluralLabels(
            one: 'afe {0} a atwam', other: 'mfeɛ {0} a atwam'),
        future: TimeAgoPluralLabels(one: 'afe {0} mu', other: 'mfeɛ {0} mu')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('simasin {0} a atwam'),
    minute: TimeAgoPluralLabels.same('sima {0} a atwam'),
    hour: TimeAgoPluralLabels.same('nnɔnhwere {0} a atwam'),
    day: TimeAgoPluralLabels.same('nna{0} a atwam'),
    week: TimeAgoPluralLabels.same('nnawɔtwe{0} a atwam'),
    month: TimeAgoPluralLabels.same('abosome{0} a atwam'),
    quarter: TimeAgoPluralLabels.same('kɔta ahodoɔ {0} a atwam'),
    year: TimeAgoPluralLabels.same('mfeɛ {0} a atwam'),
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

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'seesei',
        past: 'simasin {0} a atwam',
        future: 'simasin {0} mu'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'sima yi', past: 'sima {0} a atwam', future: 'sima {0} mu'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'dɔnhwere yi',
        past: TimeAgoPluralLabels(
            one: 'dɔnhwere {0} a atwam', other: 'nnɔnhwere {0} a atwam'),
        future: TimeAgoPluralLabels(
            one: 'dɔnhwere {0} mu', other: 'nnɔnhwere {0} mu')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ɛnnɛ',
        past:
            TimeAgoPluralLabels(one: 'da{0} a atwam', other: 'nna{0} a atwam'),
        future: TimeAgoPluralLabels(one: 'da {0} mu', other: 'nna {0} mu')),
    week: TimeAgoRelativeUnitLabels(
        current: 'nnawɔtwe yi',
        past: TimeAgoPluralLabels(
            one: 'nnawɔtwe{0} a atwam', other: 'nnawɔtwe {0} a atwam'),
        future: TimeAgoPluralLabels(
            one: 'nnawɔtwe {0} mu.', other: 'nnawɔtwe {0} mu')),
    month: TimeAgoRelativeUnitLabels(
        current: 'bosome yi',
        past: TimeAgoPluralLabels(
            one: 'bosome {0} a atwam', other: 'abosome{0} a atwam'),
        future:
            TimeAgoPluralLabels(one: 'bosome {0} mu', other: 'abosome{0} mu')),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'kɔta yi', past: 'kɔta {0} a atwam', future: 'kɔta {0} mu'),
    year: TimeAgoRelativeUnitLabels(
        current: 'afe yi',
        past: TimeAgoPluralLabels(
            one: 'afe {0} a atwam', other: 'mfeɛ {0} a atwam'),
        future: TimeAgoPluralLabels(one: 'afe {0} mu', other: 'mfeɛ {0} mu')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('simasin {0} a atwam'),
    minute: TimeAgoPluralLabels.same('sima {0} a atwam'),
    hour: TimeAgoPluralLabels.same('nnɔnhwere {0} a atwam'),
    day: TimeAgoPluralLabels.same('nna{0} a atwam'),
    week: TimeAgoPluralLabels.same('nnawɔtwe {0} a atwam'),
    month: TimeAgoPluralLabels.same('abosome{0} a atwam'),
    quarter: TimeAgoPluralLabels.same('kɔta {0} a atwam'),
    year: TimeAgoPluralLabels.same('mfeɛ {0} a atwam'),
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
