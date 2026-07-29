import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'yrl'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'aikué 1 segũdu',
    current: 'kuíri',
    future: '1 segũdu resê',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'yrl';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'kuíri',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} segũdu', other: 'aikué {0} segũdu itá'),
        future: TimeAgoPluralLabels(
            one: '{0} segũdu resê', other: '{0} segũdu resê itá')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'kuá minutu',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} minutu', other: 'aikué {0} minutu itá'),
        future: TimeAgoPluralLabels(
            one: '{0} minutu resê', other: '{0} minutu resê itá')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'kuá hura',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} hura', other: 'aikué {0} hura itá'),
        future: TimeAgoPluralLabels(
            one: '{0} hura resê', other: '{0} hura resê itá')),
    day: TimeAgoRelativeUnitLabels(
        current: 'wií',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} ara', other: 'aikué {0} ara itá'),
        future: TimeAgoPluralLabels(
            one: '{0} ara resê', other: '{0} ara itá resê')),
    week: TimeAgoRelativeUnitLabels(
        current: 'kuá sẽmãna',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} sẽmãna', other: 'aikué {0} sẽmãna itá'),
        future: TimeAgoPluralLabels(
            one: '{0} sẽmãna resê', other: '{0} sẽmãna itá resê')),
    month: TimeAgoRelativeUnitLabels(
        current: 'kuá yasí',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} yasí', other: 'aikué {0} yasí itá'),
        future: TimeAgoPluralLabels(
            one: '{0} yasí resê', other: '{0} yasí itá resê')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'kuá musapíri-yasí',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} musapíri-yasí',
            other: 'aikué {0} musapíri-yasí itá'),
        future: TimeAgoPluralLabels(
            one: '{0} musapíri-yasí resê',
            other: '{0} musapíri-yasí itá resê')),
    year: TimeAgoRelativeUnitLabels(
        current: 'kuá akayú',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} akayú', other: 'aikué {0} akayú itá'),
        future: TimeAgoPluralLabels(
            one: '{0} akayú resê', other: '{0} akayú itá resê')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} segũdu', other: '{0} segũdu'),
    minute: TimeAgoPluralLabels(one: '{0} minutu', other: '{0} minutu'),
    hour: TimeAgoPluralLabels(one: '{0} hura', other: '{0} hura'),
    day: TimeAgoPluralLabels(one: '{0} ara', other: '{0} ara'),
    week: TimeAgoPluralLabels(one: '{0} sẽmãna', other: '{0} sẽmãna'),
    month: TimeAgoPluralLabels(one: '{0} yasí', other: '{0} yasí'),
    quarter: TimeAgoPluralLabels(
        one: '{0} musapíri-yasí', other: '{0} musapíri-yasí'),
    year: TimeAgoPluralLabels(one: '{0} akayú', other: '{0} akayú'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'aikué {0} itá',
    future: '{0} resê itá',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'kuíri',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} seg.', other: 'aikué {0} seg. itá'),
        future: TimeAgoPluralLabels(
            one: '{0} seg. resê', other: '{0} seg. resê itá')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'kuá minutu',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} min.', other: 'aikué {0} min. itá'),
        future: TimeAgoPluralLabels(
            one: '{0} min. resê', other: '{0} min. resê itá')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'kuá hura',
        past: TimeAgoPluralLabels(one: 'aikué {0} h', other: 'aikué {0} h itá'),
        future:
            TimeAgoPluralLabels(one: '{0} h resê', other: '{0} h resê itá')),
    day: TimeAgoRelativeUnitLabels(
        current: 'wií',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} ara', other: 'aikué {0} ara itá'),
        future: TimeAgoPluralLabels(
            one: '{0} ara resê', other: '{0} ara itá resê')),
    week: TimeAgoRelativeUnitLabels(
        current: 'kuá sẽmãna',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} sẽm.', other: 'aikué {0} sẽm. itá'),
        future: TimeAgoPluralLabels(
            one: '{0} sẽm. resê', other: '{0} sẽm. itá resê')),
    month: TimeAgoRelativeUnitLabels(
        current: 'kuá yasí',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} yasí', other: 'aikué {0} yasí itá'),
        future: TimeAgoPluralLabels(
            one: '{0} yasí resê', other: '{0} yasí itá resê')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'kuá musapíri-yasí',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} mu-y.', other: 'aikué {0} mu-y. itá'),
        future: TimeAgoPluralLabels(
            one: '{0} mu-y. resê', other: '{0} mu-y. itá resê')),
    year: TimeAgoRelativeUnitLabels(
        current: 'kuá akayú',
        past: TimeAgoPluralLabels(
            one: 'aikué {0} akayú', other: 'aikué {0} akayú itá'),
        future: TimeAgoPluralLabels(
            one: '{0} akayú resê', other: '{0} akayú itá resê')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} seg.', other: '{0} seg.'),
    minute: TimeAgoPluralLabels(one: '{0} min.', other: '{0} min.'),
    hour: TimeAgoPluralLabels(one: '{0} h', other: '{0} h'),
    day: TimeAgoPluralLabels(one: '{0} ara', other: '{0} ara'),
    week: TimeAgoPluralLabels(one: '{0} sẽm.', other: '{0} sẽm.'),
    month: TimeAgoPluralLabels(one: '{0} yasí', other: '{0} yasí'),
    quarter: TimeAgoPluralLabels(one: '{0} mu-y.', other: '{0} mu-y.'),
    year: TimeAgoPluralLabels(one: '{0} akayú', other: '{0} akayú'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'aikué {0} itá',
    future: '{0} resê itá',
  ),
);
