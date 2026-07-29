import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ku'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'berî 1 saniyeyê',
    current: 'niha',
    future: 'piştî 1 saniyeyê',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ku';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'niha',
        past: TimeAgoPluralLabels(
            one: 'berî {0} saniyeyê', other: 'berî {0} saniyeyan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} saniyeyê', other: 'piştî {0} saniyeyan')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ev deqîqe',
        past: TimeAgoPluralLabels(
            one: 'berî {0} deqîqeyê', other: 'berî {0} deqîqeyan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} deqîqeyê', other: 'piştî {0} deqîqeyan')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ev saet',
        past: TimeAgoPluralLabels(
            one: 'berî {0} saetê', other: 'berî {0} saetan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} saetê', other: 'piştî {0} saetan')),
    day: TimeAgoRelativeUnitLabels(
        current: 'îro',
        past:
            TimeAgoPluralLabels(one: 'berî {0} rojê', other: 'berî {0} rojan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} rojê', other: 'piştî {0} rojan')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ev hefte',
        past: TimeAgoPluralLabels(
            one: 'berî {0} hefteyê', other: 'berî {0} hefteyan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} hefteyê', other: 'piştî {0} hefteyan')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ev meh',
        past:
            TimeAgoPluralLabels(one: 'berî {0} mehê', other: 'berî {0} mehan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} mehê', other: 'piştî {0} mehan')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ev çaryek',
        past: TimeAgoPluralLabels(
            one: 'berî {0} çaryekê', other: 'berî {0} çaryekan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} çaryekê', other: 'piştî {0} çaryekan')),
    year: TimeAgoRelativeUnitLabels(
        current: 'îsal',
        past:
            TimeAgoPluralLabels(one: 'berî {0} salê', other: 'berî {0} salan'),
        future: TimeAgoPluralLabels(
            one: 'di {0} salê de', other: 'di {0} salan de')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} saniyeyê', other: '{0} saniyeyan'),
    minute: TimeAgoPluralLabels(one: '{0} deqîqeyê', other: '{0} deqîqeyan'),
    hour: TimeAgoPluralLabels(one: '{0} saetê', other: '{0} saetan'),
    day: TimeAgoPluralLabels(one: '{0} rojê', other: '{0} rojan'),
    week: TimeAgoPluralLabels(one: '{0} hefteyê', other: '{0} hefteyan'),
    month: TimeAgoPluralLabels(one: '{0} mehê', other: '{0} mehan'),
    quarter: TimeAgoPluralLabels(one: '{0} çaryekê', other: '{0} çaryekan'),
    year: TimeAgoPluralLabels(one: '{0} salê', other: '{0} salan'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'berî {0}',
    future: 'piştî {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'niha', past: 'berî {0} sn.', future: 'piştî {0} sn.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ev deqîqe', past: 'berî {0} dq.', future: 'piştî {0} dq.'),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ev saet',
        past: TimeAgoPluralLabels(
            one: 'berî {0} saetê', other: 'berî {0} saetan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} saetê', other: 'piştî {0} saetan')),
    day: TimeAgoRelativeUnitLabels(
        current: 'îro',
        past:
            TimeAgoPluralLabels(one: 'berî {0} rojê', other: 'berî {0} rojan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} rojê', other: 'piştî {0} rojan')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ev hft.',
        past: TimeAgoPluralLabels(
            one: 'berî {0} hefteyê', other: 'berî {0} hefteyan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} hefteyê', other: 'piştî {0} hefteyan')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ev meh',
        past:
            TimeAgoPluralLabels(one: 'berî {0} mehê', other: 'berî {0} mehan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} mehê', other: 'piştî {0} mehan')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ev çaryek',
        past: TimeAgoPluralLabels(
            one: 'berî {0} çaryekê', other: 'berî {0} çaryekan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} çaryekê', other: 'piştî {0} çaryekan')),
    year: TimeAgoRelativeUnitLabels(
        current: 'îsal',
        past:
            TimeAgoPluralLabels(one: 'berî {0} salê', other: 'berî {0} salan'),
        future: TimeAgoPluralLabels(
            one: 'piştî {0} salê', other: 'piştî {0} salan')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sn.'),
    minute: TimeAgoPluralLabels.same('{0} dq.'),
    hour: TimeAgoPluralLabels(one: '{0} saetê', other: '{0} saetan'),
    day: TimeAgoPluralLabels(one: '{0} rojê', other: '{0} rojan'),
    week: TimeAgoPluralLabels(one: '{0} hefteyê', other: '{0} hefteyan'),
    month: TimeAgoPluralLabels(one: '{0} mehê', other: '{0} mehan'),
    quarter: TimeAgoPluralLabels(one: '{0} çaryekê', other: '{0} çaryekan'),
    year: TimeAgoPluralLabels(one: '{0} salê', other: '{0} salan'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'berî {0}',
    future: 'piştî {0}',
  ),
);
