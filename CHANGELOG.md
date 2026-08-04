
## 2.1.0
  * Add `TimeAgoResult.nextCutoff` to expose the nearest pending cutoff that
    will replace the normal result, without replacing or requiring the same
    effective unit as the selected value step.

## 2.0.0
  * Add opt-in `steps/intl_calendar.dart` presets for fully localized
    minute-to-calendar feed timestamps, with and without seconds.
  * Add CLDR 48.1 yesterday, today, and tomorrow labels plus fixed and relative
    date-time combination patterns to every bundled locale.
  * Add fallback-aware localized clock formatting through
    `TimeAgoLocaleFunctions.formatTime()`.
  * Split step presets into `steps/basic.dart`, `steps/intl_twitter.dart`, and
    `steps/intl_calendar.dart`. The main library exports only the basic
    presets.
  * **Breaking:** `LocaleConfig` construction now requires
    `TimeAgoCalendarLabels` through the `calendar` argument.
  * **Breaking:** Code that implements `TimeAgoLocaleFunctions` must implement
    `formatTime()`. Code that extends a bundled implementation inherits its
    default.
  * **Breaking:** Move the Twitter presets out of `TimeAgoSteps`. Import
    `steps/intl_twitter.dart` with a prefix and migrate:
    * `TimeAgoSteps.twitter` to `twitter.steps`
    * `TimeAgoSteps.twitterNow` to `twitter.stepsNow`
    * `TimeAgoSteps.twitterFromMinute` to `twitter.stepsFromMinute`
    * `TimeAgoSteps.twitterFromMinuteNow` to `twitter.stepsFromMinuteNow`
    * `TimeAgoSteps.twitterFirstMinute` to `twitter.stepsFirstMinute`

## 1.1.0
  * Add structured pre-format values to `TimeAgoResult` through the new
    `TimeAgoValue` record type.
  * Add `TimeAgoUnit.upperBound()` and configurable default next-unit
    relationships.
  * Add `TimeAgoRenderer` for reusable `TimeAgoResult` rendering and live
    subscription coordination.
  * Refactor `TimeAgoBuilder` to use `TimeAgoRenderer` and the `BuildContext`
    formatting extensions.
  * **Breaking:** Direct `TimeAgoResult` construction now requires an explicit
    values list.

## 1.0.1
  * Broaden `intl` compatibility to support Flutter SDK-pinned versions from
    0.18.0 through 0.20.x.

## 1.0.0
  * Initial commit
