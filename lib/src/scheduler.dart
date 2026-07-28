import 'dart:async';

import 'package:flutter/widgets.dart';

import 'time_ago_update.dart';

/// Coordinates all live time-ago widgets under a provider with one timer.
class TimeAgoScheduler with WidgetsBindingObserver {
  TimeAgoScheduler({
    this.unknownUpdateInterval = const Duration(minutes: 1),
    this.maximumTimerDuration = const Duration(days: 20),
    this.clockCheckInterval = const Duration(minutes: 1),
    DateTime Function()? clock,
    DateTime? frozenAt,
  })  : _clock = clock ?? DateTime.now,
        _frozenAt = frozenAt {
    if (unknownUpdateInterval <= Duration.zero) {
      throw ArgumentError.value(
        unknownUpdateInterval,
        'unknownUpdateInterval',
        'The fallback interval must be positive.',
      );
    }
    if (maximumTimerDuration <= Duration.zero ||
        clockCheckInterval <= Duration.zero) {
      throw ArgumentError(
        'maximumTimerDuration and clockCheckInterval must be positive.',
      );
    }
    WidgetsBinding.instance.addObserver(this);
  }

  /// Fallback for custom formatters whose next transition is unknown.
  final Duration unknownUpdateInterval;

  /// Timer delays are capped for Flutter web and resumed in chunks.
  final Duration maximumTimerDuration;

  /// Maximum time before checking for an active system-clock change.
  final Duration clockCheckInterval;
  final DateTime Function() _clock;

  final Map<int, _ScheduledEntry> _entries = <int, _ScheduledEntry>{};
  Timer? _timer;
  DateTime? _frozenAt;
  int _nextId = 0;
  bool _disposed = false;

  DateTime get now => _frozenAt ?? _clock();
  bool get isFrozen => _frozenAt != null;

  TimeAgoSubscription subscribe(VoidCallback callback) {
    _checkNotDisposed();
    final id = _nextId++;
    _entries[id] = _ScheduledEntry(callback);
    return TimeAgoSubscription._(this, id);
  }

  /// Freezes the scheduler clock, or resumes it when [value] is null.
  void setFrozenAt(DateTime? value) {
    _checkNotDisposed();
    if (_frozenAt == value) {
      return;
    }
    _frozenAt = value;
    refresh();
  }

  /// Rebuilds every registered widget and recalculates all transitions.
  void refresh() {
    _checkNotDisposed();
    _timer?.cancel();
    _timer = null;
    final callbacks = _entries.values.map((entry) {
      entry.nextAt = null;
      return entry.callback;
    }).toList(growable: false);
    for (final callback in callbacks) {
      callback();
    }
    _rescheduleTimer();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && !_disposed) {
      refresh();
    }
  }

  void dispose() {
    if (_disposed) {
      return;
    }
    _disposed = true;
    _timer?.cancel();
    _timer = null;
    _entries.clear();
    WidgetsBinding.instance.removeObserver(this);
  }

  void _schedule(int id, TimeAgoUpdate update) {
    if (_disposed) {
      return;
    }
    final entry = _entries[id];
    if (entry == null) {
      return;
    }
    final delay = switch (update) {
      TimeAgoUpdateAfter(:final duration) => duration,
      TimeAgoUpdateUnknown(:final maximumDelay) =>
        maximumDelay == null || unknownUpdateInterval < maximumDelay
            ? unknownUpdateInterval
            : maximumDelay,
      TimeAgoUpdateNever() => null,
    };
    entry.nextAt = delay == null
        ? null
        : now.add(
            delay <= Duration.zero ? const Duration(microseconds: 1) : delay);
    _rescheduleTimer();
  }

  void _unsubscribe(int id) {
    _entries.remove(id);
    _rescheduleTimer();
  }

  void _rescheduleTimer() {
    _timer?.cancel();
    _timer = null;
    if (_disposed || isFrozen) {
      return;
    }
    DateTime? earliest;
    for (final entry in _entries.values) {
      final nextAt = entry.nextAt;
      if (nextAt != null && (earliest == null || nextAt.isBefore(earliest))) {
        earliest = nextAt;
      }
    }
    if (earliest == null) {
      return;
    }
    final until = earliest.difference(now);
    final positiveUntil = until <= Duration.zero ? Duration.zero : until;
    final delay = <Duration>[
      positiveUntil,
      maximumTimerDuration,
      clockCheckInterval,
    ].reduce((first, second) => first < second ? first : second);
    _timer = Timer(delay, _timerFired);
  }

  void _timerFired() {
    _timer = null;
    if (_disposed) {
      return;
    }
    final current = now;
    final callbacks = <VoidCallback>[];
    for (final entry in _entries.values) {
      final nextAt = entry.nextAt;
      if (nextAt != null && !nextAt.isAfter(current)) {
        entry.nextAt = null;
        callbacks.add(entry.callback);
      }
    }
    for (final callback in callbacks) {
      callback();
    }
    _rescheduleTimer();
  }

  void _checkNotDisposed() {
    if (_disposed) {
      throw StateError('TimeAgoScheduler has been disposed.');
    }
  }
}

/// A live widget's handle into a [TimeAgoScheduler].
class TimeAgoSubscription {
  TimeAgoSubscription._(this._scheduler, this._id);

  TimeAgoScheduler? _scheduler;
  final int _id;

  bool get isDisposed => _scheduler == null;

  void schedule(TimeAgoUpdate update) {
    _scheduler?._schedule(_id, update);
  }

  void dispose() {
    _scheduler?._unsubscribe(_id);
    _scheduler = null;
  }
}

class _ScheduledEntry {
  _ScheduledEntry(this.callback);

  final VoidCallback callback;
  DateTime? nextAt;
}
