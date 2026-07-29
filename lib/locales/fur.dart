import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'fur'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 secont indaûr',
    current: 'now',
    future: 'ca di 1 secont',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'fur';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: '{0} secont indaûr', other: '{0} seconts indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} secont', other: 'ca di {0} seconts')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: '{0} minût indaûr', other: '{0} minûts indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} minût', other: 'ca di {0} minûts')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: '{0} ore indaûr', other: '{0} oris indaûr'),
        future:
            TimeAgoPluralLabels(one: 'ca di {0} ore', other: 'ca di {0} oris')),
    day: TimeAgoRelativeUnitLabels(
        current: 'vuê',
        past: TimeAgoPluralLabels(
            one: '{0} zornade indaûr', other: '{0} zornadis indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} zornade', other: 'ca di {0} zornadis')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(
            one: '{0} setemane indaûr', other: '{0} setemanis indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} setemane', other: 'ca di {0} setemanis')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: '{0} mês indaûr', future: 'ca di {0} mês'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past:
            TimeAgoPluralLabels(one: '{0} an indaûr', other: '{0} agns indaûr'),
        future:
            TimeAgoPluralLabels(one: 'ca di {0} an', other: 'ca di {0} agns')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} secont', other: '{0} seconts'),
    minute: TimeAgoPluralLabels(one: '{0} minût', other: '{0} minûts'),
    hour: TimeAgoPluralLabels(one: '{0} ore', other: '{0} oris'),
    day: TimeAgoPluralLabels(one: '{0} zornade', other: '{0} zornadis'),
    week: TimeAgoPluralLabels(one: '{0} setemane', other: '{0} setemanis'),
    month: TimeAgoPluralLabels.same('{0} mês'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} an', other: '{0} agns'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} indaûr',
    future: 'ca di {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'now',
        past: TimeAgoPluralLabels(
            one: '{0} secont indaûr', other: '{0} seconts indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} secont', other: 'ca di {0} seconts')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'this minute',
        past: TimeAgoPluralLabels(
            one: '{0} minût indaûr', other: '{0} minûts indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} minût', other: 'ca di {0} minûts')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'this hour',
        past: TimeAgoPluralLabels(
            one: '{0} ore indaûr', other: '{0} oris indaûr'),
        future:
            TimeAgoPluralLabels(one: 'ca di {0} ore', other: 'ca di {0} oris')),
    day: TimeAgoRelativeUnitLabels(
        current: 'vuê',
        past: TimeAgoPluralLabels(
            one: '{0} zornade indaûr', other: '{0} zornadis indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} zornade', other: 'ca di {0} zornadis')),
    week: TimeAgoRelativeUnitLabels(
        current: 'this week',
        past: TimeAgoPluralLabels(
            one: '{0} setemane indaûr', other: '{0} setemanis indaûr'),
        future: TimeAgoPluralLabels(
            one: 'ca di {0} setemane', other: 'ca di {0} setemanis')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'this month', past: '{0} mês indaûr', future: 'ca di {0} mês'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'this quarter', past: '-{0} Q', future: '+{0} Q'),
    year: TimeAgoRelativeUnitLabels(
        current: 'this year',
        past:
            TimeAgoPluralLabels(one: '{0} an indaûr', other: '{0} agns indaûr'),
        future:
            TimeAgoPluralLabels(one: 'ca di {0} an', other: 'ca di {0} agns')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} secont', other: '{0} seconts'),
    minute: TimeAgoPluralLabels(one: '{0} minût', other: '{0} minûts'),
    hour: TimeAgoPluralLabels(one: '{0} ore', other: '{0} oris'),
    day: TimeAgoPluralLabels(one: '{0} zornade', other: '{0} zornadis'),
    week: TimeAgoPluralLabels(one: '{0} setemane', other: '{0} setemanis'),
    month: TimeAgoPluralLabels.same('{0} mês'),
    quarter: TimeAgoPluralLabels.same('{0} Q'),
    year: TimeAgoPluralLabels(one: '{0} an', other: '{0} agns'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} indaûr',
    future: 'ca di {0}',
  ),
);
