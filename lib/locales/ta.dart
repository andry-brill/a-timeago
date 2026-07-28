import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'ta'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 விநாடிக்கு முன்',
    current: 'இப்போது',
    future: '1 விநாடியில்',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'ta';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'இப்போது',
        past: TimeAgoPluralLabels(
            one: '{0} விநாடிக்கு முன்', other: '{0} விநாடிகளுக்கு முன்'),
        future: TimeAgoPluralLabels(
            one: '{0} விநாடியில்', other: '{0} விநாடிகளில்')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'இந்த ஒரு நிமிடத்தில்',
        past: TimeAgoPluralLabels(
            one: '{0} நிமிடத்திற்கு முன்', other: '{0} நிமிடங்களுக்கு முன்'),
        future: TimeAgoPluralLabels(
            one: '{0} நிமிடத்தில்', other: '{0} நிமிடங்களில்')),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த ஒரு மணிநேரத்தில்',
        past: '{0} மணிநேரம் முன்',
        future: '{0} மணிநேரத்தில்'),
    day: TimeAgoRelativeUnitLabels(
        current: 'இன்று',
        past: TimeAgoPluralLabels(
            one: '{0} நாளுக்கு முன்', other: '{0} நாட்களுக்கு முன்'),
        future: TimeAgoPluralLabels(one: '{0} நாளில்', other: '{0} நாட்களில்')),
    week: TimeAgoRelativeUnitLabels(
        current: 'இந்த வாரம்',
        past: TimeAgoPluralLabels(
            one: '{0} வாரத்திற்கு முன்', other: '{0} வாரங்களுக்கு முன்'),
        future:
            TimeAgoPluralLabels(one: '{0} வாரத்தில்', other: '{0} வாரங்களில்')),
    month: TimeAgoRelativeUnitLabels(
        current: 'இந்த மாதம்',
        past: TimeAgoPluralLabels(
            one: '{0} மாதத்துக்கு முன்', other: '{0} மாதங்களுக்கு முன்'),
        future:
            TimeAgoPluralLabels(one: '{0} மாதத்தில்', other: '{0} மாதங்களில்')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'இந்த காலாண்டு',
        past: TimeAgoPluralLabels(
            one: '{0} காலாண்டுக்கு முன்', other: '{0} காலாண்டுகளுக்கு முன்'),
        future: TimeAgoPluralLabels(
            one: '+{0} காலாண்டில்', other: '{0} காலாண்டுகளில்')),
    year: TimeAgoRelativeUnitLabels(
        current: 'இந்த ஆண்டு',
        past: TimeAgoPluralLabels(
            one: '{0} ஆண்டிற்கு முன்', other: '{0} ஆண்டுகளுக்கு முன்'),
        future:
            TimeAgoPluralLabels(one: '{0} ஆண்டில்', other: '{0} ஆண்டுகளில்')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} விநாடி', other: '{0} விநாடிகள'),
    minute: TimeAgoPluralLabels(one: '{0} நிமிடத்தி', other: '{0} நிமிடங்கள'),
    hour: TimeAgoPluralLabels.same('{0} மணிநேர'),
    day: TimeAgoPluralLabels(one: '{0} நாள', other: '{0} நாட்கள'),
    week: TimeAgoPluralLabels(one: '{0} வாரத்தி', other: '{0} வாரங்கள'),
    month: TimeAgoPluralLabels(one: '{0} மாதத்த', other: '{0} மாதங்கள'),
    quarter: TimeAgoPluralLabels(one: '{0} காலாண்ட', other: '{0} காலாண்டுகள'),
    year: TimeAgoPluralLabels(one: '{0} ஆண்டி', other: '{0} ஆண்டுகள'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ுக்கு முன்',
    future: '{0}ில்',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'இப்போது',
        past: TimeAgoPluralLabels.same('{0} வி. முன்'),
        future: TimeAgoPluralLabels(
            one: '{0} விநாடியில்', other: '{0} விநாடிகளில்')),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த ஒரு நிமிடத்தில்',
        past: '{0} நிமி. முன்',
        future: '{0} நிமி.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த ஒரு மணிநேரத்தில்',
        past: '{0} ம. முன்',
        future: '{0} மணிநேரத்தில்'),
    day: TimeAgoRelativeUnitLabels(
        current: 'இன்று',
        past: TimeAgoPluralLabels(
            one: '{0} நாளுக்கு முன்', other: '{0} நாட்களுக்கு முன்'),
        future: TimeAgoPluralLabels(one: '{0} நாளில்', other: '{0} நாட்களில்')),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த வாரம்', past: '{0} வார. முன்', future: '{0} வார.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த மாதம்', past: '{0} மாத. முன்', future: '{0} மாத.'),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'இந்த காலாண்டு',
        past: TimeAgoPluralLabels.same('{0} கா. முன்'),
        future: TimeAgoPluralLabels(
            one: '+{0} காலாண்டில்', other: '{0} காலாண்டுகளில்')),
    year: TimeAgoRelativeUnitLabels(
        current: 'இந்த ஆண்டு',
        past: TimeAgoPluralLabels(
            one: '{0} ஆண்டிற்கு முன்', other: '{0} ஆண்டுகளுக்கு முன்'),
        future:
            TimeAgoPluralLabels(one: '{0} ஆண்டில்', other: '{0} ஆண்டுகளில்')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} வி', other: '{0} வி'),
    minute: TimeAgoPluralLabels.same('{0} நிமி.'),
    hour: TimeAgoPluralLabels.same('{0} ம'),
    day: TimeAgoPluralLabels(one: '{0} நாள', other: '{0} நாட்கள'),
    week: TimeAgoPluralLabels.same('{0} வார.'),
    month: TimeAgoPluralLabels.same('{0} மாத.'),
    quarter: TimeAgoPluralLabels(one: '{0} கா', other: '{0} கா'),
    year: TimeAgoPluralLabels(one: '{0} ஆண்டி', other: '{0} ஆண்டுகள'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}. முன்',
    future: '{0}நாடிகளில்',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'இப்போது', past: '{0} வி. முன்', future: '{0} வி.'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த ஒரு நிமிடத்தில்',
        past: '{0} நி. முன்',
        future: '{0} நி.'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த ஒரு மணிநேரத்தில்',
        past: '{0} ம. முன்',
        future: '{0} ம.'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'இன்று', past: '{0} நா. முன்', future: '{0} நா.'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த வாரம்', past: '{0} வா. முன்', future: '{0} வா.'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த மாதம்', past: '{0} மா. முன்', future: '{0} மா.'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த காலாண்டு', past: '{0} கா. முன்', future: '{0} கா.'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'இந்த ஆண்டு', past: '{0} ஆ. முன்', future: '{0} ஆ.'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} வி.'),
    minute: TimeAgoPluralLabels.same('{0} நி.'),
    hour: TimeAgoPluralLabels.same('{0} ம.'),
    day: TimeAgoPluralLabels.same('{0} நா.'),
    week: TimeAgoPluralLabels.same('{0} வா.'),
    month: TimeAgoPluralLabels.same('{0} மா.'),
    quarter: TimeAgoPluralLabels.same('{0} கா.'),
    year: TimeAgoPluralLabels.same('{0} ஆ.'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} முன்',
    future: '{0}',
  ),
);
