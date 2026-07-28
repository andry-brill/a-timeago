import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/fr.dart' as fr;
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'fr', countryCode: 'CA'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: 'il y a 1 seconde',
    current: 'maintenant',
    future: 'dans 1 seconde',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'fr_CA';

/// Ten-year unit shared with the reviewed French CLDR labels.
const TimeAgoStep decade = fr.decade;

/// Hundred-year unit shared with the reviewed French CLDR labels.
const TimeAgoStep century = fr.century;

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'maintenant',
        past: TimeAgoPluralLabels(
            one: 'il y a {0} seconde', other: 'il y a {0} secondes'),
        future: TimeAgoPluralLabels(
            one: 'dans {0} seconde', other: 'dans {0} secondes')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'cette minute-ci',
        past: TimeAgoPluralLabels(
            one: 'il y a {0} minute', other: 'il y a {0} minutes'),
        future: TimeAgoPluralLabels(
            one: 'dans {0} minute', other: 'dans {0} minutes')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'cette heure-ci',
        past: TimeAgoPluralLabels(
            one: 'il y a {0} heure', other: 'il y a {0} heures'),
        future: TimeAgoPluralLabels(
            one: 'dans {0} heure', other: 'dans {0} heures')),
    day: TimeAgoRelativeUnitLabels(
        current: 'aujourd’hui',
        past: TimeAgoPluralLabels(
            one: 'il y a {0} jour', other: 'il y a {0} jours'),
        future:
            TimeAgoPluralLabels(one: 'dans {0} jour', other: 'dans {0} jours')),
    week: TimeAgoRelativeUnitLabels(
        current: 'cette semaine',
        past: TimeAgoPluralLabels(
            one: 'il y a {0} semaine', other: 'il y a {0} semaines'),
        future: TimeAgoPluralLabels(
            one: 'dans {0} semaine', other: 'dans {0} semaines')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ce mois-ci',
        past: 'il y a {0} mois',
        future: 'dans {0} mois'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ce trimestre-ci',
        past: TimeAgoPluralLabels(
            one: 'il y a {0} trimestre', other: 'il y a {0} trimestres'),
        future: TimeAgoPluralLabels(
            one: 'dans {0} trimestre', other: 'dans {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'cette année',
        past:
            TimeAgoPluralLabels(one: 'il y a {0} an', other: 'il y a {0} ans'),
        future: TimeAgoPluralLabels(one: 'dans {0} an', other: 'dans {0} ans')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} seconde', other: '{0} secondes'),
    minute: TimeAgoPluralLabels(one: '{0} minute', other: '{0} minutes'),
    hour: TimeAgoPluralLabels(one: '{0} heure', other: '{0} heures'),
    day: TimeAgoPluralLabels(one: '{0} jour', other: '{0} jours'),
    week: TimeAgoPluralLabels(one: '{0} semaine', other: '{0} semaines'),
    month: TimeAgoPluralLabels.same('{0} mois'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trimestres'),
    year: TimeAgoPluralLabels(one: '{0} an', other: '{0} ans'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'il y a {0}',
    future: 'dans {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'maintenant', past: 'il y a {0} s', future: 'dans {0} s'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'cette minute-ci',
        past: 'il y a {0} min',
        future: 'dans {0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'cette heure-ci', past: 'il y a {0} h', future: 'dans {0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'aujourd’hui', past: 'il y a {0} j', future: 'dans {0} j'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'cette semaine',
        past: 'il y a {0} sem.',
        future: 'dans {0} sem.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ce mois-ci', past: 'il y a {0} m.', future: 'dans {0} m.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ce trim.',
        past: 'il y a {0} trim.',
        future: 'dans {0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'cette année', past: 'il y a {0} a', future: 'dans {0} a'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} j'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels.same('{0} m.'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} a'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: 'il y a {0}',
    future: 'dans {0}',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'maintenant',
        past: TimeAgoPluralLabels.same('-{0} s'),
        future: TimeAgoPluralLabels(one: '+ {0} s', other: '+{0} s')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'cette minute-ci', past: '-{0} min', future: '+{0} min'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'cette heure-ci', past: '-{0} h', future: '+{0} h'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'aujourd’hui', past: '-{0} j', future: '+{0} j'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'cette semaine', past: '-{0} sem.', future: '+{0} sem.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'ce mois-ci', past: '-{0} m.', future: '+{0} m.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'ce trim.', past: '-{0} trim.', future: '+{0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'cette année', past: '-{0} a', future: '+{0} a'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} s', other: '{0} s'),
    minute: TimeAgoPluralLabels.same('{0} min'),
    hour: TimeAgoPluralLabels.same('{0} h'),
    day: TimeAgoPluralLabels.same('{0} j'),
    week: TimeAgoPluralLabels.same('{0} sem.'),
    month: TimeAgoPluralLabels.same('{0} m.'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} a'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '-{0}',
    future: '+{0}',
  ),
);
