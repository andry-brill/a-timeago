import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'sw'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'Sekunde 1 iliyopita',
    current: 'sasa hivi',
    future: 'baada ya sekunde 1',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'sw';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'sasa hivi',
        past: TimeAgoPluralLabels(
            one: 'Sekunde {0} iliyopita', other: 'Sekunde {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya sekunde {0}')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'dakika hii',
        past: TimeAgoPluralLabels(
            one: 'dakika {0} iliyopita', other: 'dakika {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya dakika {0}')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'saa hii',
        past: TimeAgoPluralLabels(
            one: 'saa {0} iliyopita', other: 'saa {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya saa {0}')),
    day: TimeAgoRelativeUnitLabels(
        current: 'leo',
        past: TimeAgoPluralLabels(
            one: 'siku {0} iliyopita', other: 'siku {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya siku {0}')),
    week: TimeAgoRelativeUnitLabels(
        current: 'wiki hii',
        past: TimeAgoPluralLabels(
            one: 'wiki {0} iliyopita', other: 'wiki {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya wiki {0}')),
    month: TimeAgoRelativeUnitLabels(
        current: 'mwezi huu',
        past: TimeAgoPluralLabels(
            one: 'mwezi {0} uliopita', other: 'miezi {0} iliyopita'),
        future: TimeAgoPluralLabels(
            one: 'baada ya mwezi {0}', other: 'baada ya miezi {0}')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'robo hii ya mwaka',
        past: TimeAgoPluralLabels(
            one: 'robo {0} iliyopita', other: 'robo {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya robo {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: 'mwaka huu',
        past: TimeAgoPluralLabels(
            one: 'mwaka {0} uliopita', other: 'miaka {0} iliyopita'),
        future: TimeAgoPluralLabels(
            one: 'baada ya mwaka {0}', other: 'baada ya miaka {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('Sekunde {0} zilizopita'),
    minute: TimeAgoPluralLabels.same('dakika {0} zilizopita'),
    hour: TimeAgoPluralLabels.same('saa {0} zilizopita'),
    day: TimeAgoPluralLabels.same('siku {0} zilizopita'),
    week: TimeAgoPluralLabels.same('wiki {0} zilizopita'),
    month: TimeAgoPluralLabels.same('miezi {0} iliyopita'),
    quarter: TimeAgoPluralLabels.same('robo {0} zilizopita'),
    year: TimeAgoPluralLabels.same('miaka {0} iliyopita'),
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
    second: TimeAgoRelativeUnitLabels(
        current: 'sasa hivi',
        past: TimeAgoPluralLabels(
            one: 'sekunde {0} iliyopita', other: 'sekunde {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya sekunde {0}')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'dakika hii',
        past: TimeAgoPluralLabels(
            one: 'dakika {0} iliyopita', other: 'dakika {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya dakika {0}')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'saa hii',
        past: TimeAgoPluralLabels(
            one: 'saa {0} iliyopita', other: 'saa {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya saa {0}')),
    day: TimeAgoRelativeUnitLabels(
        current: 'leo',
        past: TimeAgoPluralLabels(
            one: 'siku {0} iliyopita', other: 'siku {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya siku {0}')),
    week: TimeAgoRelativeUnitLabels(
        current: 'wiki hii',
        past: TimeAgoPluralLabels(
            one: 'wiki {0} iliyopita', other: 'wiki {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya wiki {0}')),
    month: TimeAgoRelativeUnitLabels(
        current: 'mwezi huu',
        past: TimeAgoPluralLabels(
            one: 'mwezi {0} uliopita', other: 'miezi {0} iliyopita'),
        future: TimeAgoPluralLabels(
            one: 'baada ya mwezi {0}', other: 'baada ya miezi {0}')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'robo hii ya mwaka',
        past: TimeAgoPluralLabels(
            one: 'robo {0} iliyopita', other: 'robo {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya robo {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: 'mwaka huu',
        past: TimeAgoPluralLabels(
            one: 'mwaka {0} uliopita', other: 'miaka {0} iliyopita'),
        future: TimeAgoPluralLabels(
            one: 'baada ya mwaka {0}', other: 'baada ya miaka {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekunde {0} zilizopita'),
    minute: TimeAgoPluralLabels.same('dakika {0} zilizopita'),
    hour: TimeAgoPluralLabels.same('saa {0} zilizopita'),
    day: TimeAgoPluralLabels.same('siku {0} zilizopita'),
    week: TimeAgoPluralLabels.same('wiki {0} zilizopita'),
    month: TimeAgoPluralLabels.same('miezi {0} iliyopita'),
    quarter: TimeAgoPluralLabels.same('robo {0} zilizopita'),
    year: TimeAgoPluralLabels.same('miaka {0} iliyopita'),
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
    second: TimeAgoRelativeUnitLabels(
        current: 'sasa hivi',
        past: TimeAgoPluralLabels(
            one: 'sekunde {0} iliyopita', other: 'sekunde {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya sekunde {0}')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'dakika hii',
        past: TimeAgoPluralLabels(
            one: 'dakika {0} iliyopita', other: 'dakika {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya dakika {0}')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'saa hii',
        past: TimeAgoPluralLabels(
            one: 'Saa {0} iliyopita', other: 'Saa {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya saa {0}')),
    day: TimeAgoRelativeUnitLabels(
        current: 'leo',
        past: TimeAgoPluralLabels(
            one: 'siku {0} iliyopita', other: 'siku {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya siku {0}')),
    week: TimeAgoRelativeUnitLabels(
        current: 'wiki hii',
        past: TimeAgoPluralLabels(
            one: 'wiki {0} iliyopita', other: 'wiki {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya wiki {0}')),
    month: TimeAgoRelativeUnitLabels(
        current: 'mwezi huu',
        past: TimeAgoPluralLabels(
            one: 'mwezi {0} uliopita', other: 'miezi {0} iliyopita'),
        future: TimeAgoPluralLabels(
            one: 'baada ya mwezi {0}', other: 'baada ya miezi {0}')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'robo hii ya mwaka',
        past: TimeAgoPluralLabels(
            one: 'robo {0} iliyopita', other: 'robo {0} zilizopita'),
        future: TimeAgoPluralLabels.same('baada ya robo {0}')),
    year: TimeAgoRelativeUnitLabels(
        current: 'mwaka huu',
        past: TimeAgoPluralLabels(
            one: 'mwaka {0} uliopita', other: 'miaka {0} iliyopita'),
        future: TimeAgoPluralLabels(
            one: 'baada ya mwaka {0}', other: 'baada ya miaka {0}')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('sekunde {0} zilizopita'),
    minute: TimeAgoPluralLabels.same('dakika {0} zilizopita'),
    hour: TimeAgoPluralLabels.same('Saa {0} zilizopita'),
    day: TimeAgoPluralLabels.same('siku {0} zilizopita'),
    week: TimeAgoPluralLabels.same('wiki {0} zilizopita'),
    month: TimeAgoPluralLabels.same('miezi {0} iliyopita'),
    quarter: TimeAgoPluralLabels.same('robo {0} zilizopita'),
    year: TimeAgoPluralLabels.same('miaka {0} iliyopita'),
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
