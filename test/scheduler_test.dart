import 'package:any_timeago/any_timeago.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('rejects non-positive scheduler durations', (tester) async {
    expect(
      () => TimeAgoScheduler(unknownUpdateInterval: Duration.zero),
      throwsA(
        isA<ArgumentError>()
            .having(
              (error) => error.name,
              'name',
              'unknownUpdateInterval',
            )
            .having(
              (error) => error.message,
              'message',
              'The fallback interval must be positive.',
            ),
      ),
    );
    for (final duration in <Duration>[
      Duration.zero,
      const Duration(microseconds: -1),
    ]) {
      expect(
        () => TimeAgoScheduler(maximumTimerDuration: duration),
        throwsArgumentError,
      );
      expect(
        () => TimeAgoScheduler(clockCheckInterval: duration),
        throwsArgumentError,
      );
    }
  });

  testWidgets('one scheduler wakes only due subscriptions', (tester) async {
    var now = DateTime(2026);
    var firstCalls = 0;
    var secondCalls = 0;
    final scheduler = TimeAgoScheduler(clock: () => now);
    final first = scheduler.subscribe(() => firstCalls++);
    final second = scheduler.subscribe(() => secondCalls++);

    first.schedule(const TimeAgoUpdate.after(Duration(seconds: 1)));
    second.schedule(const TimeAgoUpdate.after(Duration(seconds: 2)));

    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(firstCalls, 1);
    expect(secondCalls, 0);

    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(firstCalls, 1);
    expect(secondCalls, 1);

    first.dispose();
    second.dispose();
    scheduler.dispose();
  });

  testWidgets('unknown timing uses the configured fallback', (tester) async {
    var now = DateTime(2026);
    var calls = 0;
    final scheduler = TimeAgoScheduler(
      clock: () => now,
      unknownUpdateInterval: const Duration(seconds: 10),
    );
    final subscription = scheduler.subscribe(() => calls++);
    subscription.schedule(const TimeAgoUpdate.unknown());

    now = now.add(const Duration(seconds: 9));
    await tester.pump(const Duration(seconds: 9));
    expect(calls, 0);

    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 1);

    subscription.dispose();
    scheduler.dispose();
  });

  testWidgets('unknown timing does not pass its maximum delay', (tester) async {
    var now = DateTime(2026);
    var calls = 0;
    final scheduler = TimeAgoScheduler(
      clock: () => now,
      unknownUpdateInterval: const Duration(seconds: 10),
    );
    final subscription = scheduler.subscribe(() => calls++);

    subscription.schedule(
      const TimeAgoUpdate.unknown(
        maximumDelay: Duration(seconds: 3),
      ),
    );
    now = now.add(const Duration(seconds: 2));
    await tester.pump(const Duration(seconds: 2));
    expect(calls, 0);
    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 1);

    subscription.schedule(
      const TimeAgoUpdate.unknown(
        maximumDelay: Duration(seconds: 20),
      ),
    );
    now = now.add(const Duration(seconds: 9));
    await tester.pump(const Duration(seconds: 9));
    expect(calls, 1);
    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 2);

    subscription.dispose();
    scheduler.dispose();
  });

  testWidgets('manual refresh reaches all current subscriptions', (
    tester,
  ) async {
    var calls = 0;
    final scheduler = TimeAgoScheduler();
    final first = scheduler.subscribe(() => calls++);
    final second = scheduler.subscribe(() => calls++);

    scheduler.refresh();
    expect(calls, 2);

    first.dispose();
    second.dispose();
    scheduler.dispose();
  });

  testWidgets('clock watchdog catches forward system-clock changes', (
    tester,
  ) async {
    var now = DateTime(2026);
    var calls = 0;
    final scheduler = TimeAgoScheduler(
      clock: () => now,
      clockCheckInterval: const Duration(seconds: 5),
    );
    final subscription = scheduler.subscribe(() => calls++);
    subscription.schedule(const TimeAgoUpdate.after(Duration(hours: 1)));

    now = now.add(const Duration(hours: 2));
    await tester.pump(const Duration(seconds: 5));
    expect(calls, 1);

    subscription.dispose();
    scheduler.dispose();
  });

  testWidgets('zero and negative delays run at the next microsecond', (
    tester,
  ) async {
    var now = DateTime(2026);
    var zeroCalls = 0;
    var negativeCalls = 0;
    final scheduler = TimeAgoScheduler(clock: () => now);
    final zero = scheduler.subscribe(() => zeroCalls++);
    final negative = scheduler.subscribe(() => negativeCalls++);

    zero.schedule(const TimeAgoUpdate.after(Duration.zero));
    negative.schedule(
      const TimeAgoUpdate.after(Duration(microseconds: -1)),
    );
    expect(zeroCalls, 0);
    expect(negativeCalls, 0);

    now = now.add(const Duration(microseconds: 1));
    await tester.pump(const Duration(microseconds: 1));
    expect(zeroCalls, 1);
    expect(negativeCalls, 1);

    zero.dispose();
    negative.dispose();
    scheduler.dispose();
  });

  testWidgets('rescheduling, never, and disposal cancel obsolete callbacks', (
    tester,
  ) async {
    var now = DateTime(2026);
    var calls = 0;
    final scheduler = TimeAgoScheduler(clock: () => now);
    final subscription = scheduler.subscribe(() => calls++);

    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );
    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 3)),
    );
    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 0);
    now = now.add(const Duration(seconds: 2));
    await tester.pump(const Duration(seconds: 2));
    expect(calls, 1);

    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );
    subscription.schedule(const TimeAgoUpdate.never());
    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 1);

    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );
    subscription.dispose();
    subscription.dispose();
    expect(subscription.isDisposed, isTrue);
    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 1);

    scheduler.dispose();
  });

  testWidgets('long deadlines are checked in maximum-duration chunks', (
    tester,
  ) async {
    var now = DateTime(2026);
    var calls = 0;
    final scheduler = TimeAgoScheduler(
      clock: () => now,
      maximumTimerDuration: const Duration(seconds: 5),
      clockCheckInterval: const Duration(hours: 1),
    );
    final subscription = scheduler.subscribe(() => calls++);
    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 20)),
    );

    for (var chunk = 1; chunk <= 4; chunk++) {
      now = now.add(const Duration(seconds: 5));
      await tester.pump(const Duration(seconds: 5));
      expect(calls, chunk == 4 ? 1 : 0);
    }

    subscription.dispose();
    scheduler.dispose();
  });

  testWidgets('app resume refreshes every subscription', (tester) async {
    var calls = 0;
    final scheduler = TimeAgoScheduler();
    final subscription = scheduler.subscribe(() => calls++);
    subscription.schedule(
      const TimeAgoUpdate.after(Duration(hours: 1)),
    );

    scheduler.didChangeAppLifecycleState(AppLifecycleState.paused);
    expect(calls, 0);
    scheduler.didChangeAppLifecycleState(AppLifecycleState.resumed);
    expect(calls, 1);

    subscription.dispose();
    scheduler.dispose();
  });

  testWidgets('freeze and unfreeze refresh without running frozen timers', (
    tester,
  ) async {
    final base = DateTime(2026);
    var now = base;
    var calls = 0;
    final scheduler = TimeAgoScheduler(
      clock: () => now,
      frozenAt: base,
    );
    final subscription = scheduler.subscribe(() => calls++);

    expect(scheduler.isFrozen, isTrue);
    expect(scheduler.now, base);
    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );
    now = now.add(const Duration(minutes: 1));
    await tester.pump(const Duration(minutes: 1));
    expect(calls, 0);

    final moved = base.add(const Duration(seconds: 1));
    scheduler.setFrozenAt(moved);
    expect(scheduler.now, moved);
    expect(calls, 1);

    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );
    await tester.pump(const Duration(minutes: 1));
    expect(calls, 1);

    scheduler.setFrozenAt(null);
    expect(scheduler.isFrozen, isFalse);
    expect(scheduler.now, now);
    expect(calls, 2);

    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );
    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 3);

    subscription.dispose();
    scheduler.dispose();
  });

  testWidgets('scheduler and subscription disposal are idempotent', (
    tester,
  ) async {
    var now = DateTime(2026);
    var calls = 0;
    final scheduler = TimeAgoScheduler(clock: () => now);
    final subscription = scheduler.subscribe(() => calls++);
    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );

    scheduler.dispose();
    scheduler.dispose();
    expect(() => scheduler.subscribe(() {}), throwsStateError);
    expect(scheduler.refresh, throwsStateError);
    expect(() => scheduler.setFrozenAt(now), throwsStateError);

    now = now.add(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(calls, 0);

    subscription.schedule(
      const TimeAgoUpdate.after(Duration(seconds: 1)),
    );
    subscription.dispose();
    subscription.dispose();
    expect(subscription.isDisposed, isTrue);
  });
}
