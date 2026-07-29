import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/ar.dart' as ar;
import 'package:any_timeago/locales/ar_ae.dart' as ar_ae;
import 'package:any_timeago/locales/as.dart' as assamese;
import 'package:any_timeago/locales/blo.dart' as blo;
import 'package:any_timeago/locales/ca.dart' as ca;
import 'package:any_timeago/locales/da.dart' as da;
import 'package:any_timeago/locales/de.dart' as de;
import 'package:any_timeago/locales/doi.dart' as doi;
import 'package:any_timeago/locales/el.dart' as el;
import 'package:any_timeago/locales/en.dart' as en;
import 'package:any_timeago/locales/en_us.dart' as en_us;
import 'package:any_timeago/locales/eo.dart' as eo;
import 'package:any_timeago/locales/es.dart' as es;
import 'package:any_timeago/locales/fa.dart' as fa;
import 'package:any_timeago/locales/fr.dart' as fr;
import 'package:any_timeago/locales/hi.dart' as hi;
import 'package:any_timeago/locales/id.dart' as id;
import 'package:any_timeago/locales/is.dart' as icelandic;
import 'package:any_timeago/locales/it.dart' as it;
import 'package:any_timeago/locales/ko.dart' as ko;
import 'package:any_timeago/locales/nb.dart' as nb;
import 'package:any_timeago/locales/nl.dart' as nl;
import 'package:any_timeago/locales/or.dart' as odia;
import 'package:any_timeago/locales/pl.dart' as pl;
import 'package:any_timeago/locales/pt.dart' as pt;
import 'package:any_timeago/locales/pt_ao.dart' as pt_ao;
import 'package:any_timeago/locales/ro.dart' as ro;
import 'package:any_timeago/locales/ru.dart' as ru;
import 'package:any_timeago/locales/shn.dart' as shn;
import 'package:any_timeago/locales/so.dart' as so;
import 'package:any_timeago/locales/sv.dart' as sv;
import 'package:any_timeago/locales/uk.dart' as uk;
import 'package:any_timeago/locales/zh.dart' as zh;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('formats resolve in single mode', () {
    final cases = <(LocaleConfig, Map<TimeAgoFormat, String>)>[
      (
        en.locale,
        <TimeAgoFormat, String>{
          TimeAgoFormat.long: '2 minutes ago',
          TimeAgoFormat.short: '2 min ago',
          TimeAgoFormat.narrow: '2m ago',
          TimeAgoFormat.mini: '2m',
        },
      ),
      (
        en_us.locale,
        <TimeAgoFormat, String>{
          TimeAgoFormat.long: '2 minutes ago',
          TimeAgoFormat.short: '2 min ago',
          TimeAgoFormat.narrow: '2m ago',
          TimeAgoFormat.mini: '2m',
        },
      ),
      (
        it.locale,
        <TimeAgoFormat, String>{
          TimeAgoFormat.long: '2 minuti fa',
          TimeAgoFormat.short: '2 min fa',
          TimeAgoFormat.narrow: '2 min fa',
          TimeAgoFormat.mini: '2 min',
        },
      ),
      (
        nb.locale,
        <TimeAgoFormat, String>{
          TimeAgoFormat.long: 'for 2 minutter siden',
          TimeAgoFormat.short: 'for 2 min siden',
          TimeAgoFormat.narrow: '-2 min',
          TimeAgoFormat.mini: '2 min',
        },
      ),
    ];
    for (final (locale, expected) in cases) {
      for (final format in TimeAgoFormat.values) {
        expect(
          durationAgo(
            const Duration(minutes: 2),
            locale: locale,
            format: format,
          ),
          expected[format],
        );
      }
    }
  });

  test('formats resolve in multi mode', () {
    final cases = <(LocaleConfig, Map<TimeAgoFormat, String>)>[
      (
        en.locale,
        <TimeAgoFormat, String>{
          TimeAgoFormat.long: '1 month and 1 day ago',
          TimeAgoFormat.short: '1 mo and 1 day ago',
          TimeAgoFormat.narrow: '1mo and 1d ago',
          TimeAgoFormat.mini: '1mo 1d',
        },
      ),
      (
        it.locale,
        <TimeAgoFormat, String>{
          TimeAgoFormat.long: '1 mese e 1 giorno fa',
          TimeAgoFormat.short: '1 mese e 1 g fa',
          TimeAgoFormat.narrow: '1 mese e 1 g fa',
          TimeAgoFormat.mini: '1 mese e 1 g',
        },
      ),
      (
        nb.locale,
        <TimeAgoFormat, String>{
          TimeAgoFormat.long: 'for 1 måned og 1 dag siden',
          TimeAgoFormat.short: 'for 1 md. og 1 d. siden',
          TimeAgoFormat.narrow: '-1 md. og 1 d.',
          TimeAgoFormat.mini: '1 md. og 1 d.',
        },
      ),
    ];
    for (final (locale, expected) in cases) {
      for (final format in TimeAgoFormat.values) {
        expect(
          durationAgoMulti(
            const Duration(days: 31),
            locale: locale,
            format: format,
          ),
          expected[format],
        );
      }
    }
  });

  test('reports exact availability and resolves width fallbacks', () {
    expect(en.locale.supportsFormat(TimeAgoFormat.narrow), isTrue);
    expect(es.locale.supportsFormat(TimeAgoFormat.narrow), isFalse);
    expect(it.locale.supportsFormat(TimeAgoFormat.narrow), isTrue);
    expect(nb.locale.supportsFormat(TimeAgoFormat.narrow), isTrue);
    expect(en.locale.supportsFormat(TimeAgoFormat.mini), isTrue);
    expect(it.locale.supportsFormat(TimeAgoFormat.mini), isFalse);
    expect(nb.locale.supportsFormat(TimeAgoFormat.mini), isFalse);
    expect(
      es.locale.labelsFor(TimeAgoFormat.narrow),
      same(es.locale.short),
    );

    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: nb.locale,
        format: TimeAgoFormat.mini,
        directional: true,
      ),
      '-2 min',
    );
    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: nb.locale,
        format: TimeAgoFormat.mini,
      ),
      '2 min',
    );
  });

  test('generated mini labels come from the dedicated mini source', () {
    expect(de.locale.supportsFormat(TimeAgoFormat.mini), isTrue);
    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: de.locale,
        format: TimeAgoFormat.mini,
      ),
      '2 m',
    );
    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: de.locale,
        format: TimeAgoFormat.mini,
        directional: true,
      ),
      'vor 2 m',
    );
    expect(
      durationAgoMulti(
        const Duration(days: 180),
        locale: en.locale,
        format: TimeAgoFormat.mini,
        units: const <TimeAgoUnit>[TimeAgoUnit.quarter],
      ),
      '2q',
    );
  });

  test('dedicated mini unit labels are never longer than narrow labels', () {
    const locales = <LocaleConfig>[
      da.locale,
      de.locale,
      el.locale,
      en.locale,
      eo.locale,
      es.locale,
      fr.locale,
      hi.locale,
      id.locale,
      ko.locale,
      nl.locale,
      pl.locale,
      pt.locale,
      ro.locale,
      ru.locale,
      sv.locale,
      zh.locale,
    ];
    for (final locale in locales) {
      final mini = locale.mini!;
      for (final unit in TimeAgoUnit.values) {
        if (unit == TimeAgoUnit.now) {
          continue;
        }
        final narrowLabels =
            locale.labelsFor(TimeAgoFormat.narrow).units.forUnit(unit);
        final miniLabels = mini.units.forUnit(unit);
        for (final category in TimeAgoPluralCategory.values) {
          final narrowPattern = narrowLabels.resolve(category);
          final miniPattern = miniLabels.resolve(category);
          expect(
            miniPattern.runes.length,
            lessThanOrEqualTo(narrowPattern.runes.length),
            reason: '${locale.locale} $unit $category: '
                '$miniPattern is longer than $narrowPattern',
          );
        }
      }
    }
  });

  test('identical resolved narrow and mini unit sets are shared', () {
    const exactNarrowLocales = <LocaleConfig>[
      en.locale,
      fr.locale,
      sv.locale,
    ];
    for (final locale in exactNarrowLocales) {
      expect(locale.mini!.units, same(locale.narrow!.units));
    }

    const shortFallbackLocales = <LocaleConfig>[
      es.locale,
      ko.locale,
      zh.locale,
    ];
    for (final locale in shortFallbackLocales) {
      expect(locale.mini!.units, same(locale.short.units));
    }
  });

  test('short and narrow unit sets are shared in partial-match locales', () {
    const locales = <LocaleConfig>[
      ar.locale,
      ar_ae.locale,
      assamese.locale,
      blo.locale,
      ca.locale,
      doi.locale,
      fa.locale,
      icelandic.locale,
      odia.locale,
      pt_ao.locale,
      shn.locale,
      so.locale,
      uk.locale,
    ];

    for (final locale in locales) {
      final narrow = locale.narrow!;
      expect(narrow.units, same(locale.short.units));
      expect(
        identical(narrow.relative, locale.short.relative) &&
            identical(narrow.list, locale.short.list) &&
            identical(narrow.direction, locale.short.direction),
        isFalse,
      );
    }
  });

  test('narrow preserves signs directionally and strips them directionlessly',
      () {
    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: ru.locale,
        format: TimeAgoFormat.narrow,
      ),
      '-2 мин',
    );
    expect(
      durationAgo(
        const Duration(minutes: -2),
        locale: ru.locale,
        format: TimeAgoFormat.narrow,
      ),
      '+2 мин',
    );
    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: ru.locale,
        format: TimeAgoFormat.narrow,
        directional: false,
      ),
      '2 мин',
    );
  });

  test('copyWith can remove dedicated mini labels', () {
    final withoutMini = en.locale.copyWith(clearMini: true);
    expect(withoutMini.supportsFormat(TimeAgoFormat.mini), isFalse);
    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: withoutMini,
        format: TimeAgoFormat.mini,
      ),
      '2m',
    );
  });

  test('deep copyWith keeps untouched locale strings', () {
    final customized = en.locale.copyWith(
      now: en.locale.now.copyWith(past: 'a blink ago'),
      long: en.locale.long.copyWith(
        cutoffResolver: _atLeastCutoffResolver,
        relative: en.locale.long.relative.copyWith(
          minute: en.locale.long.relative.minute.copyWith(
            past: en.locale.long.relative.minute.past.copyWith(
              other: '{0} custom minutes ago',
            ),
          ),
        ),
      ),
      narrow: en.locale.narrow!.copyWith(
        relative: en.locale.narrow!.relative.copyWith(
          minute: en.locale.narrow!.relative.minute.copyWith(
            past: en.locale.narrow!.relative.minute.past.copyWith(
              other: '{0}xm ago',
            ),
          ),
        ),
      ),
    );

    expect(
      durationAgo(const Duration(seconds: 1), locale: customized),
      'a blink ago',
    );
    expect(
      durationAgo(const Duration(minutes: 2), locale: customized),
      '2 custom minutes ago',
    );
    expect(
      durationAgo(const Duration(hours: 2), locale: customized),
      '2 hours ago',
    );
    expect(
      durationAgo(
        const Duration(minutes: 2),
        locale: customized,
        format: TimeAgoFormat.narrow,
      ),
      '2xm ago',
    );
    expect(en.locale.now.past, 'just now');
    expect(
      customized.long.cutoffResolver(1),
      (
        plural: TimeAgoPluralCategory.many,
        pattern: 'at least {0}',
      ),
    );
    expect(
      en.locale.long.cutoffResolver(1),
      (
        plural: TimeAgoPluralCategory.many,
        pattern: '{0}+',
      ),
    );
  });
}

TimeAgoCutoffFormat _atLeastCutoffResolver(int amount) {
  return (
    plural: TimeAgoPluralCategory.many,
    pattern: 'at least {0}',
  );
}
