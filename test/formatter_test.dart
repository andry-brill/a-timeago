import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:any_timeago/locales/ru.dart' as ru;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('explicit public entry points', () {
    test('all DateTime APIs can resolve the current clock implicitly', () {
      final time = DateTime.now().subtract(const Duration(days: 400));

      final single = timeAgo(time, locale: en.locale);
      final multi = timeAgoMulti(time, locale: en.locale);
      final singleResult = timeAgoResult(time, locale: en.locale);
      final multiResult = timeAgoMultiResult(time, locale: en.locale);

      for (final text in <String>[
        single,
        multi,
        singleResult.text,
        multiResult.text,
      ]) {
        expect(text, contains('year'));
        expect(text, endsWith('ago'));
      }
      expect(singleResult.nextUpdate, isA<TimeAgoUpdateAfter>());
      expect(multiResult.nextUpdate, isA<TimeAgoUpdateAfter>());
    });

    test('separates single-step and multi-unit string APIs', () {
      const duration = Duration(days: 31);
      final to = DateTime.utc(2026, 3, 1);
      final time = DateTime.utc(2026, 1, 31);

      expect(durationAgo(duration, locale: en.locale), '1 month ago');
      expect(
        durationAgoMulti(duration, locale: en.locale),
        '1 month and 1 day ago',
      );
      expect(
        timeAgo(time, to: to, locale: en.locale),
        '1 month ago',
      );
      expect(
        timeAgoMulti(time, to: to, locale: en.locale),
        '1 month and 1 day ago',
      );
    });

    test('exposes matching result APIs', () {
      final now = DateTime.utc(2026);
      final time = now.subtract(const Duration(minutes: 2, seconds: 3));

      final single = timeAgoResult(time, to: now, locale: en.locale);
      final multi = timeAgoMultiResult(time, to: now, locale: en.locale);
      final durationSingle = durationAgoResult(
        const Duration(minutes: 2),
        locale: en.locale,
      );
      final durationMulti = durationAgoMultiResult(
        const Duration(minutes: 2),
        locale: en.locale,
      );

      expect(single.text, '2 minutes ago');
      expect(single.nextUpdate, isA<TimeAgoUpdateAfter>());
      expect(multi.text, '2 minutes and 3 seconds ago');
      expect(multi.nextUpdate, isA<TimeAgoUpdateAfter>());
      expect(durationSingle.text, '2 minutes ago');
      expect(durationSingle.nextUpdate, isA<TimeAgoUpdateNever>());
      expect(durationMulti.text, '2 minutes ago');
      expect(durationMulti.nextUpdate, isA<TimeAgoUpdateNever>());
    });

    test('only result APIs resolve update callbacks', () {
      var updateCalls = 0;
      final step = TimeAgoStep.custom(
        unit: TimeAgoUnit.second,
        formatter: (_) => 'custom',
        nextUpdate: (_) {
          updateCalls++;
          return const TimeAgoUpdate.never();
        },
      );
      final now = DateTime.utc(2026);
      final time = now.subtract(const Duration(seconds: 2));

      expect(
        timeAgo(
          time,
          to: now,
          locale: en.locale,
          steps: <TimeAgoStep>[step],
        ),
        'custom',
      );
      expect(updateCalls, 0);

      expect(
        timeAgoResult(
          time,
          to: now,
          locale: en.locale,
          steps: <TimeAgoStep>[step],
        ).text,
        'custom',
      );
      expect(updateCalls, 1);
    });

    test('text-only cutoff APIs do not resolve update callbacks', () {
      var updateCalls = 0;
      final cutoff = TimeAgoStep.custom(
        unit: TimeAgoUnit.second,
        cutoffAmount: 1,
        formatter: (_) => 'cutoff',
        nextUpdate: (_) {
          updateCalls++;
          return const TimeAgoUpdate.after(Duration(seconds: 1));
        },
      );
      final now = DateTime.utc(2026);

      expect(
        timeAgo(
          now.subtract(const Duration(seconds: 2)),
          to: now,
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        'cutoff',
      );
      expect(
        timeAgoMulti(
          now.subtract(const Duration(seconds: 2)),
          to: now,
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        'cutoff',
      );
      expect(
        durationAgo(
          const Duration(seconds: 2),
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        'cutoff',
      );
      expect(
        durationAgoMulti(
          const Duration(seconds: 2),
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        'cutoff',
      );
      expect(updateCalls, 0);
    });

    test('duration cutoff results are stable without update callbacks', () {
      var updateCalls = 0;
      final cutoff = TimeAgoStep.custom(
        unit: TimeAgoUnit.second,
        cutoffAmount: 1,
        formatter: (_) => 'cutoff',
        nextUpdate: (_) {
          updateCalls++;
          return const TimeAgoUpdate.after(Duration(seconds: 1));
        },
      );

      final results = <TimeAgoResult>[
        durationAgoResult(
          const Duration(seconds: 2),
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        durationAgoMultiResult(
          const Duration(seconds: 2),
          locale: en.locale,
          cutoffStep: cutoff,
        ),
      ];

      for (final result in results) {
        expect(result.text, 'cutoff');
        expect(result.nextUpdate, isA<TimeAgoUpdateNever>());
      }
      expect(updateCalls, 0);
    });
  });

  group('single-unit formatting', () {
    test('resolves direction independently from label width', () {
      final cases = <(TimeAgoFormat, bool?, String, String)>[
        (
          TimeAgoFormat.long,
          null,
          '2 minutes ago',
          'in 2 minutes',
        ),
        (
          TimeAgoFormat.long,
          false,
          '2 minutes',
          '2 minutes',
        ),
        (
          TimeAgoFormat.short,
          null,
          '2 min ago',
          'in 2 min',
        ),
        (
          TimeAgoFormat.short,
          false,
          '2 min',
          '2 min',
        ),
        (
          TimeAgoFormat.narrow,
          null,
          '2m ago',
          'in 2m',
        ),
        (
          TimeAgoFormat.narrow,
          false,
          '2m',
          '2m',
        ),
        (
          TimeAgoFormat.mini,
          null,
          '2m',
          '2m',
        ),
        (
          TimeAgoFormat.mini,
          true,
          '2m ago',
          'in 2m',
        ),
      ];
      for (final (format, directional, past, future) in cases) {
        expect(
          durationAgo(
            const Duration(minutes: 2),
            locale: en.locale,
            format: format,
            directional: directional,
          ),
          past,
        );
        expect(
          durationAgo(
            const Duration(minutes: -2),
            locale: en.locale,
            format: format,
            directional: directional,
          ),
          future,
        );
      }
    });

    test('direction controls now labels independently', () {
      expect(
        durationAgo(
          const Duration(seconds: 20),
          locale: en.locale,
          directional: false,
        ),
        'now',
      );
      expect(
        durationAgo(
          const Duration(seconds: -20),
          locale: en.locale,
          directional: true,
        ),
        'in a moment',
      );
    });

    test('can force future grammar, including at exact zero', () {
      expect(
        durationAgo(Duration.zero, locale: en.locale),
        'now',
      );
      expect(
        durationAgo(Duration.zero, locale: en.locale, future: true),
        'in a moment',
      );
      expect(
        durationAgo(
          const Duration(minutes: 2),
          locale: en.locale,
          future: true,
        ),
        'in 2 minutes',
      );

      final now = DateTime(2026, 1, 1, 12);
      expect(
        timeAgo(now, to: now, locale: en.locale, future: true),
        'in a moment',
      );
    });

    test('shares interval context across threshold and formatting stages', () {
      TimeAgoContext? thresholdContext;
      TimeAgoContext? selectedContext;
      expect(
        durationAgo(
          Duration.zero,
          locale: en.locale,
          future: true,
          steps: [
            TimeAgoStep.custom(
              minTimeResolver: (context) {
                thresholdContext = context;
                return Duration.zero;
              },
              formatter: (context) {
                selectedContext = context;
                return context.isFuture ? 'future zero' : 'past zero';
              },
            ),
          ],
        ),
        'future zero',
      );
      expect(thresholdContext, isA<TimeAgoMinTimeContext>());
      expect(selectedContext, isA<TimeAgoStepContext>());
      for (final context in <TimeAgoContext>[
        thresholdContext!,
        selectedContext!,
      ]) {
        expect(context.duration, Duration.zero);
        expect(context.absoluteDuration, Duration.zero);
        expect(context.isCurrent, isTrue);
        expect(context.isFuture, isTrue);
        expect(context.isPast, isFalse);
        expect(context.time, isNotNull);
        expect(context.to, isNotNull);
      }
    });

    test('uses fromMinuteNow by default', () {
      expect(
        durationAgo(const Duration(seconds: 29), locale: en.locale),
        'just now',
      );
      expect(
        durationAgo(const Duration(seconds: 30), locale: en.locale),
        '1 minute ago',
      );
      expect(
        durationAgo(const Duration(seconds: -30), locale: en.locale),
        'in 1 minute',
      );
      expect(
        durationAgo(
          const Duration(seconds: 29),
          locale: en.locale,
          format: TimeAgoFormat.mini,
        ),
        'now',
      );
      expect(
        durationAgo(
          const Duration(milliseconds: 500),
          locale: en.locale,
          steps: TimeAgoSteps.precise,
        ),
        '1 second ago',
      );
    });

    test('keeps format separate from thresholds and rounding', () {
      expect(
        durationAgo(
          const Duration(minutes: 1, seconds: 36),
          locale: en.locale,
          format: TimeAgoFormat.mini,
          steps: TimeAgoSteps.precise,
        ),
        '2m',
      );
      expect(
        durationAgo(
          const Duration(minutes: 1, seconds: 36),
          locale: en.locale,
          steps: const <TimeAgoStep>[
            TimeAgoStep.unit(
              TimeAgoUnit.minute,
              rounding: TimeAgoRounding.floor,
            ),
          ],
        ),
        '1 minute ago',
      );
    });

    test('matches inferred round and floor threshold boundaries', () {
      expect(
        durationAgo(
          const Duration(milliseconds: 499),
          locale: en.locale,
          steps: TimeAgoSteps.preciseNow,
        ),
        'just now',
      );
      expect(
        durationAgo(
          const Duration(milliseconds: 500),
          locale: en.locale,
          steps: TimeAgoSteps.preciseNow,
        ),
        '1 second ago',
      );
      expect(
        durationAgo(
          const Duration(seconds: 59, milliseconds: 499),
          locale: en.locale,
          steps: TimeAgoSteps.preciseNow,
        ),
        '59 seconds ago',
      );
      expect(
        durationAgo(
          const Duration(seconds: 59, milliseconds: 500),
          locale: en.locale,
          steps: TimeAgoSteps.preciseNow,
        ),
        '1 minute ago',
      );

      const floorSteps = <TimeAgoStep>[
        TimeAgoStep.unit(
          TimeAgoUnit.now,
          rounding: TimeAgoRounding.floor,
        ),
        TimeAgoStep.unit(
          TimeAgoUnit.minute,
          rounding: TimeAgoRounding.floor,
        ),
      ];
      expect(
        durationAgo(
          const Duration(seconds: 59, milliseconds: 999),
          locale: en.locale,
          steps: floorSteps,
        ),
        'just now',
      );
      expect(
        durationAgo(
          const Duration(minutes: 1),
          locale: en.locale,
          steps: floorSteps,
        ),
        '1 minute ago',
      );
    });

    test('supports zero without now and a nonzero first threshold', () {
      expect(
        durationAgo(
          Duration.zero,
          locale: en.locale,
          steps: TimeAgoSteps.precise,
        ),
        '0 seconds ago',
      );
      expect(
        durationAgo(
          const Duration(seconds: 59),
          locale: en.locale,
          format: TimeAgoFormat.mini,
          steps: TimeAgoSteps.twitterFirstMinute,
        ),
        '',
      );
      expect(
        durationAgo(
          const Duration(minutes: 1),
          locale: en.locale,
          format: TimeAgoFormat.mini,
          steps: TimeAgoSteps.twitterFirstMinute,
        ),
        '1m',
      );
    });

    test('supports round and floor granularity at exact buckets', () {
      const rounded = <TimeAgoStep>[
        TimeAgoStep.unit(TimeAgoUnit.minute, granularity: 5),
      ];
      const floored = <TimeAgoStep>[
        TimeAgoStep.unit(
          TimeAgoUnit.minute,
          rounding: TimeAgoRounding.floor,
          granularity: 5,
        ),
      ];
      final cases = <(Duration, List<TimeAgoStep>, String)>[
        (const Duration(minutes: 10), rounded, '10 minutes ago'),
        (const Duration(minutes: 13), rounded, '15 minutes ago'),
        (const Duration(minutes: 10), floored, '10 minutes ago'),
        (const Duration(minutes: 13), floored, '10 minutes ago'),
      ];
      for (final (duration, steps, expected) in cases) {
        expect(
          durationAgo(duration, locale: en.locale, steps: steps),
          expected,
        );
      }

      final now = DateTime(2026);
      final updateCases = <(Duration, List<TimeAgoStep>, String, Duration)>[
        (
          const Duration(minutes: 13),
          rounded,
          '15 minutes ago',
          const Duration(minutes: 4, seconds: 30),
        ),
        (
          const Duration(minutes: -13),
          rounded,
          'in 15 minutes',
          const Duration(seconds: 30, microseconds: 1),
        ),
        (
          const Duration(minutes: 13),
          floored,
          '10 minutes ago',
          const Duration(minutes: 2),
        ),
        (
          const Duration(minutes: -13),
          floored,
          'in 10 minutes',
          const Duration(minutes: 3, microseconds: 1),
        ),
      ];
      for (final (duration, steps, text, nextUpdate) in updateCases) {
        final result = timeAgoResult(
          now.subtract(duration),
          to: now,
          locale: en.locale,
          steps: steps,
        );
        expect(result.text, text);
        expect(
          (result.nextUpdate as TimeAgoUpdateAfter).duration,
          nextUpdate,
        );
      }
    });

    test('approximate preset switches at every exact fuzzy threshold', () {
      final cases = <(Duration, String, String)>[
        (const Duration(seconds: 1), 'just now', '1 second ago'),
        (
          const Duration(microseconds: 45500000),
          '45 seconds ago',
          '1 minute ago',
        ),
        (
          const Duration(seconds: 150),
          '2 minutes ago',
          '5 minutes ago',
        ),
        (
          const Duration(seconds: 1350),
          '20 minutes ago',
          '30 minutes ago',
        ),
        (
          const Duration(seconds: 2550),
          '30 minutes ago',
          '1 hour ago',
        ),
        (
          const Duration(seconds: 73800),
          '20 hours ago',
          '1 day ago',
        ),
        (
          const Duration(seconds: 475200),
          '5 days ago',
          '1 week ago',
        ),
        (
          const Duration(seconds: 2116800),
          '3 weeks ago',
          '1 month ago',
        ),
        (
          const Duration(seconds: 27609120),
          '10 months ago',
          '1 year ago',
        ),
      ];
      for (final (threshold, before, at) in cases) {
        expect(
          durationAgo(
            Duration(microseconds: threshold.inMicroseconds - 1),
            locale: en.locale,
            steps: TimeAgoSteps.approximate,
          ),
          before,
        );
        expect(
          durationAgo(
            threshold,
            locale: en.locale,
            steps: TimeAgoSteps.approximate,
          ),
          at,
        );
      }
    });

    test('covers each remaining built-in step preset', () {
      final cases = <(List<TimeAgoStep>, Duration, String)>[
        (TimeAgoSteps.fromMinute, Duration.zero, '0 minutes ago'),
        (TimeAgoSteps.twitterNow, Duration.zero, 'now'),
        (
          TimeAgoSteps.twitterFromMinute,
          const Duration(seconds: 20),
          '0 minutes ago',
        ),
        (
          TimeAgoSteps.twitterFromMinuteNow,
          const Duration(seconds: 20),
          'just now',
        ),
      ];
      for (final (steps, duration, expected) in cases) {
        expect(
          durationAgo(duration, locale: en.locale, steps: steps),
          expected,
        );
      }
    });

    test('custom formatters receive signed context', () {
      expect(
        durationAgo(
          const Duration(minutes: -3),
          locale: en.locale,
          directional: false,
          steps: <TimeAgoStep>[
            TimeAgoStep.custom(
              formatter: (context) => context.isFuture && !context.directional
                  ? 'future custom'
                  : 'past custom',
            ),
          ],
        ),
        'future custom',
      );
    });

    test('twitter steps switch to localized dates', () {
      final to = DateTime(2026, 7, 24, 12);
      expect(
        timeAgo(
          DateTime(2026, 7, 20),
          to: to,
          locale: en.locale,
          format: TimeAgoFormat.mini,
          steps: TimeAgoSteps.twitter,
        ),
        '20 Jul',
      );
      expect(
        timeAgo(
          DateTime(2025, 12, 20),
          to: to,
          locale: en.locale,
          format: TimeAgoFormat.mini,
          steps: TimeAgoSteps.twitter,
        ),
        '20 Dec 2025',
      );
    });

    test('twitter steps format future dates inside and outside the year', () {
      final to = DateTime(2026, 7, 24, 12);
      expect(
        timeAgo(
          DateTime(2026, 7, 28),
          to: to,
          locale: en.locale,
          steps: TimeAgoSteps.twitter,
        ),
        '28 Jul',
      );
      expect(
        timeAgo(
          DateTime(2027, 1, 20),
          to: to,
          locale: en.locale,
          steps: TimeAgoSteps.twitter,
        ),
        '20 Jan 2027',
      );
    });

    test('calculates exact rounded-value and step transitions', () {
      final now = DateTime(2026);
      final stepResult = timeAgoResult(
        now.subtract(const Duration(seconds: 29, milliseconds: 500)),
        to: now,
        locale: en.locale,
        format: TimeAgoFormat.long,
        directional: true,
      );
      expect(stepResult.text, 'just now');
      expect(
        (stepResult.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(milliseconds: 500),
      );

      final roundedResult = timeAgoResult(
        now.subtract(const Duration(minutes: 1, seconds: 36)),
        to: now,
        locale: en.locale,
        format: TimeAgoFormat.long,
        directional: true,
        steps: const <TimeAgoStep>[
          TimeAgoStep.unit(TimeAgoUnit.minute),
        ],
      );
      expect(roundedResult.text, '2 minutes ago');
      expect(
        (roundedResult.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 54),
      );
    });

    test('schedules normal future decreases, step changes, and zero', () {
      final now = DateTime(2026);
      final cases = <(Duration, String, Duration)>[
        (
          const Duration(minutes: 2),
          'in 2 minutes',
          const Duration(seconds: 30, microseconds: 1),
        ),
        (
          const Duration(seconds: 30),
          'in 1 minute',
          const Duration(microseconds: 1),
        ),
        (
          const Duration(seconds: 29, microseconds: 999999),
          'in a moment',
          const Duration(seconds: 30),
        ),
        (
          Duration.zero,
          'now',
          const Duration(microseconds: 1),
        ),
      ];
      for (final (distance, text, nextUpdate) in cases) {
        final result = timeAgoResult(
          now.add(distance),
          to: now,
          locale: en.locale,
        );
        expect(result.text, text);
        expect(
          (result.nextUpdate as TimeAgoUpdateAfter).duration,
          nextUpdate,
        );
      }
    });
  });

  group('custom multiplied units', () {
    test('formats fortnights and applies granularity after multiplication', () {
      TimeAgoStepContext? selectedContext;
      final fortnight = TimeAgoStep.custom(
        unit: TimeAgoUnit.week,
        unitMultiplier: 2,
        rounding: TimeAgoRounding.floor,
        formatter: (context) {
          selectedContext = context;
          return '${context.amount} fortnights';
        },
      );
      expect(
        durationAgo(
          const Duration(days: 42),
          locale: en.locale,
          steps: <TimeAgoStep>[fortnight],
        ),
        '3 fortnights',
      );
      expect(selectedContext!.unit, TimeAgoUnit.week);
      expect(selectedContext!.unitMultiplier, 2);
      expect(fortnight.unitMultiplier, 2);

      expect(
        durationAgo(
          const Duration(days: 182),
          locale: en.locale,
          steps: const <TimeAgoStep>[
            TimeAgoStep.custom(
              unit: TimeAgoUnit.week,
              unitMultiplier: 2,
              granularity: 5,
              formatter: _multipliedUnitFormatter,
            ),
          ],
        ),
        '15 fortnights',
      );
    });

    test('defaults the multiplier to one', () {
      TimeAgoStepContext? selectedContext;
      final step = TimeAgoStep.custom(
        unit: TimeAgoUnit.week,
        formatter: (context) {
          selectedContext = context;
          return '${context.amount} weeks';
        },
      );
      expect(
        durationAgo(
          const Duration(days: 14),
          locale: en.locale,
          steps: <TimeAgoStep>[step],
        ),
        '2 weeks',
      );
      expect(step.unitMultiplier, 1);
      expect(selectedContext!.unitMultiplier, 1);
    });

    test('infers rounded decade and century thresholds from effective units',
        () {
      final year = TimeAgoUnit.year.microseconds;
      const steps = <TimeAgoStep>[
        TimeAgoStep.unit(TimeAgoUnit.year),
        TimeAgoStep.custom(
          unit: TimeAgoUnit.year,
          unitMultiplier: 10,
          formatter: _multipliedUnitFormatter,
        ),
        TimeAgoStep.custom(
          unit: TimeAgoUnit.year,
          unitMultiplier: 100,
          formatter: _multipliedUnitFormatter,
        ),
      ];

      expect(
        durationAgo(
          Duration(microseconds: year * 19 ~/ 2 - 1),
          locale: en.locale,
          steps: steps,
        ),
        '9 years ago',
      );
      expect(
        durationAgo(
          Duration(microseconds: year * 19 ~/ 2),
          locale: en.locale,
          steps: steps,
        ),
        '1 decade',
      );
      expect(
        durationAgo(
          Duration(microseconds: year * 95 - 1),
          locale: en.locale,
          steps: steps,
        ),
        '9 decades',
      );
      expect(
        durationAgo(
          Duration(microseconds: year * 95),
          locale: en.locale,
          steps: steps,
        ),
        '1 century',
      );
    });

    test('infers floor thresholds at complete multiplied units', () {
      final year = TimeAgoUnit.year.microseconds;
      const steps = <TimeAgoStep>[
        TimeAgoStep.unit(
          TimeAgoUnit.year,
          rounding: TimeAgoRounding.floor,
        ),
        TimeAgoStep.custom(
          unit: TimeAgoUnit.year,
          unitMultiplier: 10,
          rounding: TimeAgoRounding.floor,
          formatter: _multipliedUnitFormatter,
        ),
        TimeAgoStep.custom(
          unit: TimeAgoUnit.year,
          unitMultiplier: 100,
          rounding: TimeAgoRounding.floor,
          formatter: _multipliedUnitFormatter,
        ),
      ];

      expect(
        durationAgo(
          Duration(microseconds: year * 10 - 1),
          locale: en.locale,
          steps: steps,
        ),
        '9 years ago',
      );
      expect(
        durationAgo(
          Duration(microseconds: year * 10),
          locale: en.locale,
          steps: steps,
        ),
        '1 decade',
      );
      expect(
        durationAgo(
          Duration(microseconds: year * 100 - 1),
          locale: en.locale,
          steps: steps,
        ),
        '9 decades',
      );
      expect(
        durationAgo(
          Duration(microseconds: year * 100),
          locale: en.locale,
          steps: steps,
        ),
        '1 century',
      );
    });

    test('exposes the multiplier while resolving a dynamic threshold', () {
      TimeAgoMinTimeContext? thresholdContext;
      durationAgo(
        const Duration(days: 14),
        locale: en.locale,
        steps: <TimeAgoStep>[
          TimeAgoStep.custom(
            unit: TimeAgoUnit.week,
            unitMultiplier: 2,
            minTimeResolver: (context) {
              thresholdContext = context;
              return Duration.zero;
            },
            formatter: _multipliedUnitFormatter,
          ),
        ],
      );
      expect(thresholdContext!.unitMultiplier, 2);
    });
  });

  group('custom update composition', () {
    final now = DateTime(2026);

    TimeAgoResult formatWith({
      required TimeAgoUpdate Function(TimeAgoStepContext)? nextUpdate,
      Duration nextStepMin = const Duration(seconds: 5),
      TimeAgoStep? cutoffStep,
    }) {
      return timeAgoResult(
        now.subtract(const Duration(seconds: 1)),
        to: now,
        locale: en.locale,
        format: TimeAgoFormat.long,
        directional: true,
        steps: <TimeAgoStep>[
          TimeAgoStep.custom(
            formatter: (_) => 'custom',
            nextUpdate: nextUpdate,
          ),
          TimeAgoStep.custom(
            minTime: nextStepMin,
            formatter: (_) => 'next',
          ),
        ],
        cutoffStep: cutoffStep,
      );
    }

    test('chooses the earliest formatter, step, or cutoff update', () {
      final formatterFirst = formatWith(
        nextUpdate: (_) => const TimeAgoUpdate.after(Duration(seconds: 2)),
      );
      expect(
        (formatterFirst.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 2),
      );

      final stepFirst = formatWith(
        nextUpdate: (_) => const TimeAgoUpdate.after(Duration(seconds: 10)),
      );
      expect(
        (stepFirst.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 4),
      );

      final cutoffFirst = formatWith(
        nextUpdate: (_) => const TimeAgoUpdate.after(Duration(seconds: 10)),
        nextStepMin: const Duration(seconds: 10),
        cutoffStep: const TimeAgoStep.unit(
          TimeAgoUnit.second,
          cutoffAmount: 3,
        ),
      );
      expect(
        (cutoffFirst.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 2, microseconds: 1),
      );
    });

    test('never updates still yield to structural transitions', () {
      final result = formatWith(
        nextUpdate: (_) => const TimeAgoUpdate.never(),
      );
      expect(
        (result.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 4),
      );
    });

    test('unknown updates retain polling with a structural maximum delay', () {
      final implicitUnknown = formatWith(nextUpdate: null);
      expect(
        implicitUnknown.nextUpdate,
        isA<TimeAgoUpdateUnknown>().having((update) => update.maximumDelay,
            'maximumDelay', const Duration(seconds: 4)),
      );

      final boundedUnknown = formatWith(
        nextUpdate: (_) => const TimeAgoUpdate.unknown(
          maximumDelay: Duration(seconds: 2),
        ),
      );
      expect(
        boundedUnknown.nextUpdate,
        isA<TimeAgoUpdateUnknown>().having((update) => update.maximumDelay,
            'maximumDelay', const Duration(seconds: 2)),
      );
    });
  });

  group('cutoff formatting', () {
    const threeYears = TimeAgoStep.unit(
      TimeAgoUnit.year,
      cutoffAmount: 3,
    );
    final threeYearBoundary = Duration(
      microseconds: TimeAgoUnit.year.microseconds * 3,
    );

    test('uses a strict fixed boundary in both directions', () {
      expect(
        durationAgo(
          threeYearBoundary,
          locale: en.locale,
          cutoffStep: threeYears,
        ),
        '3 years ago',
      );
      expect(
        durationAgoMulti(
          Duration(
            microseconds: threeYearBoundary.inMicroseconds + 1,
          ),
          locale: en.locale,
          cutoffStep: threeYears,
        ),
        '3+ years ago',
      );
      expect(
        durationAgo(
          Duration(
            microseconds: -threeYearBoundary.inMicroseconds,
          ),
          locale: en.locale,
          cutoffStep: threeYears,
        ),
        'in 3 years',
      );
      expect(
        durationAgo(
          Duration(
            microseconds: -threeYearBoundary.inMicroseconds - 1,
          ),
          locale: en.locale,
          cutoffStep: threeYears,
        ),
        'in 3+ years',
      );
    });

    test('uses multiplied units for strict fixed cutoffs', () {
      final boundary = Duration(
        microseconds: TimeAgoUnit.year.microseconds * 30,
      );
      const steps = <TimeAgoStep>[
        TimeAgoStep.custom(
          unit: TimeAgoUnit.year,
          unitMultiplier: 10,
          cutoffAmount: 3,
          formatter: _multipliedUnitFormatter,
        ),
      ];
      expect(
        durationAgo(boundary, locale: en.locale, steps: steps),
        '3 decades',
      );
      expect(
        durationAgo(
          boundary + const Duration(microseconds: 1),
          locale: en.locale,
          steps: steps,
        ),
        '3+ decades',
      );
      expect(
        durationAgo(
          -boundary - const Duration(microseconds: 1),
          locale: en.locale,
          steps: steps,
        ),
        '3+ decades',
      );
    });

    test('preserves width, direction, and forced future grammar', () {
      final over = Duration(
        microseconds: threeYearBoundary.inMicroseconds + 1,
      );
      expect(
        durationAgo(
          over,
          locale: en.locale,
          format: TimeAgoFormat.narrow,
          cutoffStep: threeYears,
        ),
        '3+y ago',
      );
      expect(
        durationAgo(
          over,
          locale: en.locale,
          directional: false,
          cutoffStep: threeYears,
        ),
        '3+ years',
      );
      expect(
        durationAgo(
          over,
          locale: en.locale,
          future: true,
          cutoffStep: threeYears,
        ),
        'in 3+ years',
      );
    });

    test('applies per-format cutoff resolvers after number localization', () {
      final locale = en.locale.copyWith(
        functions: const _PrefixedNumberFunctions(),
        long: en.locale.long.copyWith(
          cutoffResolver: _longCutoffResolver,
        ),
        short: en.locale.short.copyWith(
          cutoffResolver: _shortCutoffResolver,
        ),
        narrow: en.locale.narrow.copyWith(
          cutoffResolver: _narrowCutoffResolver,
        ),
        mini: en.locale.mini!.copyWith(
          cutoffResolver: _miniCutoffResolver,
        ),
      );
      final over = Duration(
        microseconds: threeYearBoundary.inMicroseconds + 1,
      );
      final cases = <(TimeAgoFormat, String)>[
        (TimeAgoFormat.long, '#3 or more years ago'),
        (TimeAgoFormat.short, '≥#3 yr ago'),
        (TimeAgoFormat.narrow, '#3+y ago'),
        (TimeAgoFormat.mini, 'more than #3y'),
      ];
      for (final (format, expected) in cases) {
        expect(
          durationAgo(
            over,
            locale: locale,
            format: format,
            cutoffStep: threeYears,
          ),
          expected,
        );
      }
    });

    test('embedded cutoffs are terminal and earliest boundary wins', () {
      const embedded = <TimeAgoStep>[
        TimeAgoStep.custom(
          unit: TimeAgoUnit.hour,
          cutoffAmount: 2,
          formatter: _embeddedCutoffFormatter,
        ),
        TimeAgoStep.unit(TimeAgoUnit.day),
      ];
      expect(
        durationAgo(
          const Duration(days: 2),
          locale: en.locale,
          steps: embedded,
        ),
        'embedded 2+',
      );

      expect(
        durationAgo(
          Duration(
            microseconds: threeYearBoundary.inMicroseconds + 1,
          ),
          locale: en.locale,
          steps: const <TimeAgoStep>[
            TimeAgoStep.custom(
              unit: TimeAgoUnit.year,
              cutoffAmount: 3,
              formatter: _embeddedCutoffFormatter,
            ),
          ],
          cutoffStep: const TimeAgoStep.custom(
            unit: TimeAgoUnit.year,
            cutoffAmount: 3,
            formatter: _standaloneCutoffFormatter,
          ),
        ),
        'standalone 3+',
      );
    });

    test('embedded DateTime cutoffs use standalone calendar boundaries', () {
      const cutoff = TimeAgoStep.unit(
        TimeAgoUnit.year,
        cutoffAmount: 3,
      );
      const embedded = <TimeAgoStep>[cutoff];
      final time = DateTime.utc(2021, 3);
      final boundary = DateTime.utc(2024, 3);
      final cases = <(DateTime, String)>[
        (boundary, '3 years ago'),
        (
          boundary.add(const Duration(microseconds: 1)),
          '3+ years ago',
        ),
      ];

      for (final (to, expected) in cases) {
        expect(
          timeAgo(
            time,
            to: to,
            locale: en.locale,
            steps: embedded,
          ),
          expected,
        );
        expect(
          timeAgo(
            time,
            to: to,
            locale: en.locale,
            cutoffStep: cutoff,
          ),
          expected,
        );
      }

      final exactResult = timeAgoResult(
        time,
        to: boundary,
        locale: en.locale,
        steps: embedded,
      );
      expect(
        (exactResult.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(microseconds: 1),
      );

      final futureResult = timeAgoResult(
        DateTime.utc(2024, 3, 2),
        to: time,
        locale: en.locale,
        steps: embedded,
      );
      expect(futureResult.text, 'in 3+ years');
      expect(
        (futureResult.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(days: 1),
      );
    });

    test('custom cutoff formatters receive capped context', () {
      expect(
        durationAgo(
          const Duration(hours: 3),
          locale: en.locale,
          cutoffStep: TimeAgoStep.custom(
            unit: TimeAgoUnit.hour,
            cutoffAmount: 2,
            formatter: (context) {
              final cutoff = context.locale
                  .labelsFor(context.format)
                  .cutoffResolver(context.amount);
              final number = cutoff.pattern.replaceAll(
                '{0}',
                context.resolvedFunctions.formatNumber(context.amount),
              );
              return '${context.isCutoff}:$number';
            },
          ),
        ),
        'true:2+',
      );
    });

    test('collapses multi-unit output at the standalone cutoff', () {
      expect(
        durationAgo(
          Duration(
            microseconds: threeYearBoundary.inMicroseconds +
                const Duration(days: 20, hours: 3).inMicroseconds,
          ),
          locale: en.locale,
          cutoffStep: threeYears,
        ),
        '3+ years ago',
      );
    });

    test('uses calendar boundaries for DateTime cutoffs', () {
      const cutoff = TimeAgoStep.unit(
        TimeAgoUnit.year,
        cutoffAmount: 3,
      );
      final time = DateTime.utc(2020, 2, 29);
      final boundary = DateTime.utc(2023, 2, 28);
      expect(
        timeAgo(
          time,
          to: boundary,
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        '3 years ago',
      );
      expect(
        timeAgoMulti(
          time,
          to: boundary.add(const Duration(microseconds: 1)),
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        '3+ years ago',
      );

      const monthCutoff = TimeAgoStep.unit(
        TimeAgoUnit.month,
        cutoffAmount: 1,
      );
      expect(
        en.locale.long.cutoffResolver(1),
        (
          plural: TimeAgoPluralCategory.many,
          pattern: '{0}+',
        ),
      );
      final monthEnd = DateTime.utc(2024, 1, 31);
      final monthBoundary = DateTime.utc(2024, 2, 29);
      expect(
        timeAgo(
          monthEnd,
          to: monthBoundary,
          locale: en.locale,
          cutoffStep: monthCutoff,
        ),
        '1 month ago',
      );
      expect(
        timeAgo(
          monthEnd,
          to: monthBoundary.add(const Duration(microseconds: 1)),
          locale: en.locale,
          cutoffStep: monthCutoff,
        ),
        '1+ months ago',
      );
      expect(
        timeAgo(
          monthEnd,
          to: monthBoundary.add(const Duration(microseconds: 1)),
          locale: ru.locale,
          cutoffStep: monthCutoff,
        ),
        '1+ месяцев назад',
      );
    });

    test('scales calendar-aware DateTime cutoffs by the multiplier', () {
      const cutoff = TimeAgoStep.custom(
        unit: TimeAgoUnit.year,
        unitMultiplier: 10,
        cutoffAmount: 3,
        formatter: _multipliedUnitFormatter,
      );
      final time = DateTime.utc(2000, 2, 29);
      final boundary = DateTime.utc(2030, 2, 28);
      expect(
        timeAgo(
          time,
          to: boundary,
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        '30 years ago',
      );
      expect(
        timeAgo(
          time,
          to: boundary.add(const Duration(microseconds: 1)),
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        '3+ decades',
      );
      expect(
        timeAgo(
          boundary,
          to: time,
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        'in 30 years',
      );
      expect(
        timeAgo(
          boundary.add(const Duration(microseconds: 1)),
          to: time,
          locale: en.locale,
          cutoffStep: cutoff,
        ),
        '3+ decades',
      );
    });

    test('reports exact live cutoff transitions', () {
      final now = DateTime(2026, 1, 1, 12);
      const cutoff = TimeAgoStep.unit(
        TimeAgoUnit.hour,
        cutoffAmount: 2,
      );
      final past = timeAgoResult(
        now.subtract(const Duration(hours: 2)),
        to: now,
        locale: en.locale,
        format: TimeAgoFormat.long,
        directional: true,
        cutoffStep: cutoff,
      );
      expect(past.text, '2 hours ago');
      expect(
        (past.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(microseconds: 1),
      );

      final future = timeAgoResult(
        now.add(const Duration(hours: 2, seconds: 5)),
        to: now,
        locale: en.locale,
        format: TimeAgoFormat.long,
        directional: true,
        cutoffStep: cutoff,
      );
      expect(future.text, 'in 2+ hours');
      expect(
        (future.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 5),
      );

      final customFuture = timeAgoResult(
        now.add(const Duration(hours: 2, seconds: 5)),
        to: now,
        locale: en.locale,
        format: TimeAgoFormat.long,
        directional: true,
        cutoffStep: TimeAgoStep.custom(
          unit: TimeAgoUnit.hour,
          cutoffAmount: 2,
          formatter: (_) => 'custom cutoff',
          nextUpdate: (_) => const TimeAgoUpdate.after(Duration(seconds: 10)),
        ),
      );
      expect(customFuture.text, 'custom cutoff');
      expect(
        (customFuture.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 5),
      );
    });

    test('reports exact embedded cutoff entry and exit transitions', () {
      final now = DateTime(2026, 1, 1, 12);
      const steps = <TimeAgoStep>[
        TimeAgoStep.unit(TimeAgoUnit.hour, cutoffAmount: 2),
      ];
      final past = timeAgoResult(
        now.subtract(const Duration(hours: 2)),
        to: now,
        locale: en.locale,
        steps: steps,
      );
      expect(past.text, '2 hours ago');
      expect(
        (past.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(microseconds: 1),
      );

      final future = timeAgoResult(
        now.add(const Duration(hours: 2, seconds: 5)),
        to: now,
        locale: en.locale,
        steps: steps,
      );
      expect(future.text, 'in 2+ hours');
      expect(
        (future.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 5),
      );
    });

    test('reports strict standalone cutoff transitions in multi mode', () {
      final now = DateTime(2026, 1, 1, 12);
      const cutoff = TimeAgoStep.unit(
        TimeAgoUnit.hour,
        cutoffAmount: 2,
      );
      final past = timeAgoMultiResult(
        now.subtract(const Duration(hours: 2)),
        to: now,
        locale: en.locale,
        cutoffStep: cutoff,
      );
      expect(past.text, '2 hours ago');
      expect(
        (past.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(microseconds: 1),
      );

      final future = timeAgoMultiResult(
        now.add(const Duration(hours: 2, seconds: 5)),
        to: now,
        locale: en.locale,
        cutoffStep: cutoff,
      );
      expect(future.text, 'in 2+ hours');
      expect(
        (future.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(seconds: 5),
      );
    });

    test('schedules future calendar cutoff exits', () {
      final now = DateTime.utc(2026, 2, 28);
      final result = timeAgoResult(
        DateTime.utc(2029, 3),
        to: now,
        locale: en.locale,
        format: TimeAgoFormat.long,
        directional: true,
        cutoffStep: const TimeAgoStep.unit(
          TimeAgoUnit.year,
          cutoffAmount: 3,
        ),
      );
      expect(result.text, 'in 3+ years');
      expect(
        (result.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(days: 1),
      );
    });
  });

  group('argument validation', () {
    test('rejects empty step and unit lists with public parameter names', () {
      expect(
        () => durationAgo(
          Duration.zero,
          locale: en.locale,
          steps: const <TimeAgoStep>[],
        ),
        throwsA(
          isA<ArgumentError>()
              .having((error) => error.name, 'name', 'steps')
              .having(
                (error) => error.message,
                'message',
                'At least one step is required.',
              ),
        ),
      );
      expect(
        () => durationAgoMulti(
          Duration.zero,
          locale: en.locale,
          units: const <TimeAgoUnit>[],
        ),
        throwsA(
          isA<ArgumentError>()
              .having((error) => error.name, 'name', 'units')
              .having(
                (error) => error.message,
                'message',
                'At least one unit is required.',
              ),
        ),
      );
    });

    test('rejects negative fixed and dynamically resolved thresholds', () {
      final cases = <TimeAgoStep>[
        const TimeAgoStep.unit(
          TimeAgoUnit.second,
          minTime: Duration(microseconds: -1),
        ),
        TimeAgoStep.custom(
          minTimeResolver: (_) => const Duration(microseconds: -1),
          formatter: (_) => '',
        ),
      ];
      for (final step in cases) {
        expect(
          () => durationAgo(
            Duration.zero,
            locale: en.locale,
            steps: <TimeAgoStep>[step],
          ),
          throwsA(
            isA<ArgumentError>()
                .having(
                  (error) => error.name,
                  'name',
                  'steps[0].minTime',
                )
                .having(
                  (error) => error.message,
                  'message',
                  'Step thresholds cannot be negative.',
                ),
          ),
        );
      }
    });

    test('rejects unitless custom steps without a threshold', () {
      expect(
        () => durationAgo(
          Duration.zero,
          locale: en.locale,
          steps: <TimeAgoStep>[
            const TimeAgoStep.unit(TimeAgoUnit.second),
            TimeAgoStep.custom(formatter: (_) => ''),
          ],
        ),
        throwsA(
          isA<ArgumentError>().having(
            (error) => error.message,
            'message',
            contains('must define minTime or minTimeResolver'),
          ),
        ),
      );
    });

    test('rejects non-positive granularities with indexed diagnostics', () {
      for (final granularity in <int>[0, -1]) {
        expect(
          () => durationAgo(
            Duration.zero,
            locale: en.locale,
            steps: <TimeAgoStep>[
              TimeAgoStep.unit(
                TimeAgoUnit.second,
                granularity: granularity,
              ),
            ],
          ),
          throwsA(
            isA<ArgumentError>()
                .having(
                  (error) => error.name,
                  'name',
                  'steps[0].granularity',
                )
                .having(
                  (error) => error.message,
                  'message',
                  'Granularity must be greater than zero.',
                ),
          ),
        );
      }
    });

    test('rejects now, duplicates, and invalid ordering in multi mode', () {
      for (final units in <List<TimeAgoUnit>>[
        <TimeAgoUnit>[TimeAgoUnit.now],
        <TimeAgoUnit>[TimeAgoUnit.day, TimeAgoUnit.day],
        <TimeAgoUnit>[TimeAgoUnit.minute, TimeAgoUnit.hour],
      ]) {
        expect(
          () => durationAgoMulti(
            const Duration(days: 1),
            locale: en.locale,
            units: units,
          ),
          throwsArgumentError,
        );
      }
    });

    test('rejects invalid cutoff steps', () {
      expect(
        () => durationAgo(
          const Duration(days: 1),
          locale: en.locale,
          cutoffStep: const TimeAgoStep.unit(TimeAgoUnit.year),
        ),
        throwsArgumentError,
      );
      for (final step in <TimeAgoStep>[
        const TimeAgoStep.unit(TimeAgoUnit.year, cutoffAmount: 0),
        const TimeAgoStep.unit(TimeAgoUnit.now, cutoffAmount: 1),
        TimeAgoStep.custom(
          cutoffAmount: 1,
          formatter: (_) => '',
        ),
      ]) {
        expect(
          () => durationAgo(
            const Duration(days: 1),
            locale: en.locale,
            steps: <TimeAgoStep>[step],
          ),
          throwsArgumentError,
        );
      }
    });

    test('rejects invalid custom unit multipliers', () {
      for (final step in <TimeAgoStep>[
        const TimeAgoStep.custom(
          unit: TimeAgoUnit.week,
          unitMultiplier: 0,
          formatter: _multipliedUnitFormatter,
        ),
        const TimeAgoStep.custom(
          unitMultiplier: 2,
          formatter: _multipliedUnitFormatter,
        ),
        const TimeAgoStep.custom(
          unit: TimeAgoUnit.now,
          unitMultiplier: 2,
          formatter: _multipliedUnitFormatter,
        ),
      ]) {
        expect(
          () => durationAgo(
            const Duration(days: 1),
            locale: en.locale,
            steps: <TimeAgoStep>[step],
          ),
          throwsArgumentError,
        );
      }

      expect(
        () => durationAgo(
          const Duration(days: 1),
          locale: en.locale,
          cutoffStep: const TimeAgoStep.custom(
            unit: TimeAgoUnit.year,
            unitMultiplier: -1,
            cutoffAmount: 1,
            formatter: _multipliedUnitFormatter,
          ),
        ),
        throwsArgumentError,
      );
    });
  });

  group('multi-unit formatting', () {
    test('can force future grammar', () {
      expect(
        durationAgoMulti(
          Duration.zero,
          locale: en.locale,
          future: true,
        ),
        'in a moment',
      );
      expect(
        durationAgoMulti(
          const Duration(minutes: 2),
          locale: en.locale,
          future: true,
        ),
        'in 2 minutes',
      );
    });

    test('uses fixed 360/90/30-day duration units', () {
      expect(
        durationAgoMulti(
          const Duration(days: 400, hours: 2),
          locale: en.locale,
        ),
        '1 year, 1 month, 10 days, and 2 hours ago',
      );
      expect(
        durationAgoMulti(
          const Duration(days: 91),
          locale: en.locale,
          units: const <TimeAgoUnit>[
            TimeAgoUnit.quarter,
            TimeAgoUnit.day,
          ],
        ),
        '1 quarter and 1 day ago',
      );
    });

    test('uses calendar-aware month-end clamping', () {
      expect(
        timeAgoMulti(
          DateTime.utc(2024, 1, 31),
          to: DateTime.utc(2024, 3),
          locale: en.locale,
          units: const <TimeAgoUnit>[
            TimeAgoUnit.month,
            TimeAgoUnit.day,
          ],
        ),
        '1 month and 1 day ago',
      );
      expect(
        timeAgoMulti(
          DateTime.utc(2024, 2, 29),
          to: DateTime.utc(2025, 2, 28),
          locale: en.locale,
          units: const <TimeAgoUnit>[
            TimeAgoUnit.year,
            TimeAgoUnit.month,
            TimeAgoUnit.day,
          ],
        ),
        '1 year ago',
      );
      expect(
        timeAgoMulti(
          DateTime.utc(2024, 1, 31),
          to: DateTime.utc(2024, 5, 1),
          locale: en.locale,
          units: const <TimeAgoUnit>[
            TimeAgoUnit.quarter,
            TimeAgoUnit.day,
          ],
        ),
        '1 quarter and 1 day ago',
      );
      expect(
        timeAgoMulti(
          DateTime(2024, 1, 31),
          to: DateTime(2024, 3),
          locale: en.locale,
          units: const <TimeAgoUnit>[
            TimeAgoUnit.month,
            TimeAgoUnit.day,
          ],
        ),
        '1 month and 1 day ago',
      );
    });

    test('wraps once only when direction is enabled', () {
      const future = Duration(days: -31, hours: -2);
      expect(
        durationAgoMulti(future, locale: en.locale),
        'in 1 month, 1 day, and 2 hours',
      );
      expect(
        durationAgoMulti(
          future,
          locale: en.locale,
          format: TimeAgoFormat.mini,
        ),
        '1mo 1d 2h',
      );
      expect(
        durationAgoMulti(
          future,
          locale: en.locale,
          directional: false,
        ),
        '1 month, 1 day, and 2 hours',
      );
      expect(
        durationAgoMulti(
          future,
          locale: en.locale,
          format: TimeAgoFormat.mini,
          directional: true,
        ),
        'in 1mo 1d 2h',
      );
    });

    test('uses now and promotes sub-unit nonzero values', () {
      expect(
        durationAgoMulti(Duration.zero, locale: en.locale),
        'now',
      );
      expect(
        durationAgoMulti(
          const Duration(seconds: 20),
          locale: en.locale,
          units: const <TimeAgoUnit>[TimeAgoUnit.minute],
        ),
        '1 minute ago',
      );
    });

    test('reports exact zero and future multi-unit update deadlines', () {
      final now = DateTime(2026);
      final zero = timeAgoMultiResult(now, to: now, locale: en.locale);
      expect(zero.text, 'now');
      expect(
        (zero.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(microseconds: 1),
      );

      final future = timeAgoMultiResult(
        now.add(const Duration(minutes: 2, seconds: 3)),
        to: now,
        locale: en.locale,
        units: const <TimeAgoUnit>[
          TimeAgoUnit.minute,
          TimeAgoUnit.second,
        ],
      );
      expect(future.text, 'in 2 minutes and 3 seconds');
      expect(
        (future.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(microseconds: 1),
      );
    });

    test('schedules calendar units from their displayed boundaries', () {
      const units = <TimeAgoUnit>[TimeAgoUnit.month];

      final regularMonth = timeAgoMultiResult(
        DateTime.utc(2023),
        to: DateTime.utc(2023, 1, 31),
        locale: en.locale,
        units: units,
      );
      expect(regularMonth.text, '1 month ago');
      expect(
        (regularMonth.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(days: 29),
      );

      final clampedMonth = timeAgoMultiResult(
        DateTime.utc(2023, 1, 31),
        to: DateTime.utc(2023, 3),
        locale: en.locale,
        units: units,
      );
      expect(clampedMonth.text, '1 month ago');
      expect(
        (clampedMonth.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(days: 30),
      );

      final futureMonth = timeAgoMultiResult(
        DateTime.utc(2023, 3),
        to: DateTime.utc(2023, 1, 31),
        locale: en.locale,
        units: units,
      );
      expect(futureMonth.text, 'in 1 month');
      expect(
        (futureMonth.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(days: 29),
      );

      final calendarCarry = timeAgoMultiResult(
        DateTime.utc(2023, 1, 31),
        to: DateTime.utc(2023, 3, 28),
        locale: en.locale,
        units: const <TimeAgoUnit>[
          TimeAgoUnit.month,
          TimeAgoUnit.week,
        ],
      );
      expect(calendarCarry.text, '1 month and 4 weeks ago');
      expect(
        (calendarCarry.nextUpdate as TimeAgoUpdateAfter).duration,
        const Duration(days: 3),
      );
    });
  });
}

String _embeddedCutoffFormatter(TimeAgoStepContext context) {
  return 'embedded ${context.amount}${context.isCutoff ? '+' : ''}';
}

String _standaloneCutoffFormatter(TimeAgoStepContext context) {
  return 'standalone ${context.amount}${context.isCutoff ? '+' : ''}';
}

String _multipliedUnitFormatter(TimeAgoStepContext context) {
  final singular = switch ((context.unit, context.unitMultiplier)) {
    (TimeAgoUnit.week, 2) => 'fortnight',
    (TimeAgoUnit.year, 10) => 'decade',
    (TimeAgoUnit.year, 100) => 'century',
    (final unit?, _) => unit.name,
    _ => 'unit',
  };
  final label = context.amount == 1 ? singular : '${singular}s';
  return '${context.amount}${context.isCutoff ? '+' : ''} $label';
}

TimeAgoCutoffFormat _longCutoffResolver(int amount) {
  return (
    plural: TimeAgoPluralCategory.many,
    pattern: '{0} or more',
  );
}

TimeAgoCutoffFormat _shortCutoffResolver(int amount) {
  return (plural: TimeAgoPluralCategory.many, pattern: '≥{0}');
}

TimeAgoCutoffFormat _narrowCutoffResolver(int amount) {
  return (plural: TimeAgoPluralCategory.many, pattern: '{0}+');
}

TimeAgoCutoffFormat _miniCutoffResolver(int amount) {
  return (
    plural: TimeAgoPluralCategory.many,
    pattern: 'more than {0}',
  );
}

final class _PrefixedNumberFunctions extends EnTimeAgoLocaleFunctions {
  const _PrefixedNumberFunctions();

  @override
  String formatNumber(num value) => '#$value';
}
