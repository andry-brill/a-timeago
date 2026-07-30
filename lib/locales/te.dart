import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'te'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  calendar: TimeAgoCalendarLabels(
    yesterday: 'నిన్న',
    today: 'ఈ రోజు',
    tomorrow: 'రేపు',
    dateTime: '{1} {0}కి',
    relativeDateTime: '{1} {0}కి',
  ),
  now: TimeAgoNowLabels(
    past: '1 సెకను క్రితం',
    current: 'ప్రస్తుతం',
    future: '1 సెకనులో',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'te';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ప్రస్తుతం',
        past: TimeAgoPluralLabels(
            one: '{0} సెకను క్రితం', other: '{0} సెకన్ల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} సెకనులో', other: '{0} సెకన్లలో')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ఈ నిమిషం',
        past: TimeAgoPluralLabels(
            one: '{0} నిమిషం క్రితం', other: '{0} నిమిషాల క్రితం'),
        future:
            TimeAgoPluralLabels(one: '{0} నిమిషంలో', other: '{0} నిమిషాల్లో')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ఈ గంట',
        past: TimeAgoPluralLabels(
            one: '{0} గంట క్రితం', other: '{0} గంటల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} గంటలో', other: '{0} గంటల్లో')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ఈ రోజు',
        past: TimeAgoPluralLabels(
            one: '{0} రోజు క్రితం', other: '{0} రోజుల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} రోజులో', other: '{0} రోజుల్లో')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ఈ వారం',
        past: TimeAgoPluralLabels(
            one: '{0} వారం క్రితం', other: '{0} వారాల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} వారంలో', other: '{0} వారాల్లో')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ఈ నెల',
        past: TimeAgoPluralLabels(
            one: '{0} నెల క్రితం', other: '{0} నెలల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} నెలలో', other: '{0} నెలల్లో')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ఈ త్రైమాసికం',
        past: TimeAgoPluralLabels(
            one: '{0} త్రైమాసికం క్రితం', other: '{0} త్రైమాసికాల క్రితం'),
        future: TimeAgoPluralLabels(
            one: '{0} త్రైమాసికంలో', other: '{0} త్రైమాసికాల్లో')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ఈ సంవత్సరం',
        past: TimeAgoPluralLabels(
            one: '{0} సంవత్సరం క్రితం', other: '{0} సంవత్సరాల క్రితం'),
        future: TimeAgoPluralLabels(
            one: '{0} సంవత్సరంలో', other: '{0} సంవత్సరాల్లో')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} సెకను', other: '{0} సెకన్ల'),
    minute: TimeAgoPluralLabels(one: '{0} నిమిషం', other: '{0} నిమిషాల'),
    hour: TimeAgoPluralLabels(one: '{0} గంట', other: '{0} గంటల'),
    day: TimeAgoPluralLabels(one: '{0} రోజు', other: '{0} రోజుల'),
    week: TimeAgoPluralLabels(one: '{0} వారం', other: '{0} వారాల'),
    month: TimeAgoPluralLabels(one: '{0} నెల', other: '{0} నెలల'),
    quarter:
        TimeAgoPluralLabels(one: '{0} త్రైమాసికం', other: '{0} త్రైమాసికాల'),
    year: TimeAgoPluralLabels(one: '{0} సంవత్సరం', other: '{0} సంవత్సరాల'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} క్రితం',
    future: '{0}లో',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ప్రస్తుతం',
        past: TimeAgoPluralLabels.same('{0} సెక. క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} సెకనులో', other: '{0} సెకన్లలో')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ఈ నిమిషం', past: '{0} నిమి. క్రితం', future: '{0} నిమి.లో'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ఈ గంట', past: '{0} గం. క్రితం', future: '{0} గం.లో'),
    day: TimeAgoRelativeUnitLabels(
        current: 'ఈ రోజు',
        past: TimeAgoPluralLabels(
            one: '{0} రోజు క్రితం', other: '{0} రోజుల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} రోజులో', other: '{0} రోజుల్లో')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ఈ వారం',
        past: TimeAgoPluralLabels(
            one: '{0} వారం క్రితం', other: '{0} వారాల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} వారంలో', other: '{0} వారాల్లో')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ఈ నెల',
        past: TimeAgoPluralLabels(
            one: '{0} నెల క్రితం', other: '{0} నెలల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} నెలలో', other: '{0} నెలల్లో')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ఈ త్రైమాసికం',
        past: TimeAgoPluralLabels.same('{0} త్రైమా. క్రితం'),
        future: TimeAgoPluralLabels(
            one: '{0} త్రైమా.లో', other: '{0} త్రైమా.ల్లో')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ఈ సంవ.',
        past: TimeAgoPluralLabels.same('{0} సం. క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} సం.లో', other: '{0} సం.ల్లో')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} సెక', other: '{0} సెక'),
    minute: TimeAgoPluralLabels.same('{0} నిమి.'),
    hour: TimeAgoPluralLabels.same('{0} గం.'),
    day: TimeAgoPluralLabels(one: '{0} రోజు', other: '{0} రోజుల'),
    week: TimeAgoPluralLabels(one: '{0} వారం', other: '{0} వారాల'),
    month: TimeAgoPluralLabels(one: '{0} నెల', other: '{0} నెలల'),
    quarter: TimeAgoPluralLabels(one: '{0} త్రైమా.', other: '{0} త్రైమా.'),
    year: TimeAgoPluralLabels(one: '{0} సం.', other: '{0} సం.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. క్రితం',
    future: '{0}న్లలో',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ప్రస్తుతం',
        past: TimeAgoPluralLabels.same('{0} సెక. క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} సెక.లో', other: '{0} సెక. లో')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'ఈ నిమిషం', past: '{0} నిమి. క్రితం', future: '{0} నిమి.లో'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ఈ గంట', past: '{0} గం. క్రితం', future: '{0} గం.లో'),
    day: TimeAgoRelativeUnitLabels(
        current: 'ఈ రోజు',
        past: TimeAgoPluralLabels(
            one: '{0} రోజు క్రితం', other: '{0} రోజుల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} రోజులో', other: '{0} రోజుల్లో')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ఈ వారం',
        past: TimeAgoPluralLabels(
            one: '{0} వారం క్రితం', other: '{0} వారాల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} వారంలో', other: '{0} వారాల్లో')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ఈ నెల',
        past: TimeAgoPluralLabels(
            one: '{0} నెల క్రితం', other: '{0} నెలల క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} నెలలో', other: '{0} నెలల్లో')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ఈ త్రైమాసికం',
        past: TimeAgoPluralLabels.same('{0} త్రైమా. క్రితం'),
        future: TimeAgoPluralLabels(
            one: '{0} త్రైమాసికంలో', other: '{0} త్రైమాసికాల్లో')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ఈ సం.',
        past: TimeAgoPluralLabels.same('{0} సం. క్రితం'),
        future: TimeAgoPluralLabels(one: '{0} సం.లో', other: '{0} సం.ల్లో')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} సెక.', other: '{0} సెక.'),
    minute: TimeAgoPluralLabels.same('{0} నిమి.'),
    hour: TimeAgoPluralLabels.same('{0} గం.'),
    day: TimeAgoPluralLabels(one: '{0} రోజు', other: '{0} రోజుల'),
    week: TimeAgoPluralLabels(one: '{0} వారం', other: '{0} వారాల'),
    month: TimeAgoPluralLabels(one: '{0} నెల', other: '{0} నెలల'),
    quarter: TimeAgoPluralLabels(one: '{0} త్రైమా', other: '{0} త్రైమా'),
    year: TimeAgoPluralLabels(one: '{0} సం.', other: '{0} సం.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} క్రితం',
    future: '{0} లో',
  ),
);
