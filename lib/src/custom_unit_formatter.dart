import 'enums.dart';
import 'formatting/localized_pattern_renderer.dart';
import 'locale_config.dart';
import 'time_ago_context.dart';
import 'time_ago_step.dart';

/// Formats a custom multiplied unit from localized plural patterns.
///
/// [units] contains directionless patterns for every presentation width.
/// Each pattern uses `{0}` for the locale-formatted amount. When [relative] is
/// omitted, directional output is composed with the selected locale's normal
/// past/future wrapper. This is sufficient for locales where the unit does not
/// change grammatical form after that wrapper.
///
/// Supply [relative] when past or future phrases need dedicated plural or case
/// forms. Narrow and mini labels are optional in both format sets. Narrow
/// falls back to short, while mini falls back to narrow and then short through
/// [TimeAgoFormatSet.resolve].
class TimeAgoCustomUnitFormatter {
  const TimeAgoCustomUnitFormatter({
    required this.units,
    this.relative,
  });

  /// Directionless unit patterns grouped by presentation width.
  final TimeAgoFormatSet<TimeAgoPluralLabels> units;

  /// Optional complete past and future patterns grouped by width.
  final TimeAgoFormatSet<TimeAgoRelativeUnitLabels>? relative;

  /// Formats the selected custom-step [context].
  String format(TimeAgoStepContext context) =>
      _formatCustomUnit(context, units, relative);

  /// Callable shorthand for [format].
  String call(TimeAgoStepContext context) => format(context);
}

/// Standard label-based implementation of [TimeAgoCustomUnit].
///
/// This is the reusable template for common translated units such as a
/// fortnight, decade, or century. The unit name is intentionally not fixed:
/// applications can define any positive multiple of a built-in numeric unit.
///
/// The definition and a step that uses it can both be const:
///
/// ```dart
/// const centuryUnit = TimeAgoCustomUnitTranslation(
///   unit: TimeAgoUnit.year,
///   unitMultiplier: 100,
///   units: TimeAgoFormatSet(
///     long: TimeAgoPluralLabels.oneOther(
///       one: '{0} century',
///       other: '{0} centuries',
///     ),
///     short: TimeAgoPluralLabels.same('{0} c'),
///     narrow: TimeAgoPluralLabels.same('{0}c'),
///   ),
/// );
/// const century = TimeAgoStep.customUnit(centuryUnit);
/// ```
final class TimeAgoCustomUnitTranslation extends TimeAgoCustomUnitFormatter
    implements TimeAgoCustomUnit {
  const TimeAgoCustomUnitTranslation({
    required this.unit,
    required this.unitMultiplier,
    required super.units,
    super.relative,
  })  : assert(unit != TimeAgoUnit.now),
        assert(unitMultiplier > 0);

  @override
  final TimeAgoUnit unit;

  @override
  final int unitMultiplier;
}

String _formatCustomUnit(
  TimeAgoStepContext context,
  TimeAgoFormatSet<TimeAgoPluralLabels> units,
  TimeAgoFormatSet<TimeAgoRelativeUnitLabels>? relative,
) {
  final relativeLabels = relative?.resolve(context.format);
  return renderLocalizedPattern(
    context: context,
    resolveUnitLabels: (_) {
      return units.resolve(context.format);
    },
    resolveRelativeLabels: relativeLabels == null
        ? null
        : (_) {
            return relativeLabels;
          },
  );
}
