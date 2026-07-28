import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';

const LocaleConfig locale = LocaleConfig(
  locale: Locale.fromSubtags(languageCode: 'tr'),
  formats: TimeAgoFormatSet(
    long: _long,
    short: _short,
    narrow: _narrow,
    mini: null,
  ),
  now: TimeAgoNowLabels(
    past: '1 saniye önce',
    current: 'şimdi',
    future: '1 saniye sonra',
  ),
  functions: IntlTimeAgoLocaleFunctions(_localeName),
);

const _localeName = 'tr';

const _long = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'şimdi', past: '{0} saniye önce', future: '{0} saniye sonra'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'bu dakika',
        past: '{0} dakika önce',
        future: '{0} dakika sonra'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'bu saat', past: '{0} saat önce', future: '{0} saat sonra'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bugün', past: '{0} gün önce', future: '{0} gün sonra'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu hafta', past: '{0} hafta önce', future: '{0} hafta sonra'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu ay', past: '{0} ay önce', future: '{0} ay sonra'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'bu çeyrek',
        past: '{0} çeyrek önce',
        future: '{0} çeyrek sonra'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu yıl', past: '{0} yıl önce', future: '{0} yıl sonra'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} saniye'),
    minute: TimeAgoPluralLabels.same('{0} dakika'),
    hour: TimeAgoPluralLabels.same('{0} saat'),
    day: TimeAgoPluralLabels.same('{0} gün'),
    week: TimeAgoPluralLabels.same('{0} hafta'),
    month: TimeAgoPluralLabels.same('{0} ay'),
    quarter: TimeAgoPluralLabels.same('{0} çeyrek'),
    year: TimeAgoPluralLabels.same('{0} yıl'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} önce',
    future: '{0} sonra',
  ),
);

const _short = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'şimdi', past: '{0} sn. önce', future: '{0} sn. sonra'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'bu dakika', past: '{0} dk. önce', future: '{0} dk. sonra'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'bu saat', past: '{0} sa. önce', future: '{0} sa. sonra'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bugün', past: '{0} gün önce', future: '{0} gün sonra'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu hf.', past: '{0} hf. önce', future: '{0} hf. sonra'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu ay', past: '{0} ay önce', future: '{0} ay sonra'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'bu çyr.', past: '{0} çyr. önce', future: '{0} çyr. sonra'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu yıl', past: '{0} yıl önce', future: '{0} yıl sonra'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sn.'),
    minute: TimeAgoPluralLabels.same('{0} dk.'),
    hour: TimeAgoPluralLabels.same('{0} sa.'),
    day: TimeAgoPluralLabels.same('{0} gün'),
    week: TimeAgoPluralLabels.same('{0} hf.'),
    month: TimeAgoPluralLabels.same('{0} ay'),
    quarter: TimeAgoPluralLabels.same('{0} çyr.'),
    year: TimeAgoPluralLabels.same('{0} yıl'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} önce',
    future: '{0} sonra',
  ),
);

const _narrow = TimeAgoFormatLabels(
  relative: TimeAgoRelativeLabels(
    second: TimeAgoRelativeUnitLabels.same(
        current: 'şimdi', past: '{0} sn. önce', future: '{0} sn. sonra'),
    minute: TimeAgoRelativeUnitLabels.same(
        current: 'bu dakika', past: '{0} dk. önce', future: '{0} dk. sonra'),
    hour: TimeAgoRelativeUnitLabels.same(
        current: 'bu saat', past: '{0} sa. önce', future: '{0} sa. sonra'),
    day: TimeAgoRelativeUnitLabels.same(
        current: 'bugün', past: '{0} gün önce', future: '{0} gün sonra'),
    week: TimeAgoRelativeUnitLabels.same(
        current: 'bu hf.', past: '{0} hf. önce', future: '{0} hf. sonra'),
    month: TimeAgoRelativeUnitLabels.same(
        current: 'bu ay', past: '{0} ay önce', future: '{0} ay sonra'),
    quarter: TimeAgoRelativeUnitLabels.same(
        current: 'bu çyr.', past: '{0} çyr. önce', future: '{0} çyr. sonra'),
    year: TimeAgoRelativeUnitLabels.same(
        current: 'bu yıl', past: '{0} yıl önce', future: '{0} yıl sonra'),
  ),
  units: TimeAgoUnitLabels(
    second: TimeAgoPluralLabels.same('{0} sn.'),
    minute: TimeAgoPluralLabels.same('{0} dk.'),
    hour: TimeAgoPluralLabels.same('{0} sa.'),
    day: TimeAgoPluralLabels.same('{0} gün'),
    week: TimeAgoPluralLabels.same('{0} hf.'),
    month: TimeAgoPluralLabels.same('{0} ay'),
    quarter: TimeAgoPluralLabels.same('{0} çyr.'),
    year: TimeAgoPluralLabels.same('{0} yıl'),
  ),
  list: TimeAgoListPatterns(
    pair: '{0}, {1}',
    start: '{0}, {1}',
    middle: '{0}, {1}',
    end: '{0}, {1}',
  ),
  direction: TimeAgoDirectionPatterns(
    past: '{0} önce',
    future: '{0} sonra',
  ),
);
