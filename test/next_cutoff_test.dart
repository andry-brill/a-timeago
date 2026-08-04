import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:flutter_test/flutter_test.dart';

void main() {
  const cutoff = TimeAgoStep.unit(
    TimeAgoUnit.year,
    cutoffAmount: 9,
  );
  final now = DateTime.utc(2026);
  final eightYearsAgo = DateTime.utc(2018);
  final exactlyNineYearsAgo = DateTime.utc(2017);
  final overNineYearsAgo = DateTime.utc(2017).subtract(
    const Duration(microseconds: 1),
  );

  test('exposes a matching standalone cutoff until it becomes active', () {
    final beforeCutoff = timeAgoResult(
      eightYearsAgo,
      to: now,
      locale: en.locale,
      format: TimeAgoFormat.mini,
      directional: false,
      steps: TimeAgoSteps.precise,
      cutoffStep: cutoff,
    );
    final atCutoff = timeAgoResult(
      exactlyNineYearsAgo,
      to: now,
      locale: en.locale,
      format: TimeAgoFormat.mini,
      directional: false,
      steps: TimeAgoSteps.precise,
      cutoffStep: cutoff,
    );
    final afterCutoff = timeAgoResult(
      overNineYearsAgo,
      to: now,
      locale: en.locale,
      format: TimeAgoFormat.mini,
      directional: false,
      steps: TimeAgoSteps.precise,
      cutoffStep: cutoff,
    );

    expect(beforeCutoff.values.single.value, 8);
    expect(beforeCutoff.values.single.step.unit, TimeAgoUnit.year);
    expect(beforeCutoff.values.single.step.cutoffAmount, isNull);
    expect(beforeCutoff.nextCutoff, same(cutoff));
    expect(
      beforeCutoff.values.single.step.unit!.upperBound(
        cutoff: beforeCutoff.nextCutoff?.cutoffAmount ??
            beforeCutoff.values.single.step.cutoffAmount,
      ),
      9,
    );

    expect(atCutoff.values.single.value, 9);
    expect(atCutoff.values.single.step.unit, TimeAgoUnit.year);
    expect(atCutoff.values.single.step.cutoffAmount, isNull);
    expect(atCutoff.nextCutoff, same(cutoff));

    expect(afterCutoff.values.single.value, 9);
    expect(afterCutoff.values.single.step, same(cutoff));
    expect(afterCutoff.values.single.step.cutoffAmount, 9);
    expect(afterCutoff.nextCutoff, isNull);
  });

  test('selects an embedded cutoff as the next cutoff', () {
    final steps = <TimeAgoStep>[
      ...TimeAgoSteps.precise.take(TimeAgoSteps.precise.length - 1),
      cutoff,
    ];
    final beforeCutoff = timeAgoResult(
      eightYearsAgo,
      to: now,
      locale: en.locale,
      format: TimeAgoFormat.mini,
      directional: false,
      steps: steps,
    );

    expect(beforeCutoff.values.single.value, 8);
    expect(beforeCutoff.values.single.step, same(cutoff));
    expect(beforeCutoff.values.single.step.cutoffAmount, 9);
    expect(beforeCutoff.nextCutoff, same(cutoff));
    expect(
      beforeCutoff.values.single.step.unit!.upperBound(
        cutoff: beforeCutoff.nextCutoff?.cutoffAmount ??
            beforeCutoff.values.single.step.cutoffAmount,
      ),
      9,
    );
  });

  test('exposes a day cutoff while the current sparse-list step is hours', () {
    const dayCutoff = TimeAgoStep.unit(
      TimeAgoUnit.day,
      cutoffAmount: 3,
    );
    const sparseSteps = <TimeAgoStep>[
      TimeAgoStep.unit(TimeAgoUnit.hour),
      TimeAgoStep.unit(TimeAgoUnit.week),
    ];
    final beforeCutoff = durationAgoResult(
      const Duration(days: 2),
      locale: en.locale,
      steps: sparseSteps,
      cutoffStep: dayCutoff,
    );
    final atCutoff = durationAgoResult(
      const Duration(days: 3),
      locale: en.locale,
      steps: sparseSteps,
      cutoffStep: dayCutoff,
    );
    final afterCutoff = durationAgoResult(
      const Duration(days: 3, microseconds: 1),
      locale: en.locale,
      steps: sparseSteps,
      cutoffStep: dayCutoff,
    );

    expect(beforeCutoff.values.single.step.unit, TimeAgoUnit.hour);
    expect(beforeCutoff.values.single.value, 48);
    expect(beforeCutoff.nextCutoff, same(dayCutoff));

    expect(atCutoff.values.single.step.unit, TimeAgoUnit.hour);
    expect(atCutoff.values.single.value, 72);
    expect(atCutoff.nextCutoff, same(dayCutoff));

    expect(afterCutoff.values.single.step, same(dayCutoff));
    expect(afterCutoff.values.single.value, 3);
    expect(afterCutoff.nextCutoff, isNull);
  });

  test('exposes a matching standalone cutoff in multi mode', () {
    final result = durationAgoMultiResult(
      Duration(
        microseconds: TimeAgoUnit.year.fixedMultiMicroseconds * 8,
      ),
      locale: en.locale,
      cutoffStep: cutoff,
    );

    expect(
      result.values.any((value) => value.step.unit == TimeAgoUnit.year),
      isTrue,
    );
    expect(result.nextCutoff, same(cutoff));
  });

  test('exposes a pending cutoff when the result has no values', () {
    const dayCutoff = TimeAgoStep.unit(
      TimeAgoUnit.day,
      cutoffAmount: 3,
    );
    final result = durationAgoMultiResult(
      Duration.zero,
      locale: en.locale,
      cutoffStep: dayCutoff,
    );

    expect(result.values, isEmpty);
    expect(result.nextCutoff, same(dayCutoff));
  });

  test('chooses the earliest pending cutoff for the current value', () {
    const embeddedCutoff = TimeAgoStep.unit(
      TimeAgoUnit.year,
      cutoffAmount: 5,
    );
    final result = timeAgoResult(
      DateTime.utc(2023),
      to: now,
      locale: en.locale,
      steps: <TimeAgoStep>[
        ...TimeAgoSteps.precise.take(TimeAgoSteps.precise.length - 1),
        embeddedCutoff,
      ],
      cutoffStep: cutoff,
    );

    expect(result.values.single.step, same(embeddedCutoff));
    expect(result.nextCutoff, same(embeddedCutoff));
  });

  test('exposes a cutoff with a different unit multiplier', () {
    final decadeCutoff = TimeAgoStep.custom(
      unit: TimeAgoUnit.year,
      unitMultiplier: 10,
      cutoffAmount: 3,
      formatter: (_) => 'cutoff',
    );
    final result = timeAgoResult(
      eightYearsAgo,
      to: now,
      locale: en.locale,
      steps: TimeAgoSteps.precise,
      cutoffStep: decadeCutoff,
    );

    expect(result.values.single.step.unit, TimeAgoUnit.year);
    expect(result.values.single.step.unitMultiplier, 1);
    expect(result.nextCutoff, same(decadeCutoff));
  });
}
