import 'package:flutter/widgets.dart';

import 'enums.dart';
import 'locale_functions.dart';

/// A plural form and localized-number pattern for cutoff output.
///
/// [pattern] receives the localized cutoff amount as `{0}`.
typedef TimeAgoCutoffFormat = ({
  TimeAgoPluralCategory plural,
  String pattern,
});

/// Resolves cutoff formatting for a configured numeric amount.
typedef TimeAgoCutoffResolver = TimeAgoCutoffFormat Function(int amount);

/// Plural-sensitive string patterns. `{0}` is replaced with the localized
/// number.
class TimeAgoPluralLabels {
  const TimeAgoPluralLabels({
    this.zero,
    this.one,
    this.two,
    this.few,
    this.many,
    required this.other,
  });

  const TimeAgoPluralLabels.same(String value)
      : zero = null,
        one = null,
        two = null,
        few = null,
        many = null,
        other = value;

  const TimeAgoPluralLabels.oneOther({
    required this.one,
    required this.other,
  })  : zero = null,
        two = null,
        few = null,
        many = null;

  final String? zero;
  final String? one;
  final String? two;
  final String? few;
  final String? many;
  final String other;

  TimeAgoPluralLabels copyWith({
    String? zero,
    String? one,
    String? two,
    String? few,
    String? many,
    String? other,
  }) {
    return TimeAgoPluralLabels(
      zero: zero ?? this.zero,
      one: one ?? this.one,
      two: two ?? this.two,
      few: few ?? this.few,
      many: many ?? this.many,
      other: other ?? this.other,
    );
  }

  String resolve(TimeAgoPluralCategory category) {
    return switch (category) {
      TimeAgoPluralCategory.zero => zero ?? other,
      TimeAgoPluralCategory.one => one ?? other,
      TimeAgoPluralCategory.two => two ?? other,
      TimeAgoPluralCategory.few => few ?? other,
      TimeAgoPluralCategory.many => many ?? other,
      TimeAgoPluralCategory.other => other,
    };
  }
}

/// Directional labels for one relative-time unit.
class TimeAgoRelativeUnitLabels {
  const TimeAgoRelativeUnitLabels({
    required TimeAgoPluralLabels past,
    required TimeAgoPluralLabels future,
    this.current,
  })  : _past = past,
        _future = future,
        _samePast = null,
        _sameFuture = null;

  const TimeAgoRelativeUnitLabels.same({
    required String past,
    required String future,
    this.current,
  })  : _past = null,
        _future = null,
        _samePast = past,
        _sameFuture = future;

  final TimeAgoPluralLabels? _past;
  final TimeAgoPluralLabels? _future;
  final String? _samePast;
  final String? _sameFuture;
  final String? current;

  TimeAgoPluralLabels get past => _past ?? TimeAgoPluralLabels.same(_samePast!);
  TimeAgoPluralLabels get future =>
      _future ?? TimeAgoPluralLabels.same(_sameFuture!);

  String resolvePast(TimeAgoPluralCategory category) {
    return _samePast ?? _past!.resolve(category);
  }

  String resolveFuture(TimeAgoPluralCategory category) {
    return _sameFuture ?? _future!.resolve(category);
  }

  TimeAgoRelativeUnitLabels copyWith({
    TimeAgoPluralLabels? past,
    TimeAgoPluralLabels? future,
    String? current,
  }) {
    return TimeAgoRelativeUnitLabels(
      past: past ?? this.past,
      future: future ?? this.future,
      current: current ?? this.current,
    );
  }
}

/// Labels used by each relative-time unit in a presentation style.
class TimeAgoRelativeLabels {
  const TimeAgoRelativeLabels({
    required this.second,
    required this.minute,
    required this.hour,
    required this.day,
    required this.week,
    required this.month,
    required this.quarter,
    required this.year,
  });

  final TimeAgoRelativeUnitLabels second;
  final TimeAgoRelativeUnitLabels minute;
  final TimeAgoRelativeUnitLabels hour;
  final TimeAgoRelativeUnitLabels day;
  final TimeAgoRelativeUnitLabels week;
  final TimeAgoRelativeUnitLabels month;
  final TimeAgoRelativeUnitLabels quarter;
  final TimeAgoRelativeUnitLabels year;

  TimeAgoRelativeLabels copyWith({
    TimeAgoRelativeUnitLabels? second,
    TimeAgoRelativeUnitLabels? minute,
    TimeAgoRelativeUnitLabels? hour,
    TimeAgoRelativeUnitLabels? day,
    TimeAgoRelativeUnitLabels? week,
    TimeAgoRelativeUnitLabels? month,
    TimeAgoRelativeUnitLabels? quarter,
    TimeAgoRelativeUnitLabels? year,
  }) {
    return TimeAgoRelativeLabels(
      second: second ?? this.second,
      minute: minute ?? this.minute,
      hour: hour ?? this.hour,
      day: day ?? this.day,
      week: week ?? this.week,
      month: month ?? this.month,
      quarter: quarter ?? this.quarter,
      year: year ?? this.year,
    );
  }

  TimeAgoRelativeUnitLabels forUnit(TimeAgoUnit unit) {
    return switch (unit) {
      TimeAgoUnit.second => second,
      TimeAgoUnit.minute => minute,
      TimeAgoUnit.hour => hour,
      TimeAgoUnit.day => day,
      TimeAgoUnit.week => week,
      TimeAgoUnit.month => month,
      TimeAgoUnit.quarter => quarter,
      TimeAgoUnit.year => year,
      TimeAgoUnit.now => throw ArgumentError.value(
          unit,
          'unit',
          'The now unit uses LocaleConfig.now.',
        ),
    };
  }
}

/// Directionless unit labels used to compose multi-unit output.
class TimeAgoUnitLabels {
  const TimeAgoUnitLabels({
    required this.second,
    required this.minute,
    required this.hour,
    required this.day,
    required this.week,
    required this.month,
    required this.quarter,
    required this.year,
  });

  final TimeAgoPluralLabels second;
  final TimeAgoPluralLabels minute;
  final TimeAgoPluralLabels hour;
  final TimeAgoPluralLabels day;
  final TimeAgoPluralLabels week;
  final TimeAgoPluralLabels month;
  final TimeAgoPluralLabels quarter;
  final TimeAgoPluralLabels year;

  TimeAgoUnitLabels copyWith({
    TimeAgoPluralLabels? second,
    TimeAgoPluralLabels? minute,
    TimeAgoPluralLabels? hour,
    TimeAgoPluralLabels? day,
    TimeAgoPluralLabels? week,
    TimeAgoPluralLabels? month,
    TimeAgoPluralLabels? quarter,
    TimeAgoPluralLabels? year,
  }) {
    return TimeAgoUnitLabels(
      second: second ?? this.second,
      minute: minute ?? this.minute,
      hour: hour ?? this.hour,
      day: day ?? this.day,
      week: week ?? this.week,
      month: month ?? this.month,
      quarter: quarter ?? this.quarter,
      year: year ?? this.year,
    );
  }

  TimeAgoPluralLabels forUnit(TimeAgoUnit unit) {
    return switch (unit) {
      TimeAgoUnit.second => second,
      TimeAgoUnit.minute => minute,
      TimeAgoUnit.hour => hour,
      TimeAgoUnit.day => day,
      TimeAgoUnit.week => week,
      TimeAgoUnit.month => month,
      TimeAgoUnit.quarter => quarter,
      TimeAgoUnit.year => year,
      TimeAgoUnit.now => throw ArgumentError.value(
          unit,
          'unit',
          'The now unit cannot be part of multi-unit output.',
        ),
    };
  }
}

/// Localized list composition patterns.
class TimeAgoListPatterns {
  const TimeAgoListPatterns({
    required this.pair,
    required this.start,
    required this.middle,
    required this.end,
  });

  final String pair;
  final String start;
  final String middle;
  final String end;

  TimeAgoListPatterns copyWith({
    String? pair,
    String? start,
    String? middle,
    String? end,
  }) {
    return TimeAgoListPatterns(
      pair: pair ?? this.pair,
      start: start ?? this.start,
      middle: middle ?? this.middle,
      end: end ?? this.end,
    );
  }

  String join(List<String> values) {
    if (values.isEmpty) {
      return '';
    }
    if (values.length == 1) {
      return values.single;
    }
    if (values.length == 2) {
      return _applyPair(pair, values[0], values[1]);
    }
    var result = _applyPair(start, values[0], values[1]);
    for (var index = 2; index < values.length - 1; index++) {
      result = _applyPair(middle, result, values[index]);
    }
    return _applyPair(end, result, values.last);
  }
}

/// One wrapper applied to a complete multi-unit list.
class TimeAgoDirectionPatterns {
  const TimeAgoDirectionPatterns({
    required this.past,
    required this.future,
  });

  final String past;
  final String future;

  TimeAgoDirectionPatterns copyWith({String? past, String? future}) {
    return TimeAgoDirectionPatterns(
      past: past ?? this.past,
      future: future ?? this.future,
    );
  }

  String wrap(String value, {required bool isPast}) {
    return (isPast ? past : future).replaceAll('{0}', value);
  }
}

/// Present, near-past, and near-future labels.
class TimeAgoNowLabels {
  const TimeAgoNowLabels({
    required this.past,
    required this.current,
    required this.future,
  });

  final String past;
  final String current;
  final String future;

  TimeAgoNowLabels copyWith({
    String? past,
    String? current,
    String? future,
  }) {
    return TimeAgoNowLabels(
      past: past ?? this.past,
      current: current ?? this.current,
      future: future ?? this.future,
    );
  }
}

/// All labels for one [TimeAgoFormat].
class TimeAgoFormatLabels {
  const TimeAgoFormatLabels({
    required this.relative,
    required this.units,
    required this.list,
    required this.direction,
    this.cutoffResolver = _defaultTimeAgoCutoffResolver,
    this.now,
  });

  final TimeAgoRelativeLabels relative;
  final TimeAgoUnitLabels units;
  final TimeAgoListPatterns list;
  final TimeAgoDirectionPatterns direction;

  /// Resolves cutoff pluralization and number formatting for this style.
  final TimeAgoCutoffResolver cutoffResolver;

  final String? now;

  TimeAgoFormatLabels copyWith({
    TimeAgoRelativeLabels? relative,
    TimeAgoUnitLabels? units,
    TimeAgoListPatterns? list,
    TimeAgoDirectionPatterns? direction,
    TimeAgoCutoffResolver? cutoffResolver,
    String? now,
  }) {
    return TimeAgoFormatLabels(
      relative: relative ?? this.relative,
      units: units ?? this.units,
      list: list ?? this.list,
      direction: direction ?? this.direction,
      cutoffResolver: cutoffResolver ?? this.cutoffResolver,
      now: now ?? this.now,
    );
  }
}

/// An immutable set of label widths with optional narrow and mini labels.
class TimeAgoFormatSet<T> {
  const TimeAgoFormatSet({
    required this.long,
    required this.short,
    this.narrow,
    this.mini,
  });

  final T long;
  final T short;
  final T? narrow;
  final T? mini;

  T? exact(TimeAgoFormat format) {
    return switch (format) {
      TimeAgoFormat.long => long,
      TimeAgoFormat.short => short,
      TimeAgoFormat.narrow => narrow,
      TimeAgoFormat.mini => mini,
    };
  }

  T resolve(TimeAgoFormat format) {
    return switch (format) {
      TimeAgoFormat.long => long,
      TimeAgoFormat.short => short,
      TimeAgoFormat.narrow => narrow ?? short,
      TimeAgoFormat.mini => mini ?? narrow ?? short,
    };
  }

  bool supports(TimeAgoFormat format) => exact(format) != null;

  TimeAgoFormatSet<T> copyWith({
    T? long,
    T? short,
    T? narrow,
    T? mini,
    bool clearNarrow = false,
    bool clearMini = false,
  }) {
    return TimeAgoFormatSet<T>(
      long: long ?? this.long,
      short: short ?? this.short,
      narrow: clearNarrow ? null : narrow ?? this.narrow,
      mini: clearMini ? null : mini ?? this.mini,
    );
  }
}

/// Self-contained labels and locale operations. Import locale files
/// individually; no global registry or package default locale is installed.
class LocaleConfig {
  const LocaleConfig({
    required this.locale,
    required this.formats,
    required this.now,
    required this.functions,
  });

  final Locale locale;
  final TimeAgoFormatSet<TimeAgoFormatLabels> formats;
  final TimeAgoNowLabels now;
  final TimeAgoLocaleFunctions functions;

  TimeAgoFormatLabels get long => formats.long;
  TimeAgoFormatLabels get short => formats.short;
  TimeAgoFormatLabels? get narrow => formats.narrow;
  TimeAgoFormatLabels? get mini => formats.mini;

  LocaleConfig copyWith({
    Locale? locale,
    TimeAgoFormatSet<TimeAgoFormatLabels>? formats,
    TimeAgoFormatLabels? long,
    TimeAgoFormatLabels? short,
    TimeAgoFormatLabels? narrow,
    TimeAgoFormatLabels? mini,
    bool clearNarrow = false,
    bool clearMini = false,
    TimeAgoNowLabels? now,
    TimeAgoLocaleFunctions? functions,
  }) {
    return LocaleConfig(
      locale: locale ?? this.locale,
      formats: formats ??
          TimeAgoFormatSet<TimeAgoFormatLabels>(
            long: long ?? this.long,
            short: short ?? this.short,
            narrow: clearNarrow ? null : narrow ?? this.narrow,
            mini: clearMini ? null : mini ?? this.mini,
          ),
      now: now ?? this.now,
      functions: functions ?? this.functions,
    );
  }

  TimeAgoFormatLabels labelsFor(TimeAgoFormat format) {
    return formats.resolve(format);
  }

  /// Whether this locale has labels specifically authored for [format].
  bool supportsFormat(TimeAgoFormat format) => formats.supports(format);
}

TimeAgoCutoffFormat _defaultTimeAgoCutoffResolver(int amount) {
  return (plural: TimeAgoPluralCategory.many, pattern: '{0}+');
}

String _applyPair(String pattern, String first, String second) {
  return pattern.replaceAll('{0}', first).replaceAll('{1}', second);
}
