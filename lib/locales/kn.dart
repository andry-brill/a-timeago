import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'kn'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 ಸೆಕೆಂಡ್ ಹಿಂದೆ',
    current: 'ಈಗ',
    future: '1 ಸೆಕೆಂಡ್‌ನಲ್ಲಿ',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'kn';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ಈಗ',
        past: TimeAgoPluralLabels(
            one: '{0} ಸೆಕೆಂಡ್ ಹಿಂದೆ', other: '{0} ಸೆಕೆಂಡುಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ಸೆಕೆಂಡ್‌ನಲ್ಲಿ', other: '{0} ಸೆಕೆಂಡ್‌ಗಳಲ್ಲಿ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ಈ ನಿಮಿಷ',
        past: TimeAgoPluralLabels(
            one: '{0} ನಿಮಿಷದ ಹಿಂದೆ', other: '{0} ನಿಮಿಷಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ನಿಮಿಷದಲ್ಲಿ', other: '{0} ನಿಮಿಷಗಳಲ್ಲಿ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ಈ ಗಂಟೆ',
        past: TimeAgoPluralLabels(
            one: '{0} ಗಂಟೆ ಹಿಂದೆ', other: '{0} ಗಂಟೆಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ಗಂಟೆಯಲ್ಲಿ', other: '{0} ಗಂಟೆಗಳಲ್ಲಿ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ಇಂದು',
        past: TimeAgoPluralLabels(
            one: '{0} ದಿನದ ಹಿಂದೆ', other: '{0} ದಿನಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ದಿನದಲ್ಲಿ', other: '{0} ದಿನಗಳಲ್ಲಿ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ಈ ವಾರ',
        past: TimeAgoPluralLabels(
            one: '{0} ವಾರದ ಹಿಂದೆ', other: '{0} ವಾರಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ವಾರದಲ್ಲಿ', other: '{0} ವಾರಗಳಲ್ಲಿ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ಈ ತಿಂಗಳು',
        past: TimeAgoPluralLabels(
            one: '{0} ತಿಂಗಳ ಹಿಂದೆ', other: '{0} ತಿಂಗಳುಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ತಿಂಗಳಲ್ಲಿ', other: '{0} ತಿಂಗಳುಗಳಲ್ಲಿ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ಈ ತ್ರೈಮಾಸಿಕ',
        past: TimeAgoPluralLabels(
            one: '{0} ತ್ರೈಮಾಸಿಕದ ಹಿಂದೆ', other: '{0} ತ್ರೈಮಾಸಿಕಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ತ್ರೈಮಾಸಿಕದಲ್ಲಿ', other: '{0} ತ್ರೈಮಾಸಿಕಗಳಲ್ಲಿ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ಈ ವರ್ಷ',
        past: TimeAgoPluralLabels(
            one: '{0} ವರ್ಷದ ಹಿಂದೆ', other: '{0} ವರ್ಷಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ವರ್ಷದಲ್ಲಿ', other: '{0} ವರ್ಷಗಳಲ್ಲಿ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ಸೆಕೆಂಡ್', other: '{0} ಸೆಕೆಂಡ'),
    minute: TimeAgoPluralLabels(one: '{0} ನಿಮಿಷದ', other: '{0} ನಿಮಿಷಗಳ'),
    hour: TimeAgoPluralLabels(one: '{0} ಗಂಟೆ', other: '{0} ಗಂಟೆಗಳ'),
    day: TimeAgoPluralLabels(one: '{0} ದಿನದ', other: '{0} ದಿನಗಳ'),
    week: TimeAgoPluralLabels(one: '{0} ವಾರದ', other: '{0} ವಾರಗಳ'),
    month: TimeAgoPluralLabels(one: '{0} ತಿಂಗಳ', other: '{0} ತಿಂಗಳುಗಳ'),
    quarter:
        TimeAgoPluralLabels(one: '{0} ತ್ರೈಮಾಸಿಕದ', other: '{0} ತ್ರೈಮಾಸಿಕಗಳ'),
    year: TimeAgoPluralLabels(one: '{0} ವರ್ಷದ', other: '{0} ವರ್ಷಗಳ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ುಗಳ ಹಿಂದೆ',
    future: '{0}್‌ಗಳಲ್ಲಿ',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ಈಗ',
        past: TimeAgoPluralLabels(
            one: '{0} ಸೆಕೆಂಡ್ ಹಿಂದೆ', other: '{0} ಸೆಕೆಂಡುಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ಸೆಕೆಂಡ್‌ನಲ್ಲಿ', other: '{0} ಸೆಕೆಂಡ್‌ಗಳಲ್ಲಿ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ಈ ನಿಮಿಷ',
        past: TimeAgoPluralLabels(
            one: '{0} ನಿಮಿಷದ ಹಿಂದೆ', other: '{0} ನಿಮಿಷಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ನಿಮಿಷದಲ್ಲಿ', other: '{0} ನಿಮಿಷಗಳಲ್ಲಿ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ಈ ಗಂಟೆ',
        past: TimeAgoPluralLabels(
            one: '{0} ಗಂಟೆ ಹಿಂದೆ', other: '{0} ಗಂಟೆಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ಗಂಟೆಯಲ್ಲಿ', other: '{0} ಗಂಟೆಗಳಲ್ಲಿ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ಇಂದು',
        past: TimeAgoPluralLabels(
            one: '{0} ದಿನದ ಹಿಂದೆ', other: '{0} ದಿನಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ದಿನದಲ್ಲಿ', other: '{0} ದಿನಗಳಲ್ಲಿ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ಈ ವಾರ',
        past: TimeAgoPluralLabels(
            one: '{0} ವಾರದ ಹಿಂದೆ', other: '{0} ವಾರಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ವಾರದಲ್ಲಿ', other: '{0} ವಾರಗಳಲ್ಲಿ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ಈ ತಿಂಗಳು',
        past: TimeAgoPluralLabels(
            one: '{0} ತಿಂಗಳು ಹಿಂದೆ', other: '{0} ತಿಂಗಳುಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ತಿಂಗಳಲ್ಲಿ', other: '{0} ತಿಂಗಳುಗಳಲ್ಲಿ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ಈ ತ್ರೈಮಾಸಿಕ',
        past: TimeAgoPluralLabels(
            one: '{0} ತ್ರೈ.ಮಾ. ಹಿಂದೆ', other: '{0} ತ್ರೈಮಾಸಿಕಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ತ್ರೈ.ಮಾ.ದಲ್ಲಿ', other: '{0} ತ್ರೈಮಾಸಿಕಗಳಲ್ಲಿ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ಈ ವರ್ಷ',
        past: TimeAgoPluralLabels(
            one: '{0} ವರ್ಷದ ಹಿಂದೆ', other: '{0} ವರ್ಷಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ವರ್ಷದಲ್ಲಿ', other: '{0} ವರ್ಷಗಳಲ್ಲಿ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ಸೆಕೆಂಡ್', other: '{0} ಸೆಕೆಂಡ'),
    minute: TimeAgoPluralLabels(one: '{0} ನಿಮಿಷದ', other: '{0} ನಿಮಿಷಗಳ'),
    hour: TimeAgoPluralLabels(one: '{0} ಗಂಟೆ', other: '{0} ಗಂಟೆಗಳ'),
    day: TimeAgoPluralLabels(one: '{0} ದಿನದ', other: '{0} ದಿನಗಳ'),
    week: TimeAgoPluralLabels(one: '{0} ವಾರದ', other: '{0} ವಾರಗಳ'),
    month: TimeAgoPluralLabels(one: '{0} ತಿಂಗಳ', other: '{0} ತಿಂಗಳುಗಳ'),
    quarter: TimeAgoPluralLabels(one: '{0} ತ್ರೈ.ಮಾ.', other: '{0} ತ್ರೈಮಾಸಿಕಗಳ'),
    year: TimeAgoPluralLabels(one: '{0} ವರ್ಷದ', other: '{0} ವರ್ಷಗಳ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ುಗಳ ಹಿಂದೆ',
    future: '{0}್‌ಗಳಲ್ಲಿ',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels(
        current: 'ಈಗ',
        past: TimeAgoPluralLabels(
            one: '{0} ಸೆಕೆಂಡ್ ಹಿಂದೆ', other: '{0} ಸೆಕೆಂಡುಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ಸೆಕೆಂಡ್‌ನಲ್ಲಿ', other: '{0} ಸೆಕೆಂಡ್‌ಗಳಲ್ಲಿ')),
    minute: TimeAgoRelativeUnitLabels(
        current: 'ಈ ನಿಮಿಷ',
        past: TimeAgoPluralLabels(
            one: '{0} ನಿಮಿಷದ ಹಿಂದೆ', other: '{0} ನಿಮಿಷಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ನಿಮಿಷದಲ್ಲಿ', other: '{0} ನಿಮಿಷಗಳಲ್ಲಿ')),
    hour: TimeAgoRelativeUnitLabels(
        current: 'ಈ ಗಂಟೆ',
        past: TimeAgoPluralLabels(
            one: '{0} ಗಂಟೆ ಹಿಂದೆ', other: '{0} ಗಂಟೆಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ಗಂಟೆಯಲ್ಲಿ', other: '{0} ಗಂಟೆಗಳಲ್ಲಿ')),
    day: TimeAgoRelativeUnitLabels(
        current: 'ಇಂದು',
        past: TimeAgoPluralLabels(
            one: '{0} ದಿನದ ಹಿಂದೆ', other: '{0} ದಿನಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ದಿನದಲ್ಲಿ', other: '{0} ದಿನಗಳಲ್ಲಿ')),
    week: TimeAgoRelativeUnitLabels(
        current: 'ಈ ವಾರ',
        past: TimeAgoPluralLabels(
            one: '{0} ವಾರದ ಹಿಂದೆ', other: '{0} ವಾರಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ವಾರದಲ್ಲಿ', other: '{0} ವಾರಗಳಲ್ಲಿ')),
    month: TimeAgoRelativeUnitLabels(
        current: 'ಈ ತಿಂಗಳು',
        past: TimeAgoPluralLabels(
            one: '{0} ತಿಂಗಳ ಹಿಂದೆ', other: '{0} ತಿಂಗಳುಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels(
            one: '{0} ತಿಂಗಳಲ್ಲಿ', other: '{0} ತಿಂಗಳುಗಳಲ್ಲಿ')),
    quarter: TimeAgoRelativeUnitLabels(
        current: 'ಈ ತ್ರೈಮಾಸಿಕ',
        past: TimeAgoPluralLabels(
            one: '{0} ತ್ರೈ.ಮಾ. ಹಿಂದೆ', other: '{0} ತ್ರೈಮಾಸಿಕಗಳ ಹಿಂದೆ'),
        future: TimeAgoPluralLabels.same('{0} ತ್ರೈಮಾಸಿಕಗಳಲ್ಲಿ')),
    year: TimeAgoRelativeUnitLabels(
        current: 'ಈ ವರ್ಷ',
        past: TimeAgoPluralLabels(
            one: '{0} ವರ್ಷದ ಹಿಂದೆ', other: '{0} ವರ್ಷಗಳ ಹಿಂದೆ'),
        future:
            TimeAgoPluralLabels(one: '{0} ವರ್ಷದಲ್ಲಿ', other: '{0} ವರ್ಷಗಳಲ್ಲಿ')),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels(one: '{0} ಸೆಕೆಂಡ್', other: '{0} ಸೆಕೆಂಡ'),
    minute: TimeAgoPluralLabels(one: '{0} ನಿಮಿಷದ', other: '{0} ನಿಮಿಷಗಳ'),
    hour: TimeAgoPluralLabels(one: '{0} ಗಂಟೆ', other: '{0} ಗಂಟೆಗಳ'),
    day: TimeAgoPluralLabels(one: '{0} ದಿನದ', other: '{0} ದಿನಗಳ'),
    week: TimeAgoPluralLabels(one: '{0} ವಾರದ', other: '{0} ವಾರಗಳ'),
    month: TimeAgoPluralLabels(one: '{0} ತಿಂಗಳ', other: '{0} ತಿಂಗಳುಗಳ'),
    quarter: TimeAgoPluralLabels(one: '{0} ತ್ರೈ', other: '{0} ತ್ರೈಮಾಸಿಕಗಳ'),
    year: TimeAgoPluralLabels(one: '{0} ವರ್ಷದ', other: '{0} ವರ್ಷಗಳ'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0}ುಗಳ ಹಿಂದೆ',
    future: '{0}್‌ಗಳಲ್ಲಿ',
  ),
);
