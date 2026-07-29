# any_timeago

[![Tests](https://github.com/andry-brill/a-timeago/actions/workflows/test.yml/badge.svg)](https://github.com/andry-brill/a-timeago/actions/workflows/test.yml)

Feature-rich relative-time formatting for Flutter, with four presentation
formats and 197 localizations. Customize steps, per-step rounding, granularity,
cutoffs, and multi-unit output. Includes ready-made inherited configuration and
synchronized, live-updating widgets.

![App Screenshot](https://raw.githubusercontent.com/andry-brill/a-timeago/main/example/web/screenshot.png)

The core implementation was initially based on the `javascript-time-ago` library.

> You might also like my other packages: [any_sparklines](https://pub.dev/packages/any_sparklines), [any_borders](https://pub.dev/packages/any_borders)

## Showcases

Each shortcut highlights one option; `...` stands for the input and other
required arguments.

- Presentation formats
  - Long: `timeAgo(..., format: TimeAgoFormat.long)`
    - `3 minutes ago`
  - Short: `timeAgo(..., format: TimeAgoFormat.short)`
    - `3 min ago`
  - Narrow: `timeAgo(..., format: TimeAgoFormat.narrow)`
    - `3m ago`
  - Mini: `timeAgo(..., format: TimeAgoFormat.mini)`
    - `3m`
- 197 localizations
  - Norwegian: `timeAgo(..., locale: nb.locale)` 
    - `for 3 minutter siden`
  - Italian: `timeAgo(..., locale: it.locale)`
    - `3 minuti fa`
- Step presets
  - Precise: `timeAgo(..., steps: TimeAgoSteps.precise)`
    - `45 seconds ago` — Includes seconds instead of rounding the interval to a
      minute.
  - From-minute-now: `timeAgo(..., steps: TimeAgoSteps.fromMinuteNow)`
    - `just now` — Uses the localized now label below the first rounded minute.
  - Twitter: `timeAgo(..., steps: TimeAgoSteps.twitter)`
    - `20 May 2020` — Switches older values from relative units to a localized calendar date.
- Per-step rounding
  - Floor: `timeAgo(..., steps: [TimeAgoStep.unit(..., rounding: TimeAgoRounding.floor)])`
    - `1 minute ago` — Counts only completed minutes in a 1-minute,
      36-second interval.
  - Round: `timeAgo(..., steps: [TimeAgoStep.unit(..., rounding: TimeAgoRounding.round)])`
    - `2 minutes ago` — Rounds the same interval to the nearest minute.
- Granularity
  - 5 seconds: `timeAgo(..., steps: [TimeAgoStep.unit(TimeAgoUnit.second, granularity: 5)])`
    - `15 seconds ago` — Snaps 13 seconds to the nearest 5-second increment.
  - 30 minutes: `timeAgo(..., steps: [TimeAgoStep.unit(TimeAgoUnit.minute, granularity: 30)])`
    - `30 minutes ago` — Snaps 43 minutes to the nearest 30-minute increment.
- Cutoffs
  - 3 minutes: `timeAgo(..., cutoffStep: TimeAgoStep.unit(TimeAgoUnit.minute, cutoffAmount: 3))`
    - `3+ minutes ago` — Caps values beyond 3 minutes and adds the `+` suffix.
  - 9 years: `timeAgo(..., cutoffStep: TimeAgoStep.unit(TimeAgoUnit.year, cutoffAmount: 9))`
    - `9+ years ago` — Caps values beyond 9 calendar years.
- Multi-unit output
  - Default: `timeAgoMulti(...)`
    - `2 hours, 3 minutes, and 4 seconds ago` — Includes every nonzero default unit.
  - Years and days: `timeAgoMulti(..., units: [TimeAgoUnit.year, TimeAgoUnit.day])`
    - `1 year and 5 days ago` — Decomposes the interval using only the requested units.
- Past and future
  - Past: `timeAgo(pastTime, ...)`
    - `3 minutes ago`
  - Future: `timeAgo(futureTime, ...)`
    - `in 3 minutes`
- Directional output
  - Directional: `timeAgo(..., directional: true)`
    - `3 minutes ago` — Includes localized past or future wording.
  - Directionless: `timeAgo(..., directional: false)`
    - `3 minutes` — Returns only the localized amount and unit.
- Custom units
  - Fortnight: `durationAgo(..., steps: [en.fortnight])`
    - `1 fortnight ago`
  - Decade: `durationAgo(..., steps: [en.decade])`
    - `3 decades ago`
  - Century: `durationAgo(..., steps: [en.century])`
    - `2 centuries ago`

## Setup

`any_timeago` has no global locale registry and exports no default locale.
Import only the locale files your application uses:

```dart
import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:any_timeago/locales/en_us.dart' as en_us;
import 'package:any_timeago/locales/it.dart' as it;
import 'package:any_timeago/locales/nb.dart' as nb;
```

> NB! Bundled locales use `package:intl` for localized number, plural, and date
operations. Number and plural data are available immediately. Applications
using any `TimeAgoSteps.twitter*` preset must call
`initializeTimeAgoDateFormatting()` before `runApp()` as described in
[Intl date initialization](#intl-date-initialization).

## API

- `timeAgo()` and `durationAgo()` format one localized relative-time unit.
- `timeAgoMulti()` and `durationAgoMulti()` format a localized list of units.
- Matching `*Result()` variants return `TimeAgoResult` with `text` and `nextUpdate` for scheduling.

## Features

### Presentation formats

`TimeAgoFormat` controls label width only. It never changes thresholds or
rounding.

- `TimeAgoFormat.long`: `2 minutes ago`, `in 2 minutes`
- `TimeAgoFormat.short`: `2 min ago`, `in 2 min`
- `TimeAgoFormat.narrow`: CLDR narrow labels, such as `2m ago`, `in 2m`
- `TimeAgoFormat.mini`: the shortest available labels, such as `2m`

Every locale provides long and short labels. Dedicated narrow labels are kept
only when they differ from short; otherwise narrow falls back to short. A
locale can also omit dedicated mini labels, which fall back to narrow and then
short. Use `locale.supportsFormat(format)` to test whether narrow or mini has
dedicated labels instead of resolving a fallback.

Multi-unit output uses the unit labels and localized list patterns of the selected presentation format. In English, the same interval is rendered as `2 years and 3 months ago`, `2 yr and 3 mo ago`, `2y and 3mo ago`, or `2y 3mo` for long, short, narrow, and mini respectively.

### 197 localizations

The package ships 197 locale configurations as separate libraries, so
applications import and bundle only the locales they use. Pass a locale to a
formatting call or provide it once with `TimeAgoProvider`:

```dart
timeAgo(message.sentAt, locale: it.locale);
```

Every bundled locale provides long and short labels. Dedicated narrow and mini
labels are included where they add a distinct width; otherwise they resolve
through the fallback chain described above. Localized numbers and plural rules
are powered by `package:intl`. See [Locale customization](#locale-customization)
to override individual labels or locale operations.

### Step presets

Built-in step lists control which unit or custom formatter is selected at each
threshold:

- `TimeAgoSteps.precise`: second through year; zero is `0 seconds`
- `TimeAgoSteps.preciseNow`: `now`, then `precise`
- `TimeAgoSteps.fromMinute`: minute through year; zero is `0 minutes`
- `TimeAgoSteps.fromMinuteNow`: `now`, then `fromMinute`; the default
- `TimeAgoSteps.approximate`: fuzzy moment and rounded-increment thresholds
- `TimeAgoSteps.twitter`: seconds/minutes/hours, then localized dates
- `TimeAgoSteps.twitterNow`
- `TimeAgoSteps.twitterFromMinute`
- `TimeAgoSteps.twitterFromMinuteNow`
- `TimeAgoSteps.twitterFirstMinute`: empty until one minute

A step can define `minTime`, `minTimeResolver`, `rounding`, `granularity`,
`cutoffAmount`, and `nextUpdate`. Custom step variants can also provide their
own formatting. `TimeAgoStep` is sealed; its factories create a
`TimeAgoUnitStep`, `TimeAgoCustomStep`, or `TimeAgoCustomUnitStep`.

The `TimeAgoSteps.twitter*` presets switch older values to localized calendar
dates and require [Intl date initialization](#intl-date-initialization).

### Per-step rounding

`TimeAgoRounding.round` selects the nearest unit, while
`TimeAgoRounding.floor` counts only completed units.

```dart
TimeAgoStep.unit(
  TimeAgoUnit.minute,
  rounding: TimeAgoRounding.floor, // Completed minutes
)
```

### Granularity

`granularity` groups a step into increments before its rounding policy is
applied. With the default `round` policy, 13 seconds becomes 15 seconds.
Using `floor` with the same step would produce 10 seconds.

```dart
TimeAgoStep.unit(
  TimeAgoUnit.second,
  granularity: 5, // Five second steps
)
```

### Cutoffs

Use `cutoffStep` to cap output independently of the configured step list:

```dart
const threeYears = TimeAgoStep.unit(
  TimeAgoUnit.year,
  cutoffAmount: 3,
);

durationAgo(
  const Duration(days: 1400),
  locale: en.locale,
  cutoffStep: threeYears,
); // 3+ years ago
```

The boundary is strict, so exactly three years remains `3 years`. Cutoffs use
the absolute interval and therefore apply equally to past and future values.
In multi-unit mode, an exceeded cutoff replaces the complete list with its
single capped unit.

`timeAgo()` and `timeAgoMulti()` use calendar-aware year, quarter, and month
boundaries for a standalone cutoff. Duration functions and cutoffs embedded in
`steps` use the unit's fixed `microseconds` value. A cutoff embedded in a step
becomes terminal once that step is active:

```dart
const cappedSteps = [
  TimeAgoStep.unit(TimeAgoUnit.minute),
  TimeAgoStep.unit(TimeAgoUnit.hour),
  TimeAgoStep.unit(TimeAgoUnit.day),
  TimeAgoStep.unit(TimeAgoUnit.year, cutoffAmount: 3),
];
```

When several cutoffs apply, the earliest boundary wins. 
Custom step formatters receive `TimeAgoStepContext.isCutoff == true` and the capped `amount`.

### Multi-unit output

`timeAgoMulti()` and `durationAgoMulti()` decompose an interval into a
localized list. By default, they use year, month, day, hour, minute, and second.
Pass `units` to select another ordered set:

```dart
durationAgoMulti(
  const Duration(days: 91),
  locale: en.locale,
  units: const [TimeAgoUnit.quarter, TimeAgoUnit.day],
); // 1 quarter and 1 day ago
```

`TimeAgoUnit` contains `now`, `second`, `minute`, `hour`, `day`, `week`,
`month`, `quarter`, and `year`. `now` is only valid in single-unit step lists.
Multi-unit lists must contain unique values ordered largest to smallest.

`DateTime` decomposition uses calendar-aware years, quarters, and months with
month-end clamping. `Duration` decomposition uses 360-day years, 90-day
quarters, and 30-day months. Zero components are skipped, but no nonzero
component is truncated. A nonzero interval smaller than the smallest requested
unit is shown as one smallest unit.

### Past and future

`timeAgo()` compares `time` with `to ?? DateTime.now()`.
`durationAgo()` treats positive values as past and negative values as future.
The multi variants use the same direction rules while decomposing the interval
into a localized component list.

Pass `future: true` to force future grammar. This is especially useful when an
exact-zero difference should be formatted as a future value:

```dart
durationAgo(
  Duration.zero,
  locale: en.locale,
  future: true,
); // in a moment
```

The override also applies to nonzero values. When omitted, grammatical
direction continues to be inferred from the date or signed duration.

### Directional output

`directional` controls whether the result includes localized past or future
wording. It is independent of the selected presentation format:

```dart
durationAgo(
  const Duration(minutes: 2),
  locale: en.locale,
  directional: false,
); // 2 minutes
```

When `directional` is omitted, it defaults to `true` for `long`, `short`, and
`narrow`, and to `false` for `mini`. Passing it explicitly overrides that
default. Past and future inference still determines which grammatical form is
used whenever directional output is enabled.

## Custom time units

### Built-in custom units

The package ships opt-in steps for three units that are not members of
`TimeAgoUnit`:

- `fortnight`: two weeks
- `decade`: ten years
- `century`: one hundred years

They are exported only by locale files whose labels and directional grammar
have been reviewed:

- `en` (`en-GB`): `fortnight`, `decade`, and `century`
- `en-US`, `en-AU`, `en-CA`, and `en-SG`: `decade` and `century`
- `fr`/`fr-CA`, `es` and its regional variants, `it`, `pt`/`pt-AO`, `nl`,
  `zh`/`zh-Hans-HK`, and `ja`: `decade` and `century`

The exports are const `TimeAgoStep` values and remain opt-in:

```dart
durationAgo(
  const Duration(days: 3650),
  locale: en.locale,
  steps: const [en.fortnight, en.decade, en.century],
); // 1 decade ago
```

### Defining a custom step

`TimeAgoStep.custom()` attaches a formatter directly to one step. Use it for
one-off behavior, including steps without a numeric unit. A unitless step must
provide `minTime` or `minTimeResolver`.

```dart
String formatReleaseWindow(TimeAgoStepContext context) {
  return context.isPast ? 'released earlier' : 'coming later';
}

const releaseWindow = TimeAgoStep.custom(
  minTime: Duration(days: 30),
  formatter: formatReleaseWindow,
);
```

A custom step can also represent a multiplied numeric unit by supplying
`unit` and `unitMultiplier`. A top-level or static formatter function keeps
the step const.

### Defining a reusable custom-unit step

`TimeAgoStep.customUnit()` accepts a `TimeAgoCustomUnit` definition that keeps
the base unit, multiplier, and formatter together. Use it when the same
translated unit should be reusable or exported by a locale library.

`TimeAgoCustomUnitTranslation` is the standard implementation for
plural-label-based units:

```dart
const centuryUnit = TimeAgoCustomUnitTranslation(
  unit: TimeAgoUnit.year,
  unitMultiplier: 100,
  units: TimeAgoFormatSet(
    long: TimeAgoPluralLabels.oneOther(
      one: '{0} century',
      other: '{0} centuries',
    ),
    short: TimeAgoPluralLabels.same('{0} c'),
    narrow: TimeAgoPluralLabels.same('{0}c'),
  ),
);

const TimeAgoStep century = TimeAgoStep.customUnit(centuryUnit);
```

`TimeAgoCustomUnit` is an open interface, not a fixed list. Implement it
directly when formatting needs behavior beyond translated plural labels.

The translation helper localizes numbers, selects plural forms and label
widths, applies cutoffs, and composes past or future direction using the
selected locale. Long and short labels are required; narrow and mini are
optional. Narrow falls back to short, while mini falls back to narrow and then
short. For languages whose unit changes grammatical form,
provide explicit `TimeAgoFormatSet<TimeAgoRelativeUnitLabels>` values through
`relative`.

Choose between them based on ownership and reuse:

- `custom()` stores a formatter callback directly on one step. Its unit is
  optional, so it also supports non-numeric and threshold-only behavior.
- `customUnit()` stores a reusable numeric-unit contract containing the base
  unit, multiplier, and formatter. It is the better fit for translated units
  shared by locale libraries or multiple step configurations.

Both support thresholds, rounding, granularity, cutoffs, update scheduling, and
const construction.

For multiplied units, inferred thresholds, amounts, cutoffs, and update
boundaries use `unit.microseconds * unitMultiplier`. `context.unit` remains the
base unit, while `context.amount` is expressed in custom units.
`context.unitMultiplier` exposes the multiplier, and `granularity` is applied
after multiplication. Explicit `minTime` and `minTimeResolver` values remain
final threshold overrides and are not multiplied. Custom units are available
only in single-unit `steps`, not multi-unit `units`.

## Flutter configuration

Put defaults in a provider. Nested providers override configuration without
mutating global state:

```dart
TimeAgoProvider(
  locale: en.locale,
  fallbackFunctions: englishTimeAgoLocaleFunctions,
  format: TimeAgoFormat.long,
  directional: true,
  steps: TimeAgoSteps.fromMinuteNow,
  cutoffStep: const TimeAgoStep.unit(
    TimeAgoUnit.year,
    cutoffAmount: 3,
  ),
  multiUnits: const [
    TimeAgoUnit.year,
    TimeAgoUnit.month,
    TimeAgoUnit.day,
    TimeAgoUnit.hour,
    TimeAgoUnit.minute,
    TimeAgoUnit.second,
  ],
  child: const MyApp(),
);
```

Omitted context-extension arguments resolve from the nearest provider:

```dart
final label = context.timeAgo(message.sentAt);
final detailedLabel = context.timeAgoMulti(message.sentAt);
final result = context.timeAgoResult(message.sentAt);
final durationLabel = context.durationAgo(const Duration(hours: 3));
```

The context extension exposes the same eight methods as the top-level API:
`timeAgo`, `timeAgoMulti`, `timeAgoResult`, `timeAgoMultiResult`,
`durationAgo`, `durationAgoMulti`, `durationAgoResult`, and
`durationAgoMultiResult`.

These methods are one-shot. For automatic updates, use `TimeAgoText` or
`TimeAgoBuilder`:

```dart
TimeAgoText(time: message.sentAt);

TimeAgoBuilder(
  time: message.sentAt,
  builder: (context, value) => Semantics(
    label: 'Sent $value',
    child: Text(value),
  ),
);
```

Widgets under one provider share one `TimeAgoScheduler`. It targets the
earliest registered transition and rebuilds only due subscriptions. It also
handles app resume, long web timer limits, disposal, manual `refresh()`, and
unknown custom-step timing. `TimeAgoProvider(frozenAt: ...)` freezes the shared
clock for deterministic previews and tests.

Custom `nextUpdate` requests are combined with step and cutoff transitions, so
structural boundaries cannot be skipped. Without `nextUpdate`, custom
formatters retain fallback polling. `TimeAgoUpdate.unknown(maximumDelay: ...)`
can cap that fallback when another exact deadline is known.

## Locale customization

`LocaleConfig` and every nested label type have `copyWith()` methods, so an
application can replace a single string while preserving the rest:

```dart
final locale = en.locale.copyWith(
  now: en.locale.now.copyWith(past: 'a blink ago'),
  long: en.locale.long.copyWith(
    cutoffResolver: (amount) => (
      plural: TimeAgoPluralCategory.many,
      pattern: '{0} or more',
    ),
  ),
);
```

Each `TimeAgoFormatLabels` has its own `cutoffResolver`, so long, short, narrow,
and mini output can use different wording. The resolver receives the cutoff
amount and returns a plural category plus a pattern for the already-localized
number. Its default result is
`(plural: TimeAgoPluralCategory.many, pattern: '{0}+')`.

Plural resolution plus number and date formatting are grouped under
`LocaleConfig.functions`. Implement `TimeAgoLocaleFunctions`, or extend the
non-Intl English implementation to override selected behavior:

```dart
final class HashEnglishFunctions extends EnTimeAgoLocaleFunctions {
  const HashEnglishFunctions();

  @override
  String formatNumber(num value) => '#$value';
}

final locale = en.locale.copyWith(
  functions: const HashEnglishFunctions(),
);
```

Every bundled locale uses `IntlTimeAgoLocaleFunctions`. If an Intl operation
is unavailable, only that operation uses `fallbackFunctions`; the selected
locale's translated labels remain in use. The default fallback is the const,
non-Intl `englishTimeAgoLocaleFunctions`.

Fallback functions can be supplied to every top-level formatting function,
`TimeAgoProvider`, context extensions, `TimeAgoBuilder`, or `TimeAgoText`.
Explicit widget or context-extension values take precedence over the nearest
provider. Nested providers inherit their parent's fallback when omitted.

## Intl date initialization

Intl number and plural data are immediately available, but localized date
symbols must be initialized when Twitter-style localized dates are needed:

```dart
import 'package:any_timeago/any_timeago.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeTimeAgoDateFormatting();
  runApp(const MyApp());
}
```

This convenience helper bundles and loads all local date symbols provided by
`package:intl`. Applications that need another loading strategy can initialize
Intl directly. Call initialization before `runApp()`; until it completes, date
operations use the configured fallback. Failed lookups are not cached, so
subsequent calls use Intl after initialization.

Formats are stored in an immutable `TimeAgoFormatSet`: `long` and `short` are
required, while `narrow` and `mini` are nullable. `labelsFor()` resolves narrow
to short and mini to narrow then short. `formats.exact()` and
`supportsFormat()` expose exact availability without applying those fallbacks.

Locale files document their exact source provenance. Relative labels use the
checked-in `javascript-time-ago` locale sources as a starting point, wording is
cross-checked against `time_ago_provider`, and plural/date/duration/list
behavior follows Unicode CLDR 48.1. Manually completed Bokmål values are marked
inline.

## Locale core sharing

Relative-time locale data started from `javascript-time-ago-main/locale` and
was then reviewed and extended for this package.

Supported locales: `af`, `ak`, `am`, `ar`, `ar_ae`, `as`, `ast`, `az`,
`ba`, `bal_latn`, `be`, `be_tarask`, `bg`, `bgc`, `blo`, `bn`, `br`,
`brx`, `bs`, `bs_cyrl`, `bua`, `ca`, `ccp`, `ce`, `ceb`, `chr`,
`cs`, `csw`, `cv`, `cy`, `da`, `de`, `doi`, `dsb`, `dz`, `ee`,
`el`, `en`, `en_au`, `en_ca`, `en_sg`, `en_us`, `eo`, `es`, `es_419`,
`es_ar`, `es_mx`, `es_py`, `es_sv`, `es_us`, `et`, `eu`, `fa`,
`ff_adlm`, `fi`, `fil`, `fo`, `fr`, `fr_ca`, `fur`, `fy`, `ga`,
`gd`, `gl`, `gu`, `ha`, `he`, `hi`, `hi_latn`, `hr`, `hsb`, `ht`,
`hu`, `hy`, `ia`, `id`, `ie`, `ig`, `ii`, `is`, `it`, `ja`, `jgo`,
`jv`, `ka`, `kaa`, `kea`, `kgp`, `kk`, `kk_arab`, `kl`, `km`, `kn`,
`ko`, `kok`, `kok_latn`, `ks`, `ksh`, `ku`, `ky`, `lb`, `lkt`,
`lld`, `lo`, `lt`, `lv`, `mai`, `mi`, `mk`, `ml`, `mn`, `mni`,
`mr`, `ms`, `ms_arab`, `mt`, `my`, `mzn`, `nb`, `ne`, `nl`, `nn`,
`no`, `nqo`, `nso`, `om`, `or`, `pa`, `pcm`, `pl`, `ps`, `ps_pk`,
`pt`, `pt_ao`, `qu`, `raj`, `rhg`, `rm`, `ro`, `ru`, `rw`, `sah`,
`sc`, `scn`, `sd`, `sd_deva`, `se`, `se_fi`, `shn`, `si`, `sk`,
`sl`, `so`, `sq`, `sr`, `sr_cyrl_ba`, `sr_latn`, `sr_latn_ba`, `su`,
`sv`, `sw`, `syr`, `ta`, `te`, `tg`, `th`, `ti`, `tk`, `tn`, `to`,
`tok`, `tr`, `tt`, `tyv`, `ug`, `uk`, `ur`, `ur_in`, `uz`,
`uz_cyrl`, `vec`, `vi`, `wae`, `wo`, `xh`, `xnr`, `yi`, `yo`,
`yo_bj`, `yrl`, `yue`, `yue_hans`, `zh`, `zh_hans_hk`, `zh_hant`,
`zh_hant_hk`, `zu`.
