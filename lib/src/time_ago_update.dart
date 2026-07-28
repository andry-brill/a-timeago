/// The update instruction returned by a custom step.
sealed class TimeAgoUpdate {
  const TimeAgoUpdate();

  const factory TimeAgoUpdate.after(Duration duration) = TimeAgoUpdateAfter;
  const factory TimeAgoUpdate.never() = TimeAgoUpdateNever;

  /// Uses the scheduler's unknown-update fallback interval.
  ///
  /// When [maximumDelay] is set, the fallback interval is capped so a known
  /// structural transition is never crossed.
  const factory TimeAgoUpdate.unknown({
    Duration? maximumDelay,
  }) = TimeAgoUpdateUnknown;
}

final class TimeAgoUpdateAfter extends TimeAgoUpdate {
  const TimeAgoUpdateAfter(this.duration);

  final Duration duration;
}

final class TimeAgoUpdateNever extends TimeAgoUpdate {
  const TimeAgoUpdateNever();
}

final class TimeAgoUpdateUnknown extends TimeAgoUpdate {
  const TimeAgoUpdateUnknown({this.maximumDelay});

  final Duration? maximumDelay;
}
