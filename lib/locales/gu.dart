import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'gu'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 સેકંડ પહેલાં',
    current: 'હમણાં',
    future: '1 સેકંડમાં',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'gu';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'હમણાં', past: '{0} સેકંડ પહેલાં', future: '{0} સેકંડમાં'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'આ મિનિટ', past: '{0} મિનિટ પહેલાં', future: '{0} મિનિટમાં'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'આ કલાક', past: '{0} કલાક પહેલાં', future: '{0} કલાકમાં'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'આજે', past: '{0} દિવસ પહેલાં', future: '{0} દિવસમાં'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'આ અઠવાડિયે',
        past: '{0} અઠવાડિયા પહેલાં',
        future: '{0} અઠવાડિયામાં'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'આ મહિને', past: '{0} મહિના પહેલાં', future: '{0} મહિનામાં'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'આ ત્રિમાસિક',
        past: '{0} ત્રિમાસિક પહેલાં',
        future: '{0} ત્રિમાસિકમાં'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'આ વર્ષે', past: '{0} વર્ષ પહેલાં', future: '{0} વર્ષમાં'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} સેકંડ'),
    minute: TimeAgoPluralLabels.same('{0} મિનિટ'),
    hour: TimeAgoPluralLabels.same('{0} કલાક'),
    day: TimeAgoPluralLabels.same('{0} દિવસ'),
    week: TimeAgoPluralLabels.same('{0} અઠવાડિયા'),
    month: TimeAgoPluralLabels.same('{0} મહિના'),
    quarter: TimeAgoPluralLabels.same('{0} ત્રિમાસિક'),
    year: TimeAgoPluralLabels.same('{0} વર્ષ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} પહેલાં',
    future: '{0}માં',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'હમણાં', past: '{0} સેકંડ પહેલાં', future: '{0} સેકંડમાં'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'આ મિનિટ', past: '{0} મિનિટ પહેલાં', future: '{0} મિનિટમાં'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'આ કલાક', past: '{0} કલાક પહેલાં', future: '{0} કલાકમાં'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'આજે', past: '{0} દિવસ પહેલાં', future: '{0} દિવસમાં'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'આ અઠવાડિયે', past: '{0} અઠ. પહેલાં', future: '{0} અઠ. માં'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'આ મહિને', past: '{0} મહિના પહેલાં', future: '{0} મહિનામાં'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'આ ત્રિમાસિક',
        past: '{0} ત્રિમાસિક પહેલાં',
        future: '{0} ત્રિમાસિકમાં'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'આ વર્ષે', past: '{0} વર્ષ પહેલાં', future: '{0} વર્ષમાં'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} સેકંડ'),
    minute: TimeAgoPluralLabels.same('{0} મિનિટ'),
    hour: TimeAgoPluralLabels.same('{0} કલાક'),
    day: TimeAgoPluralLabels.same('{0} દિવસ'),
    week: TimeAgoPluralLabels.same('{0} અઠ.'),
    month: TimeAgoPluralLabels.same('{0} મહિના'),
    quarter: TimeAgoPluralLabels.same('{0} ત્રિમાસિક'),
    year: TimeAgoPluralLabels.same('{0} વર્ષ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} પહેલાં',
    future: '{0}માં',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'હમણાં', past: '{0} સેકંડ પહેલાં', future: '{0} સેકંડમાં'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'આ મિનિટ', past: '{0} મિનિટ પહેલાં', future: '{0} મિનિટમાં'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'આ કલાક', past: '{0} કલાક પહેલાં', future: '{0} કલાકમાં'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'આજે', past: '{0} દિવસ પહેલાં', future: '{0} દિવસમાં'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'આ અઠવાડિયે', past: '{0} અઠ. પહેલાં', future: '{0} અઠ. માં'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'આ મહિને', past: '{0} મહિના પહેલાં', future: '{0} મહિનામાં'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'આ ત્રિમાસિક',
        past: '{0} ત્રિમાસિક પહેલાં',
        future: '{0} ત્રિમાસિકમાં'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'આ વર્ષે', past: '{0} વર્ષ પહેલાં', future: '{0} વર્ષમાં'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} સેકંડ'),
    minute: TimeAgoPluralLabels.same('{0} મિનિટ'),
    hour: TimeAgoPluralLabels.same('{0} કલાક'),
    day: TimeAgoPluralLabels.same('{0} દિવસ'),
    week: TimeAgoPluralLabels.same('{0} અઠ.'),
    month: TimeAgoPluralLabels.same('{0} મહિના'),
    quarter: TimeAgoPluralLabels.same('{0} ત્રિમાસિક'),
    year: TimeAgoPluralLabels.same('{0} વર્ષ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} પહેલાં',
    future: '{0}માં',
  ),
);
