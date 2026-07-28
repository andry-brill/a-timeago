import '../enums.dart';
import '../locale_config.dart';
import '../locale_functions.dart';
import '../temporal/multi_decomposition.dart';
import '../time_ago_context.dart';
import '../time_ago_step.dart';
import 'localized_pattern_renderer.dart';

String renderSelectedStep(
  TimeAgoStep step,
  TimeAgoStepContext context,
) {
  return switch (step) {
    TimeAgoUnitStep(:final unit) => _renderLocalizedStep(unit, context),
    TimeAgoCustomStep(:final formatter) => formatter(context),
    TimeAgoCustomUnitStep(:final customUnit) => customUnit.format(context),
  };
}

String _renderLocalizedStep(TimeAgoUnit unit, TimeAgoStepContext context) {
  if (unit == TimeAgoUnit.now) {
    if (!context.directional) {
      return context.locale.labelsFor(context.format).now ??
          context.locale.now.current;
    }
    if (context.isCurrent && !context.isFuture) {
      return context.locale.now.current;
    }
    return context.isPast ? context.locale.now.past : context.locale.now.future;
  }
  return renderLocalizedPattern(
    context: context,
    resolveUnitLabels: (style) {
      return style.units.forUnit(unit);
    },
    resolveRelativeLabels: (style) {
      if (context.format == TimeAgoFormat.mini &&
          context.locale.supportsFormat(TimeAgoFormat.mini)) {
        return null;
      }
      return style.relative.forUnit(unit);
    },
  );
}

String renderComponents(
  List<TimeAgoComponent> components, {
  required Duration duration,
  required LocaleConfig locale,
  required TimeAgoFormat format,
  required bool directional,
  required bool isFuture,
  required TimeAgoLocaleFunctions functions,
}) {
  if (duration == Duration.zero) {
    return _currentLabel(
      locale,
      format,
      directional: directional,
      isFuture: isFuture,
    );
  }
  final style = locale.labelsFor(format);
  final values = components.map((component) {
    final number = functions.formatNumber(component.amount);
    final category = functions.resolvePlural(component.amount);
    return style.units
        .forUnit(component.unit)
        .resolve(category)
        .replaceAll('{0}', number);
  }).toList(growable: false);
  final list = style.list.join(values);
  if (!directional) {
    return list;
  }
  return style.direction.wrap(
    list,
    isPast: !isFuture,
  );
}

String _currentLabel(
  LocaleConfig locale,
  TimeAgoFormat format, {
  required bool directional,
  required bool isFuture,
}) {
  if (directional) {
    return isFuture ? locale.now.future : locale.now.current;
  }
  return locale.labelsFor(format).now ?? locale.now.current;
}
