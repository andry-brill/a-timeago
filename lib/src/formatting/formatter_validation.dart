import '../enums.dart';
import '../time_ago_step.dart';

void validateStandaloneCutoff(TimeAgoStep? cutoffStep) {
  if (cutoffStep == null) {
    return;
  }
  if (cutoffStep.cutoffAmount == null) {
    throw ArgumentError.value(
      cutoffStep,
      'cutoffStep',
      'A standalone cutoff step must define cutoffAmount.',
    );
  }
  _validateStepConfiguration(cutoffStep, 'cutoffStep');
  _validateCutoffStep(cutoffStep, 'cutoffStep');
}

void validateSteps(List<TimeAgoStep> steps) {
  if (steps.isEmpty) {
    throw ArgumentError.value(steps, 'steps', 'At least one step is required.');
  }
  for (var index = 0; index < steps.length; index++) {
    final step = steps[index];
    _validateStepConfiguration(step, 'steps[$index]');
    if (step.cutoffAmount != null) {
      _validateCutoffStep(step, 'steps[$index]');
    }
  }
}

void _validateStepConfiguration(TimeAgoStep step, String name) {
  if (step.unitMultiplier <= 0) {
    throw ArgumentError.value(
      step.unitMultiplier,
      '$name.unitMultiplier',
      'Unit multiplier must be greater than zero.',
    );
  }
  if (step.unitMultiplier != 1 &&
      (step.unit == null || step.unit == TimeAgoUnit.now)) {
    throw ArgumentError.value(
      step.unitMultiplier,
      '$name.unitMultiplier',
      'A multiplied step must use a numeric unit.',
    );
  }
  if (step.granularity != null && step.granularity! <= 0) {
    throw ArgumentError.value(
      step.granularity,
      '$name.granularity',
      'Granularity must be greater than zero.',
    );
  }
}

void _validateCutoffStep(TimeAgoStep step, String name) {
  if (step.cutoffAmount! <= 0) {
    throw ArgumentError.value(
      step.cutoffAmount,
      '$name.cutoffAmount',
      'Cutoff amount must be greater than zero.',
    );
  }
  if (step.unit == null || step.unit == TimeAgoUnit.now) {
    throw ArgumentError.value(
      step.unit,
      '$name.unit',
      'A cutoff step must use a numeric unit.',
    );
  }
}

void validateMultiUnits(List<TimeAgoUnit> units) {
  if (units.isEmpty) {
    throw ArgumentError.value(units, 'units', 'At least one unit is required.');
  }
  final seen = <TimeAgoUnit>{};
  var previousRank = 1 << 30;
  for (var index = 0; index < units.length; index++) {
    final unit = units[index];
    if (unit == TimeAgoUnit.now) {
      throw ArgumentError.value(
        unit,
        'units[$index]',
        'The now unit is only valid in single-unit step lists.',
      );
    }
    if (!seen.add(unit)) {
      throw ArgumentError.value(
        unit,
        'units[$index]',
        'Multi-unit values must be unique.',
      );
    }
    final rank = unit.index;
    if (rank >= previousRank) {
      throw ArgumentError.value(
        units,
        'units',
        'Multi-unit values must be ordered largest to smallest.',
      );
    }
    previousRank = rank;
  }
}
