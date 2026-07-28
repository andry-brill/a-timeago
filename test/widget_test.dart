import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:any_timeago/locales/it.dart' as it;
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('provider defaults and explicit overrides are resolved', (
    tester,
  ) async {
    late BuildContext captured;
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        format: TimeAgoFormat.mini,
        directional: true,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              captured = context;
              return Column(
                children: <Widget>[
                  TimeAgoText.duration(duration: const Duration(minutes: 2)),
                  TimeAgoText.duration(
                    duration: const Duration(minutes: 2),
                    locale: it.locale,
                    format: TimeAgoFormat.long,
                    directional: false,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );

    expect(find.text('2m ago'), findsOneWidget);
    expect(find.text('2 minuti'), findsOneWidget);
    expect(
      captured.durationAgo(const Duration(hours: 1)),
      '1h ago',
    );
  });

  testWidgets('provider steps and multi-units allow explicit overrides', (
    tester,
  ) async {
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        steps: TimeAgoSteps.precise,
        multiUnits: const <TimeAgoUnit>[
          TimeAgoUnit.hour,
          TimeAgoUnit.minute,
        ],
        child: const Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: <Widget>[
              TimeAgoText.duration(duration: Duration(seconds: 45)),
              TimeAgoText.duration(
                duration: Duration(hours: 2, minutes: 3, seconds: 4),
                multi: true,
              ),
              TimeAgoText.duration(
                duration: Duration(seconds: 45),
                steps: TimeAgoSteps.fromMinute,
              ),
              TimeAgoText.duration(
                duration: Duration(hours: 2, minutes: 3, seconds: 4),
                multi: true,
                units: <TimeAgoUnit>[TimeAgoUnit.second],
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.text('45 seconds ago'), findsOneWidget);
    expect(find.text('2 hours and 3 minutes ago'), findsOneWidget);
    expect(find.text('1 minute ago'), findsOneWidget);
    expect(find.text('7,384 seconds ago'), findsOneWidget);
  });

  testWidgets('step and multi-unit provider changes rebuild descendants', (
    tester,
  ) async {
    Widget build({
      required List<TimeAgoStep> steps,
      required List<TimeAgoUnit> units,
    }) {
      return TimeAgoProvider(
        locale: en.locale,
        steps: steps,
        multiUnits: units,
        child: const Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: <Widget>[
              TimeAgoText.duration(duration: Duration(seconds: 45)),
              TimeAgoText.duration(
                duration: Duration(hours: 2, minutes: 3),
                multi: true,
              ),
            ],
          ),
        ),
      );
    }

    await tester.pumpWidget(
      build(
        steps: TimeAgoSteps.precise,
        units: const <TimeAgoUnit>[TimeAgoUnit.hour],
      ),
    );
    expect(find.text('45 seconds ago'), findsOneWidget);
    expect(find.text('2 hours ago'), findsOneWidget);

    await tester.pumpWidget(
      build(
        steps: TimeAgoSteps.fromMinute,
        units: const <TimeAgoUnit>[TimeAgoUnit.minute],
      ),
    );
    expect(find.text('1 minute ago'), findsOneWidget);
    expect(find.text('123 minutes ago'), findsOneWidget);
  });

  testWidgets('nested unfrozen providers share their parent scheduler', (
    tester,
  ) async {
    late TimeAgoProviderData outer;
    late TimeAgoProviderData inner;
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              outer = TimeAgoProvider.of(context);
              return TimeAgoProvider(
                locale: it.locale,
                child: Builder(
                  builder: (context) {
                    inner = TimeAgoProvider.of(context);
                    return const SizedBox();
                  },
                ),
              );
            },
          ),
        ),
      ),
    );

    expect(inner.scheduler, same(outer.scheduler));
    expect(inner.locale, same(it.locale));
  });

  testWidgets('context exposes matching single, multi, and result APIs', (
    tester,
  ) async {
    final now = DateTime.utc(2026);
    final time = now.subtract(const Duration(minutes: 2, seconds: 3));
    late BuildContext captured;
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        frozenAt: now,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              captured = context;
              return const SizedBox();
            },
          ),
        ),
      ),
    );

    expect(captured.timeAgo(time), '2 minutes ago');
    expect(captured.timeAgoMulti(time), '2 minutes and 3 seconds ago');
    expect(captured.timeAgoResult(time).text, '2 minutes ago');
    expect(
      captured.timeAgoMultiResult(time).text,
      '2 minutes and 3 seconds ago',
    );
    expect(
      captured.durationAgo(const Duration(minutes: 2)),
      '2 minutes ago',
    );
    expect(
      captured.durationAgoMulti(const Duration(minutes: 2)),
      '2 minutes ago',
    );
    expect(
      captured.durationAgoResult(const Duration(minutes: 2)).nextUpdate,
      isA<TimeAgoUpdateNever>(),
    );
    expect(
      captured.durationAgoMultiResult(const Duration(minutes: 2)).nextUpdate,
      isA<TimeAgoUpdateNever>(),
    );
  });

  testWidgets('cutoff defaults and explicit overrides are resolved', (
    tester,
  ) async {
    late BuildContext captured;
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        cutoffStep: const TimeAgoStep.unit(
          TimeAgoUnit.hour,
          cutoffAmount: 1,
        ),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              captured = context;
              return Column(
                children: const <Widget>[
                  TimeAgoText.duration(duration: Duration(hours: 2)),
                  TimeAgoText.duration(
                    duration: Duration(hours: 2),
                    cutoffStep: TimeAgoStep.unit(
                      TimeAgoUnit.hour,
                      cutoffAmount: 3,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );

    expect(find.text('1+ hours ago'), findsOneWidget);
    expect(find.text('2 hours ago'), findsOneWidget);
    expect(
      captured.durationAgo(const Duration(hours: 2)),
      '1+ hours ago',
    );
  });

  testWidgets('cutoff provider changes notify descendants', (tester) async {
    Widget build(int cutoffAmount) {
      return TimeAgoProvider(
        locale: en.locale,
        cutoffStep: TimeAgoStep.unit(
          TimeAgoUnit.hour,
          cutoffAmount: cutoffAmount,
        ),
        child: const Directionality(
          textDirection: TextDirection.ltr,
          child: TimeAgoText.duration(duration: Duration(hours: 2)),
        ),
      );
    }

    await tester.pumpWidget(build(1));
    expect(find.text('1+ hours ago'), findsOneWidget);

    await tester.pumpWidget(build(3));
    expect(find.text('2 hours ago'), findsOneWidget);
  });

  testWidgets('missing locale reports a useful Flutter error', (tester) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: TimeAgoText.duration(duration: const Duration(minutes: 2)),
      ),
    );
    final error = tester.takeException();
    expect(error, isA<FlutterError>());
    expect(error.toString(), contains('has no locale'));
  });

  testWidgets('missing providers report useful direct and extension errors', (
    tester,
  ) async {
    late BuildContext captured;
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Builder(
          builder: (context) {
            captured = context;
            return const SizedBox();
          },
        ),
      ),
    );

    expect(
      () => TimeAgoProvider.of(captured),
      throwsA(
        isA<FlutterError>().having(
          (error) => error.toString(),
          'message',
          contains('No TimeAgoProvider found'),
        ),
      ),
    );
    expect(
      () => captured.durationAgo(const Duration(minutes: 1)),
      throwsA(
        isA<FlutterError>().having(
          (error) => error.toString(),
          'message',
          contains('context.durationAgo() needs a locale argument'),
        ),
      ),
    );
  });

  testWidgets('widgets reject steps and units from the incompatible mode', (
    tester,
  ) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: TimeAgoText.duration(
          duration: Duration(minutes: 1),
          locale: en.locale,
          multi: true,
          steps: TimeAgoSteps.precise,
        ),
      ),
    );
    var error = tester.takeException();
    expect(error, isA<ArgumentError>());
    expect(
        error.toString(), contains('steps is only valid when multi is false'));

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: TimeAgoText.duration(
          duration: Duration(minutes: 1),
          locale: en.locale,
          units: <TimeAgoUnit>[TimeAgoUnit.minute],
        ),
      ),
    );
    error = tester.takeException();
    expect(error, isA<ArgumentError>());
    expect(
        error.toString(), contains('units is only valid when multi is true'));
  });

  testWidgets('future grammar resolves from provider and can be overridden', (
    tester,
  ) async {
    late BuildContext captured;
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        future: true,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              captured = context;
              return Column(
                children: <Widget>[
                  TimeAgoText.duration(duration: Duration.zero),
                  TimeAgoText.duration(
                    duration: Duration.zero,
                    future: false,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );

    expect(find.text('in a moment'), findsOneWidget);
    expect(find.text('now'), findsOneWidget);
    expect(captured.durationAgo(Duration.zero), 'in a moment');
    expect(
      captured.durationAgo(Duration.zero, future: false),
      'now',
    );
  });

  testWidgets('live text rebuilds at its exact step boundary', (tester) async {
    var now = DateTime(2026, 1, 1, 12);
    final scheduler = TimeAgoScheduler(clock: () => now);
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        scheduler: scheduler,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: TimeAgoText(time: now.subtract(const Duration(seconds: 29))),
        ),
      ),
    );
    expect(find.text('just now'), findsOneWidget);

    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('1 minute ago'), findsOneWidget);
    scheduler.dispose();
  });

  testWidgets('autoUpdate reconnects and disconnects at runtime', (
    tester,
  ) async {
    final base = DateTime.now();
    var now = base;
    final scheduler = TimeAgoScheduler(clock: () => now);
    final time = base.subtract(const Duration(minutes: 2));

    Widget build(bool autoUpdate) {
      return TimeAgoProvider(
        locale: en.locale,
        scheduler: scheduler,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: TimeAgoText(
            time: time,
            autoUpdate: autoUpdate,
          ),
        ),
      );
    }

    await tester.pumpWidget(build(false));
    expect(find.text('2 minutes ago'), findsOneWidget);

    await tester.pumpWidget(build(true));
    now = now.add(const Duration(seconds: 31));
    await tester.pump(const Duration(seconds: 31));
    expect(find.text('3 minutes ago'), findsOneWidget);

    now = base;
    await tester.pumpWidget(build(false));
    expect(find.text('2 minutes ago'), findsOneWidget);
    now = now.add(const Duration(minutes: 2));
    await tester.pump(const Duration(minutes: 2));
    expect(find.text('2 minutes ago'), findsOneWidget);

    scheduler.dispose();
  });

  testWidgets('an explicit to value disables live scheduling', (tester) async {
    var now = DateTime(2026, 1, 1, 12);
    final to = now;
    final scheduler = TimeAgoScheduler(clock: () => now);
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        scheduler: scheduler,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: TimeAgoText(
            time: to.subtract(const Duration(seconds: 29)),
            to: to,
          ),
        ),
      ),
    );
    expect(find.text('just now'), findsOneWidget);

    now = now.add(const Duration(minutes: 2));
    await tester.pump(const Duration(minutes: 2));
    expect(find.text('just now'), findsOneWidget);
    scheduler.dispose();
  });

  testWidgets('live multi-unit text crosses a component boundary', (
    tester,
  ) async {
    var now = DateTime(2026, 1, 1, 12);
    final scheduler = TimeAgoScheduler(clock: () => now);
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        scheduler: scheduler,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: TimeAgoText(
            time: now.subtract(const Duration(minutes: 2, seconds: 3)),
            multi: true,
            units: const <TimeAgoUnit>[
              TimeAgoUnit.minute,
              TimeAgoUnit.second,
            ],
          ),
        ),
      ),
    );
    expect(find.text('2 minutes and 3 seconds ago'), findsOneWidget);

    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('2 minutes and 4 seconds ago'), findsOneWidget);
    scheduler.dispose();
  });

  testWidgets(
      'custom fallback polling remains bounded by an exact step transition',
      (tester) async {
    var now = DateTime(2026, 1, 1, 12);
    final time = now.subtract(const Duration(seconds: 1));
    final scheduler = TimeAgoScheduler(
      clock: () => now,
      unknownUpdateInterval: const Duration(seconds: 10),
    );
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        scheduler: scheduler,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: TimeAgoText(
            time: time,
            steps: <TimeAgoStep>[
              TimeAgoStep.custom(
                formatter: (context) =>
                    'custom ${context.absoluteDuration.inSeconds}',
              ),
              TimeAgoStep.custom(
                minTime: const Duration(seconds: 25),
                formatter: (_) => 'boundary',
              ),
            ],
          ),
        ),
      ),
    );
    expect(find.text('custom 1'), findsOneWidget);

    now = now.add(const Duration(seconds: 10));
    await tester.pump(const Duration(seconds: 10));
    expect(find.text('custom 11'), findsOneWidget);

    now = now.add(const Duration(seconds: 10));
    await tester.pump(const Duration(seconds: 10));
    expect(find.text('custom 21'), findsOneWidget);

    now = now.add(const Duration(seconds: 3));
    await tester.pump(const Duration(seconds: 3));
    expect(find.text('custom 21'), findsOneWidget);

    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('boundary'), findsOneWidget);
    scheduler.dispose();
  });

  testWidgets('live text enters and exits a cutoff at exact boundaries', (
    tester,
  ) async {
    var now = DateTime(2026, 1, 1, 12);
    final scheduler = TimeAgoScheduler(clock: () => now);
    const cutoff = TimeAgoStep.unit(
      TimeAgoUnit.hour,
      cutoffAmount: 2,
    );
    await tester.pumpWidget(
      TimeAgoProvider(
        locale: en.locale,
        scheduler: scheduler,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: <Widget>[
              TimeAgoText(
                time: now.subtract(const Duration(hours: 2)),
                cutoffStep: cutoff,
              ),
              TimeAgoText(
                time: now.add(const Duration(hours: 2, seconds: 1)),
                cutoffStep: cutoff,
              ),
            ],
          ),
        ),
      ),
    );
    expect(find.text('2 hours ago'), findsOneWidget);
    expect(find.text('in 2+ hours'), findsOneWidget);

    now = now.add(const Duration(microseconds: 1));
    await tester.pump(const Duration(microseconds: 1));
    expect(find.text('2+ hours ago'), findsOneWidget);

    now = now.add(const Duration(microseconds: 999999));
    await tester.pump(const Duration(microseconds: 999999));
    expect(find.text('in 2 hours'), findsOneWidget);
    scheduler.dispose();
  });

  testWidgets('frozen provider remains stable and can be moved',
      (tester) async {
    final key = GlobalKey();
    final time = DateTime(2026, 1, 1, 11, 59, 30);
    Widget build(DateTime frozenAt) {
      return TimeAgoProvider(
        key: key,
        locale: en.locale,
        frozenAt: frozenAt,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: TimeAgoText(time: time),
        ),
      );
    }

    await tester.pumpWidget(build(DateTime(2026, 1, 1, 12)));
    expect(find.text('1 minute ago'), findsOneWidget);
    await tester.pump(const Duration(hours: 2));
    expect(find.text('1 minute ago'), findsOneWidget);

    await tester.pumpWidget(build(DateTime(2026, 1, 1, 13)));
    expect(find.text('1 hour ago'), findsOneWidget);
  });

  testWidgets('builder duration is one-shot and scheduler disposes cleanly', (
    tester,
  ) async {
    var builds = 0;
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: TimeAgoBuilder.duration(
          duration: const Duration(seconds: 2),
          locale: en.locale,
          builder: (context, value) {
            builds++;
            return Text(value);
          },
        ),
      ),
    );
    expect(builds, 1);
    await tester.pump(const Duration(minutes: 2));
    expect(builds, 1);
    await tester.pumpWidget(const SizedBox());
    expect(tester.takeException(), isNull);
  });

  testWidgets('fallback functions resolve through provider and overrides', (
    tester,
  ) async {
    final locale = en.locale.copyWith(
      functions: const IntlTimeAgoLocaleFunctions('zz_ZZ'),
    );
    const providerFallback = _PrefixedEnTimeAgoLocaleFunctions('P');
    const widgetFallback = _PrefixedEnTimeAgoLocaleFunctions('W');
    const contextFallback = _PrefixedEnTimeAgoLocaleFunctions('C');
    late BuildContext captured;

    await tester.pumpWidget(
      TimeAgoProvider(
        locale: locale,
        fallbackFunctions: providerFallback,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Builder(
            builder: (context) {
              captured = context;
              return Column(
                children: <Widget>[
                  TimeAgoText.duration(
                    duration: const Duration(minutes: 2),
                  ),
                  TimeAgoText.duration(
                    duration: const Duration(minutes: 2),
                    fallbackFunctions: widgetFallback,
                  ),
                  TimeAgoProvider(
                    locale: locale,
                    child: const TimeAgoText.duration(
                      duration: Duration(minutes: 3),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );

    expect(find.text('P2 minutes ago'), findsOneWidget);
    expect(find.text('W2 minutes ago'), findsOneWidget);
    expect(find.text('P3 minutes ago'), findsOneWidget);
    expect(
      captured.durationAgo(
        const Duration(minutes: 4),
        fallbackFunctions: contextFallback,
      ),
      'C4 minutes ago',
    );
  });
}

final class _PrefixedEnTimeAgoLocaleFunctions extends EnTimeAgoLocaleFunctions {
  const _PrefixedEnTimeAgoLocaleFunctions(this.prefix);

  final String prefix;

  @override
  String formatNumber(num value) => '$prefix$value';
}
