import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ia'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 secunda retro',
    current: 'ora',
    future: 'in 1 secunda',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ia';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ora',
        past: TimeAgoPluralLabels(
            one: '{0} secunda retro', other: '{0} secundas retro'),
        future: TimeAgoPluralLabels(
            one: 'in {0} secunda', other: 'in {0} secundas')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'iste minuta',
        past: TimeAgoPluralLabels(
            one: '{0} minuta retro', other: '{0} minutas retro'),
        future:
            TimeAgoPluralLabels(one: 'in {0} minuta', other: 'in {0} minutas')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'iste hora',
        past: TimeAgoPluralLabels(
            one: '{0} hora retro', other: '{0} horas retro'),
        future: TimeAgoPluralLabels(one: 'in {0} hora', other: 'in {0} horas')),
    day: TimeAgoRelativeUnitLabels(
        current: 'hodie',
        past:
            TimeAgoPluralLabels(one: '{0} die retro', other: '{0} dies retro'),
        future: TimeAgoPluralLabels(one: 'in {0} die', other: 'in {0} dies')),
    week: TimeAgoRelativeUnitLabels(
        current: 'iste septimana',
        past: TimeAgoPluralLabels(
            one: '{0} septimana retro', other: '{0} septimanas retro'),
        future: TimeAgoPluralLabels(
            one: 'in {0} septimana', other: 'in {0} septimanas')),
    month: TimeAgoRelativeUnitLabels(
        current: 'iste mense',
        past: TimeAgoPluralLabels(
            one: '{0} mense retro', other: '{0} menses retro'),
        future:
            TimeAgoPluralLabels(one: 'in {0} mense', other: 'in {0} menses')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'iste trimestre',
        past: TimeAgoPluralLabels(
            one: '{0} trimestre retro', other: '{0} trimestres retro'),
        future: TimeAgoPluralLabels(
            one: 'in {0} trimestre', other: 'in {0} trimestres')),
    year: TimeAgoRelativeUnitLabels(
        current: 'iste anno',
        past: TimeAgoPluralLabels(
            one: '{0} anno retro', other: '{0} annos retro'),
        future: TimeAgoPluralLabels(one: 'in {0} anno', other: 'in {0} annos')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} secunda', other: '{0} secundas'),
    minute: TimeAgoPluralLabels(one: '{0} minuta', other: '{0} minutas'),
    hour: TimeAgoPluralLabels(one: '{0} hora', other: '{0} horas'),
    day: TimeAgoPluralLabels(one: '{0} die', other: '{0} dies'),
    week: TimeAgoPluralLabels(one: '{0} septimana', other: '{0} septimanas'),
    month: TimeAgoPluralLabels(one: '{0} mense', other: '{0} menses'),
    quarter: TimeAgoPluralLabels(one: '{0} trimestre', other: '{0} trimestres'),
    year: TimeAgoPluralLabels(one: '{0} anno', other: '{0} annos'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} retro',
    future: 'in {0}',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ora', past: '{0} sec. retro', future: 'in {0} sec.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'iste minuta', past: '{0} min. retro', future: 'in {0} min.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'iste hora', past: '{0} hr. retro', future: 'in {0} hr.'),
    day: TimeAgoRelativeUnitLabels(
        current: 'hodie',
        past:
            TimeAgoPluralLabels(one: '{0} die retro', other: '{0} dies retro'),
        future: TimeAgoPluralLabels(one: 'in {0} die', other: 'in {0} dies')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'iste sept.', past: '{0} sept. retro', future: 'in {0} sept.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'iste mns.', past: '{0} mns. retro', future: 'in {0} mns.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'iste trimestre',
        past: '{0} trim. retro',
        future: 'in {0} trim.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'iste an.', past: '{0} an. retro', future: 'in {0} an.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sec.'),
    minute: TimeAgoPluralLabels.same('{0} min.'),
    hour: TimeAgoPluralLabels.same('{0} hr.'),
    day: TimeAgoPluralLabels(one: '{0} die', other: '{0} dies'),
    week: TimeAgoPluralLabels.same('{0} sept.'),
    month: TimeAgoPluralLabels.same('{0} mns.'),
    quarter: TimeAgoPluralLabels.same('{0} trim.'),
    year: TimeAgoPluralLabels.same('{0} an.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} retro',
    future: 'in {0}',
  ),
);
