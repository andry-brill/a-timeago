import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'shn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 ၸႅၵ်ၵၢၼ်ႉပူၼ်ႉမႃး',
    current: 'ယၢမ်းလဵဝ်',
    future: 'ၼႂ်းၶၢဝ်းတၢင်း 1 ၸႅၵ်ႉၵၢၼ်ႉ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'shn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ယၢမ်းလဵဝ်',
        past: '{0} ၸႅၵ်ၵၢၼ်ႉပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ၸႅၵ်ႉၵၢၼ်ႉ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'မိၼိတ်ႉ',
        past: '{0} မိၼိတ်ႉပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} မိၼိတ်ႉ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ၸူဝ်ႈမူင်းၼႆႉ',
        past: '{0} ၸူဝ်ႈမူင်းပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ၸူဝ်ႈမူင်း'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'မိူဝ်ႈၼႆႉ',
        past: '{0} ဝၼ်းပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ဝၼ်း'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ဝူင်ႈၼႆႉ',
        past: '{0} ဝူင်ႈပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ဝူင်ႈ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'လိူၼ်ၼႆႉ',
        past: '{0} လိူၼ်ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} လိူၼ်'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'သၢမ်လိူၼ်ႁွမ်ႈၼႆႉ',
        past: '{0} သၢမ်လိူၼ်ႁွပ်ႈ ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} သၢမ်လိူၼ်ႁွပ်ႈ'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ပီၼႆႉ',
        past: '{0} ပီ ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ပီ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ၸႅၵ်'),
    minute: TimeAgoPluralLabels.same('{0} မိၼိတ်ႉ'),
    hour: TimeAgoPluralLabels.same('{0} ၸူဝ်ႈမူင်း'),
    day: TimeAgoPluralLabels.same('{0} ဝၼ်း'),
    week: TimeAgoPluralLabels.same('{0} ဝူင်ႈ'),
    month: TimeAgoPluralLabels.same('{0} လိူၼ်'),
    quarter: TimeAgoPluralLabels.same('{0} သၢမ်လိူၼ်ႁွပ်ႈ'),
    year: TimeAgoPluralLabels.same('{0} ပီ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ၵၢၼ်ႉပူၼ်ႉမႃး',
    future: 'ၼႂ်းၶၢဝ်းတၢင်း {0}ႉၵၢၼ်ႉ',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ယၢမ်းလဵဝ်',
        past: '{0} ၸႅၵ်ၵၢၼ်ႉပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ၸႅၵ်ႉၵၢၼ်ႉ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'မိၼိတ်ႉ',
        past: '{0} မိၼိတ်ႉပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} မိၼိတ်ႉ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ၸူဝ်ႈမူင်းၼႆႉ',
        past: '{0} ၸူဝ်ႈမူင်းပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ၸူဝ်ႈမူင်း'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'မိူဝ်ႈၼႆႉ',
        past: '{0} ဝၼ်းပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ဝၼ်း'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ဝူင်ႈၼႆႉ',
        past: '{0} ဝူင်ႈပူၼ်မႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ဝူင်ႈ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'လိူၼ်ၼႆႉ',
        past: '{0} လိူၼ်ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} လိူၼ်'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'သလႁ. ၼႆႉ',
        past: '{0} သလႁ. ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} သလႁ.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ပီၼႆႉ',
        past: '{0} ပီ ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ပီ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ၸႅၵ်'),
    minute: TimeAgoPluralLabels.same('{0} မိၼိတ်ႉ'),
    hour: TimeAgoPluralLabels.same('{0} ၸူဝ်ႈမူင်း'),
    day: TimeAgoPluralLabels.same('{0} ဝၼ်း'),
    week: TimeAgoPluralLabels.same('{0} ဝူင်ႈ'),
    month: TimeAgoPluralLabels.same('{0} လိူၼ်'),
    quarter: TimeAgoPluralLabels.same('{0} သလႁ.'),
    year: TimeAgoPluralLabels.same('{0} ပီ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ၵၢၼ်ႉပူၼ်ႉမႃး',
    future: 'ၼႂ်းၶၢဝ်းတၢင်း {0}ႉၵၢၼ်ႉ',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'ယၢမ်းလဵဝ်',
        past: '{0} ၸႅၵ်ၵၢၼ်ႉပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ၸႅၵ်ႉၵၢၼ်ႉ'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'မိၼိတ်ႉ',
        past: '{0} မိၼိတ်ႉပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} မိၼိတ်ႉ'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'ၸူဝ်ႈမူင်းၼႆႉ',
        past: '{0} ၸူဝ်ႈမူင်းပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ၸူဝ်ႈမူင်း'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'မိူဝ်ႈၼႆႉ',
        past: '{0} ဝၼ်းပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ဝၼ်း'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'ဝူင်ႈၼႆႉ',
        past: '{0} ဝူင်ႈပူၼ်မႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ဝူင်ႈ'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'လိူၼ်ၼႆႉ',
        past: '{0} လိူၼ်ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} လိူၼ်'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'သၢမ်လိူၼ်ႁွပ်ႈၼႆႉ',
        past: '{0} သလႁ. ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} သလႁ.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'ပီၼႆႉ',
        past: '{0} ပီ ပူၼ်ႉမႃး',
        future: 'ၼႂ်းၶၢဝ်းတၢင်း {0} ပီ'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} ၸႅၵ်'),
    minute: TimeAgoPluralLabels.same('{0} မိၼိတ်ႉ'),
    hour: TimeAgoPluralLabels.same('{0} ၸူဝ်ႈမူင်း'),
    day: TimeAgoPluralLabels.same('{0} ဝၼ်း'),
    week: TimeAgoPluralLabels.same('{0} ဝူင်ႈ'),
    month: TimeAgoPluralLabels.same('{0} လိူၼ်'),
    quarter: TimeAgoPluralLabels.same('{0} သလႁ.'),
    year: TimeAgoPluralLabels.same('{0} ပီ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ၵၢၼ်ႉပူၼ်ႉမႃး',
    future: 'ၼႂ်းၶၢဝ်းတၢင်း {0}ႉၵၢၼ်ႉ',
  ),
);
