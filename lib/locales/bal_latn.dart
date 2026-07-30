import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'bal', scriptCode: 'Latn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'zi',
    today: 'maróchi',
    tomorrow: 'bándá',
    dateTime: '{1} {0}',
    relativeDateTime: '{1} {0}',
  ),
  now: TimeAgoNowLabels(
    past: '1 sekendhá pésar',
    current: 'annun',
    future: 'sekendhá',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'bal_Latn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'annun',
        past: TimeAgoPluralLabels.same('{0} sekendhá pésar'),
        future:
            TimeAgoPluralLabels(one: 'sekendhá', other: '{0} sekendhá rand')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'é damán',
        past: TimeAgoPluralLabels.same('{0} meletthá pésar'),
        future:
            TimeAgoPluralLabels(one: 'meletthéá', other: '{0} meletthá rand')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'É sáhat',
        past: TimeAgoPluralLabels.same('{0} ganthahá pésar'),
        future:
            TimeAgoPluralLabels(one: 'Ganthahéá', other: '{0} ganthahá rand')),
    day: TimeAgoRelativeUnitLabels(
        current: 'maróchi',
        past: TimeAgoPluralLabels.same('{0} róchá pésar'),
        future: TimeAgoPluralLabels(one: '{0} róchá', other: '{0} róchá rand')),
    week: TimeAgoRelativeUnitLabels(
        current: 'é haptag',
        past: TimeAgoPluralLabels(
            one: 'gwastagén haptag', other: 'gwastagén {0} haptag'),
        future: TimeAgoPluralLabels(
            one: 'démay haptag', other: 'démay {0} haptag')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'É máh', past: '{0} máhá pésar', future: '{0} máhá'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'Sálay é chárek',
        past: TimeAgoPluralLabels(
            one: 'Sálay {0} cháreká pésar', other: 'Sálay {0} chárká pésar'),
        future: TimeAgoPluralLabels.same('Áókén {0} chárek')),
    year: TimeAgoRelativeUnitLabels(
        current: 'Embarán',
        past: TimeAgoPluralLabels(
            one: 'Gwastagén {0} sál', other: '{0} sálá pésar'),
        future:
            TimeAgoPluralLabels(one: 'Áókén {0} sál', other: 'Áókén {0} sálá')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekendhá', other: '{0} sekendhá'),
    minute: TimeAgoPluralLabels(one: '{0} meletthá', other: '{0} meletthá'),
    hour: TimeAgoPluralLabels(one: '{0} ganthahá', other: '{0} ganthahá'),
    day: TimeAgoPluralLabels(one: '{0} róchá', other: '{0} róchá'),
    week: TimeAgoPluralLabels(one: 'haptag', other: '{0} haptag'),
    month: TimeAgoPluralLabels.same('{0} máhá'),
    quarter: TimeAgoPluralLabels(one: '{0} chárek', other: '{0} chár'),
    year: TimeAgoPluralLabels(one: '{0} sál', other: '{0} sálá'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} pésar',
    future: '{0} rand',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'annun',
        past: TimeAgoPluralLabels.same('{0} sekendhá pésar'),
        future:
            TimeAgoPluralLabels(one: 'sekendhá', other: '{0} sekendhá rand')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'é damán',
        past: TimeAgoPluralLabels.same('{0} meletthá pésar'),
        future:
            TimeAgoPluralLabels(one: 'meletthéá', other: '{0} meletthá rand')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'É sáhat',
        past: TimeAgoPluralLabels.same('{0} ganthahá pésar'),
        future:
            TimeAgoPluralLabels(one: 'Ganthahéá', other: '{0} ganthahá rand')),
    day: TimeAgoRelativeUnitLabels(
        current: 'maróchi',
        past: TimeAgoPluralLabels.same('{0} róchá pésar'),
        future: TimeAgoPluralLabels(one: '{0} róchá', other: '{0} róchá rand')),
    week: TimeAgoRelativeUnitLabels(
        current: 'é haptag',
        past: TimeAgoPluralLabels(
            one: 'gwastagén haptag', other: 'gwastagén {0} haptag'),
        future: TimeAgoPluralLabels(
            one: 'démay haptag', other: 'démay {0} haptag')),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'É máh', past: '{0} máhá pésar', future: '{0} máhá'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'Sálay é chárek',
        past: TimeAgoPluralLabels(
            one: 'Sálay {0} cháreká pésar', other: 'Sálay {0} chárká pésar'),
        future: TimeAgoPluralLabels.same('Áókén {0} chárek')),
    year: TimeAgoRelativeUnitLabels(
        current: 'Embarán',
        past: TimeAgoPluralLabels(
            one: 'Gwastagén {0} sál', other: '{0} sálá pésar'),
        future:
            TimeAgoPluralLabels(one: 'Áókén {0} sál', other: 'Áókén {0} sálá')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} sekendhá', other: '{0} sekendhá'),
    minute: TimeAgoPluralLabels(one: '{0} meletthá', other: '{0} meletthá'),
    hour: TimeAgoPluralLabels(one: '{0} ganthahá', other: '{0} ganthahá'),
    day: TimeAgoPluralLabels(one: '{0} róchá', other: '{0} róchá'),
    week: TimeAgoPluralLabels(one: 'haptag', other: '{0} haptag'),
    month: TimeAgoPluralLabels.same('{0} máhá'),
    quarter: TimeAgoPluralLabels(one: '{0} chárek', other: '{0} chár'),
    year: TimeAgoPluralLabels(one: '{0} sál', other: '{0} sálá'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} pésar',
    future: '{0} rand',
  ),
);
