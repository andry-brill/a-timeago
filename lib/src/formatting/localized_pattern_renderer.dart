import '../locale_config.dart';
import '../time_ago_context.dart';

/// Renders a localized numeric unit pattern for package-internal formatters.
String renderLocalizedPattern({
  required TimeAgoStepContext context,
  required TimeAgoPluralLabels Function(
    TimeAgoFormatLabels style,
  ) resolveUnitLabels,
  TimeAgoRelativeUnitLabels? Function(
    TimeAgoFormatLabels style,
  )? resolveRelativeLabels,
}) {
  final style = context.locale.labelsFor(context.format);
  final cutoff = context.isCutoff ? style.cutoffResolver(context.amount) : null;
  final plural =
      cutoff?.plural ?? context.resolvedFunctions.resolvePlural(context.amount);
  final unitPattern = resolveUnitLabels(style).resolve(plural);
  String pattern;
  if (!context.directional) {
    pattern = unitPattern;
  } else {
    final relative = resolveRelativeLabels?.call(style);
    pattern = relative == null
        ? style.direction.wrap(unitPattern, isPast: context.isPast)
        : context.isPast
            ? relative.resolvePast(plural)
            : relative.resolveFuture(plural);
  }
  final localizedNumber =
      context.resolvedFunctions.formatNumber(context.amount);
  final number =
      cutoff?.pattern.replaceAll('{0}', localizedNumber) ?? localizedNumber;
  return pattern.replaceAll('{0}', number);
}
