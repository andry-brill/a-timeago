import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:any_timeago/locales/en_au.dart' as en_au;
import 'package:any_timeago/locales/en_ca.dart' as en_ca;
import 'package:any_timeago/locales/en_sg.dart' as en_sg;
import 'package:any_timeago/locales/en_us.dart' as en_us;
import 'package:any_timeago/locales/es.dart' as es;
import 'package:any_timeago/locales/es_419.dart' as es_419;
import 'package:any_timeago/locales/es_ar.dart' as es_ar;
import 'package:any_timeago/locales/es_mx.dart' as es_mx;
import 'package:any_timeago/locales/es_py.dart' as es_py;
import 'package:any_timeago/locales/es_sv.dart' as es_sv;
import 'package:any_timeago/locales/es_us.dart' as es_us;
import 'package:any_timeago/locales/fr.dart' as fr;
import 'package:any_timeago/locales/fr_ca.dart' as fr_ca;
import 'package:any_timeago/locales/it.dart' as it;
import 'package:any_timeago/locales/ja.dart' as ja;
import 'package:any_timeago/locales/nl.dart' as nl;
import 'package:any_timeago/locales/pt.dart' as pt;
import 'package:any_timeago/locales/pt_ao.dart' as pt_ao;
import 'package:any_timeago/locales/zh.dart' as zh;
import 'package:any_timeago/locales/zh_hans_hk.dart' as zh_hans_hk;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('reviewed custom-unit locale steps', () {
    test('English includes fortnight, decade, and century', () {
      expect(
        _format(en.fortnight, en.locale, 1),
        '1 fortnight ago',
      );
      expect(
        _format(en.fortnight, en.locale, 2),
        '2 fortnights ago',
      );
      expect(
        _format(en.decade, en.locale, 2),
        '2 decades ago',
      );
      expect(
        _format(en.century, en.locale, -2),
        'in 2 centuries',
      );
    });

    test('English regional locales share decade and century steps', () {
      expect(en_us.decade, same(en.decade));
      expect(en_us.century, same(en.century));
      expect(en_au.decade, same(en.decade));
      expect(en_au.century, same(en.century));
      expect(en_ca.decade, same(en.decade));
      expect(en_ca.century, same(en.century));
      expect(en_sg.decade, same(en.decade));
      expect(en_sg.century, same(en.century));
    });

    test('reviewed regional variants share their language steps', () {
      for (final step in <TimeAgoStep>[
        es_419.decade,
        es_ar.decade,
        es_mx.decade,
        es_py.decade,
        es_sv.decade,
        es_us.decade,
      ]) {
        expect(step, same(es.decade));
      }
      for (final step in <TimeAgoStep>[
        es_419.century,
        es_ar.century,
        es_mx.century,
        es_py.century,
        es_sv.century,
        es_us.century,
      ]) {
        expect(step, same(es.century));
      }
      expect(fr_ca.decade, same(fr.decade));
      expect(fr_ca.century, same(fr.century));
      expect(pt_ao.decade, same(pt.decade));
      expect(pt_ao.century, same(pt.century));
      expect(zh_hans_hk.decade, same(zh.decade));
      expect(zh_hans_hk.century, same(zh.century));
    });

    test('decade labels cover reviewed locales in both directions', () {
      final cases = <(
        TimeAgoStep,
        LocaleConfig,
        String,
        String,
      )>[
        (fr.decade, fr.locale, 'il y a 2 décennies', 'dans 2 décennies'),
        (es.decade, es.locale, 'hace 2 décadas', 'dentro de 2 décadas'),
        (it.decade, it.locale, '2 decadi fa', 'tra 2 decadi'),
        (pt.decade, pt.locale, 'há 2 décadas', 'em 2 décadas'),
        (nl.decade, nl.locale, '2 decennia geleden', 'over 2 decennia'),
        (zh.decade, zh.locale, '2个十年前', '2个十年后'),
        (ja.decade, ja.locale, '2 十年前', '2 十年後'),
      ];

      for (final (step, locale, past, future) in cases) {
        expect(
          _format(step, locale, 2),
          past,
        );
        expect(
          _format(step, locale, -2),
          future,
        );
      }
    });

    test('century labels cover reviewed locales', () {
      final cases = <(TimeAgoStep, LocaleConfig, String)>[
        (fr.century, fr.locale, '2 siècles'),
        (es.century, es.locale, '2 siglos'),
        (it.century, it.locale, '2 secoli'),
        (pt.century, pt.locale, '2 séculos'),
        (nl.century, nl.locale, '2 eeuwen'),
        (zh.century, zh.locale, '2个世纪'),
        (ja.century, ja.locale, '2 世紀'),
      ];

      for (final (step, locale, expected) in cases) {
        expect(
          _format(
            step,
            locale,
            2,
            directional: false,
          ),
          expected,
        );
      }
    });

    test('long, short, narrow, and mini resolve reviewed widths', () {
      final cases = <(
        TimeAgoStep,
        LocaleConfig,
        List<String>,
      )>[
        (en.decade, en.locale, ['2 decades', '2 dec', '2dec', '2dec']),
        (
          fr.decade,
          fr.locale,
          ['2 décennies', '2 déc.', '2déc.', '2déc.'],
        ),
        (es.decade, es.locale, ['2 décadas', '2 déc.', '2déc', '2déc']),
        (it.decade, it.locale, ['2 decadi', '2 dec.', '2dec.', '2dec.']),
        (pt.decade, pt.locale, ['2 décadas', '2 déc.', '2 déc.', '2 déc.']),
        (nl.decade, nl.locale, ['2 decennia', '2 dec.', '2 dec.', '2 dec.']),
        (zh.decade, zh.locale, ['2个十年', '2个十年', '2个十年', '2个十年']),
        (ja.decade, ja.locale, ['2 十年', '2 十年', '2十年', '2十年']),
      ];

      for (final (step, locale, expected) in cases) {
        for (var i = 0; i < TimeAgoFormat.values.length; i++) {
          expect(
            _format(
              step,
              locale,
              2,
              format: TimeAgoFormat.values[i],
              directional: false,
            ),
            expected[i],
          );
        }
      }
    });
  });
}

String _format(
  TimeAgoStep step,
  LocaleConfig locale,
  int amount, {
  TimeAgoFormat format = TimeAgoFormat.long,
  bool directional = true,
}) {
  return durationAgo(
    Duration(
          microseconds:
              step.unit!.microseconds * step.unitMultiplier * amount.abs(),
        ) *
        amount.sign,
    locale: locale,
    format: format,
    directional: directional,
    steps: <TimeAgoStep>[step],
  );
}
