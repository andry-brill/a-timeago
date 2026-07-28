import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimeAgoCustomUnitFormatter', () {
    test('formats a multiplied step with localized plural labels', () {
      final century = Duration(
        microseconds: TimeAgoUnit.year.microseconds * 100,
      );

      expect(
        durationAgo(
          century,
          locale: en.locale,
          steps: const <TimeAgoStep>[_centuryStep],
        ),
        '1 century ago',
      );
      expect(
        durationAgo(
          -(century * 2),
          locale: en.locale,
          steps: const <TimeAgoStep>[_centuryStep],
        ),
        'in 2 centuries',
      );
      expect(
        durationAgo(
          century * 2,
          locale: en.locale,
          directional: false,
          steps: const <TimeAgoStep>[_centuryStep],
        ),
        '2 centuries',
      );
    });

    test('selects widths and falls back from mini to narrow', () {
      final twoCenturies = Duration(
        microseconds: TimeAgoUnit.year.microseconds * 200,
      );
      final cases = <(TimeAgoFormat, String)>[
        (TimeAgoFormat.long, '2 centuries ago'),
        (TimeAgoFormat.short, '2 c ago'),
        (TimeAgoFormat.narrow, '2c ago'),
        (TimeAgoFormat.mini, '2c'),
      ];

      for (final (format, expected) in cases) {
        expect(
          durationAgo(
            twoCenturies,
            locale: en.locale,
            format: format,
            steps: const <TimeAgoStep>[_centuryStep],
          ),
          expected,
        );
      }
    });

    test('uses explicit directional forms when grammar requires them', () {
      final decade = Duration(
        microseconds: TimeAgoUnit.year.microseconds * 20,
      );

      expect(
        durationAgo(
          decade,
          locale: en.locale,
          steps: const <TimeAgoStep>[_caseAwareDecadeStep],
        ),
        'past-case 2 decades',
      );
      expect(
        durationAgo(
          -decade,
          locale: en.locale,
          steps: const <TimeAgoStep>[_caseAwareDecadeStep],
        ),
        'future-case 2 decades',
      );
      expect(
        durationAgo(
          decade,
          locale: en.locale,
          directional: false,
          steps: const <TimeAgoStep>[_caseAwareDecadeStep],
        ),
        '2 decades',
      );
    });

    test('applies localized numbers and cutoff formatting', () {
      final locale = en.locale.copyWith(
        functions: const _PrefixedEnglishFunctions(),
      );
      final overCutoff = Duration(
        microseconds: TimeAgoUnit.year.microseconds * 301,
      );

      expect(
        durationAgo(
          overCutoff,
          locale: locale,
          steps: const <TimeAgoStep>[_cappedCenturyStep],
        ),
        '#3+ centuries ago',
      );
    });

    test('supports callable shorthand', () {
      TimeAgoStepContext? received;
      final formatter = TimeAgoCustomUnitFormatter(
        units: _centuryUnits,
      );
      final step = TimeAgoStep.custom(
        unit: TimeAgoUnit.year,
        unitMultiplier: 100,
        formatter: (context) {
          received = context;
          return formatter(context);
        },
      );

      expect(
        durationAgo(
          Duration(
            microseconds: TimeAgoUnit.year.microseconds * 100,
          ),
          locale: en.locale,
          steps: <TimeAgoStep>[step],
        ),
        '1 century ago',
      );
      expect(received!.unitMultiplier, 100);
    });

    test('creates const translated custom-unit steps', () {
      const unit = TimeAgoCustomUnitTranslation(
        unit: TimeAgoUnit.year,
        unitMultiplier: 100,
        units: _centuryUnits,
      );
      const step = TimeAgoStep.customUnit(
        unit,
        rounding: TimeAgoRounding.floor,
        granularity: 2,
        cutoffAmount: 5,
      );

      expect(step, isA<TimeAgoCustomUnitStep>());
      expect((step as TimeAgoCustomUnitStep).customUnit, same(unit));
      expect(step.unit, TimeAgoUnit.year);
      expect(step.unitMultiplier, 100);
      expect(step.rounding, TimeAgoRounding.floor);
      expect(step.granularity, 2);
      expect(step.cutoffAmount, 5);
      expect(
        step,
        same(
          const TimeAgoStep.customUnit(
            unit,
            rounding: TimeAgoRounding.floor,
            granularity: 2,
            cutoffAmount: 5,
          ),
        ),
      );
    });

    test('accepts application-defined custom-unit implementations', () {
      const step = TimeAgoStep.customUnit(_ThreeDayCycle());

      expect(
        durationAgo(
          const Duration(days: 6),
          locale: en.locale,
          steps: const <TimeAgoStep>[step],
        ),
        '2 cycles',
      );
      expect(step.unit, TimeAgoUnit.day);
      expect(step.unitMultiplier, 3);
    });

    test('uses a custom-unit effective size for inferred thresholds', () {
      const steps = <TimeAgoStep>[
        TimeAgoStep.unit(TimeAgoUnit.year),
        en.decade,
      ];

      expect(
        durationAgo(
          Duration(
            microseconds: TimeAgoUnit.year.microseconds * 9,
          ),
          locale: en.locale,
          steps: steps,
        ),
        '9 years ago',
      );
      expect(
        durationAgo(
          Duration(
            microseconds: TimeAgoUnit.year.microseconds * 10,
          ),
          locale: en.locale,
          steps: steps,
        ),
        '1 decade ago',
      );
    });
  });
}

const _centuryUnits = TimeAgoFormatSet<TimeAgoPluralLabels>(
  long: TimeAgoPluralLabels.oneOther(
    one: '{0} century',
    other: '{0} centuries',
  ),
  short: TimeAgoPluralLabels.same('{0} c'),
  narrow: TimeAgoPluralLabels.same('{0}c'),
);

const _centuryUnit = TimeAgoCustomUnitTranslation(
  unit: TimeAgoUnit.year,
  unitMultiplier: 100,
  units: _centuryUnits,
);

const _centuryStep = TimeAgoStep.customUnit(_centuryUnit);

const _cappedCenturyStep = TimeAgoStep.customUnit(
  _centuryUnit,
  cutoffAmount: 3,
);

const _caseAwareDecadeUnit = TimeAgoCustomUnitTranslation(
  unit: TimeAgoUnit.year,
  unitMultiplier: 10,
  units: TimeAgoFormatSet<TimeAgoPluralLabels>(
    long: TimeAgoPluralLabels.oneOther(
      one: '{0} decade',
      other: '{0} decades',
    ),
    short: TimeAgoPluralLabels.same('{0} dec'),
    narrow: TimeAgoPluralLabels.same('{0}dec'),
  ),
  relative: TimeAgoFormatSet<TimeAgoRelativeUnitLabels>(
    long: TimeAgoRelativeUnitLabels.same(
      past: 'past-case {0} decades',
      future: 'future-case {0} decades',
    ),
    short: TimeAgoRelativeUnitLabels.same(
      past: 'past-case {0} dec',
      future: 'future-case {0} dec',
    ),
    narrow: TimeAgoRelativeUnitLabels.same(
      past: 'past-case {0}dec',
      future: 'future-case {0}dec',
    ),
  ),
);

const _caseAwareDecadeStep = TimeAgoStep.customUnit(_caseAwareDecadeUnit);

final class _PrefixedEnglishFunctions extends EnTimeAgoLocaleFunctions {
  const _PrefixedEnglishFunctions();

  @override
  String formatNumber(num value) => '#$value';
}

final class _ThreeDayCycle implements TimeAgoCustomUnit {
  const _ThreeDayCycle();

  @override
  TimeAgoUnit get unit => TimeAgoUnit.day;

  @override
  int get unitMultiplier => 3;

  @override
  String format(TimeAgoStepContext context) => '${context.amount} cycles';
}
