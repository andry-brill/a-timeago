import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:any_timeago/locales/es.dart' as es;
import 'package:any_timeago/locales/fr.dart' as fr;
import 'package:any_timeago/locales/pl.dart' as pl;
import 'package:any_timeago/locales/sv.dart' as sv;
import 'package:any_timeago/steps/intl_twitter.dart' as twitter;
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeTimeAgoDateFormatting();
  runApp(const TimeAgoExample());
}

class TimeAgoExample extends StatelessWidget {
  const TimeAgoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TimeAgoProvider(
      locale: en.locale,
      child: MaterialApp(
        title: 'any_timeago',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        ),
        home: const _ExamplePage(),
      ),
    );
  }
}

class _ExamplePage extends StatelessWidget {
  const _ExamplePage();

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final threeMinutesAgo = now.subtract(const Duration(minutes: 3));
    final oneMinute36SecondsAgo = now.subtract(
      const Duration(minutes: 1, seconds: 36),
    );
    final tenYearsAgo = DateTime(
      now.year - 10,
      now.month,
      now.day,
      now.hour,
      now.minute,
      now.second,
      now.millisecond,
      now.microsecond,
    );
    final oneYearAndFiveDaysAgo = DateTime(
      now.year - 1,
      now.month,
      now.day,
      now.hour,
      now.minute,
      now.second,
      now.millisecond,
      now.microsecond,
    ).subtract(const Duration(days: 5));

    final formatRows = <_FormatShowcaseRow>[
      _FormatShowcaseRow(
        language: 'English',
        feature: '-',
        valueFor: (format) => durationAgo(
          const Duration(minutes: 3),
          locale: en.locale,
          format: format,
        ),
      ),
      _FormatShowcaseRow(
        language: 'English',
        feature: 'Future',
        valueFor: (format) => durationAgo(
          const Duration(hours: -2),
          locale: en.locale,
          format: format,
        ),
      ),
      _FormatShowcaseRow(
        language: 'Polish',
        feature: 'Future',
        valueFor: (format) => durationAgo(
          const Duration(hours: -2),
          locale: pl.locale,
          format: format,
        ),
      ),
      _FormatShowcaseRow(
        language: 'English',
        feature: 'Cutoff',
        valueFor: (format) => durationAgo(
          const Duration(days: 3650),
          locale: en.locale,
          format: format,
          cutoffStep: const TimeAgoStep.unit(
            TimeAgoUnit.year,
            cutoffAmount: 9,
          ),
        ),
      ),
      _FormatShowcaseRow(
        language: 'Swedish',
        feature: 'Cutoff',
        valueFor: (format) => durationAgo(
          const Duration(days: 3650),
          locale: sv.locale,
          format: format,
          cutoffStep: const TimeAgoStep.unit(
            TimeAgoUnit.year,
            cutoffAmount: 9,
          ),
        ),
      ),
      _FormatShowcaseRow(
        language: 'English',
        feature: 'Custom unit',
        valueFor: (format) => durationAgo(
          const Duration(days: 3650 * 3),
          locale: en.locale,
          format: format,
          steps: const <TimeAgoStep>[en.decade],
        ),
      ),
      _FormatShowcaseRow(
        language: 'Spanish',
        feature: 'Custom unit',
        valueFor: (format) => durationAgo(
          const Duration(days: 3650 * 3),
          locale: es.locale,
          format: format,
          steps: const <TimeAgoStep>[es.decade],
        ),
      ),
      _FormatShowcaseRow(
        language: 'English',
        feature: 'Multi-unit',
        valueFor: (format) => durationAgoMulti(
          const Duration(days: 17),
          locale: en.locale,
          format: format,
          units: const <TimeAgoUnit>[
            TimeAgoUnit.week,
            TimeAgoUnit.day,
          ],
        ),
      ),
      _FormatShowcaseRow(
        language: 'French',
        feature: 'Multi-unit',
        valueFor: (format) => durationAgoMulti(
          const Duration(days: 17),
          locale: fr.locale,
          format: format,
          units: const <TimeAgoUnit>[
            TimeAgoUnit.week,
            TimeAgoUnit.day,
          ],
        ),
      ),
    ];

    final sections = <_ShowcaseSection>[
      _ShowcaseSection(
        title: 'Step presets',
        rows: <_ShowcaseRow>[
          _ShowcaseRow(
            shortcut: 'timeAgo(..., steps: TimeAgoSteps.precise)',
            explanation:
                'Includes seconds instead of rounding the interval to a minute.',
            result: TimeAgoText(
              time: now.subtract(const Duration(seconds: 45)),
              steps: TimeAgoSteps.precise,
            ),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgo(..., steps: TimeAgoSteps.fromMinuteNow)',
            explanation:
                'Uses the localized now label below the first rounded minute.',
            result: TimeAgoText(
              time: now.subtract(const Duration(seconds: 20)),
              steps: TimeAgoSteps.fromMinuteNow,
            ),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgo(..., steps: twitter.steps)',
            explanation:
                'Switches older values from relative units to a localized '
                'calendar date.',
            result: TimeAgoText(
              time: DateTime(2020, 5, 20),
              steps: twitter.steps,
            ),
          ),
        ],
      ),
      _ShowcaseSection(
        title: 'Per-step rounding',
        rows: <_ShowcaseRow>[
          _ShowcaseRow(
            shortcut: 'timeAgo(..., steps: [TimeAgoStep.unit(..., '
                'rounding: TimeAgoRounding.floor)])',
            explanation:
                'Counts only completed minutes in a 1-minute, 36-second '
                'interval.',
            result: TimeAgoText(
              time: oneMinute36SecondsAgo,
              steps: const <TimeAgoStep>[
                TimeAgoStep.unit(
                  TimeAgoUnit.minute,
                  rounding: TimeAgoRounding.floor,
                ),
              ],
            ),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgo(..., steps: [TimeAgoStep.unit(..., '
                'rounding: TimeAgoRounding.round)])',
            explanation: 'Rounds the same interval to the nearest minute.',
            result: TimeAgoText(
              time: oneMinute36SecondsAgo,
              steps: const <TimeAgoStep>[
                TimeAgoStep.unit(
                  TimeAgoUnit.minute,
                  rounding: TimeAgoRounding.round,
                ),
              ],
            ),
          ),
        ],
      ),
      _ShowcaseSection(
        title: 'Granularity',
        rows: <_ShowcaseRow>[
          _ShowcaseRow(
            shortcut: 'timeAgo(..., steps: [TimeAgoStep.unit('
                'TimeAgoUnit.second, granularity: 5)])',
            explanation: 'Snaps 13 seconds to the nearest 5-second increment.',
            result: TimeAgoText(
              time: now.subtract(const Duration(seconds: 13)),
              steps: const <TimeAgoStep>[
                TimeAgoStep.unit(TimeAgoUnit.second, granularity: 5),
              ],
            ),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgo(..., steps: [TimeAgoStep.unit('
                'TimeAgoUnit.minute, granularity: 30)])',
            explanation: 'Snaps 43 minutes to the nearest 30-minute increment.',
            result: TimeAgoText(
              time: now.subtract(const Duration(minutes: 43)),
              steps: const <TimeAgoStep>[
                TimeAgoStep.unit(TimeAgoUnit.minute, granularity: 30),
              ],
            ),
          ),
        ],
      ),
      _ShowcaseSection(
        title: 'Cutoffs',
        rows: <_ShowcaseRow>[
          _ShowcaseRow(
            shortcut: 'timeAgo(..., cutoffStep: TimeAgoStep.unit('
                'TimeAgoUnit.minute, cutoffAmount: 3))',
            explanation: 'Caps values beyond 3 minutes and adds the + suffix.',
            result: TimeAgoText(
              time: now.subtract(const Duration(minutes: 4)),
              cutoffStep: const TimeAgoStep.unit(
                TimeAgoUnit.minute,
                cutoffAmount: 3,
              ),
            ),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgo(..., cutoffStep: TimeAgoStep.unit('
                'TimeAgoUnit.year, cutoffAmount: 9))',
            explanation: 'Caps values beyond 9 calendar years.',
            result: TimeAgoText(
              time: tenYearsAgo,
              cutoffStep: const TimeAgoStep.unit(
                TimeAgoUnit.year,
                cutoffAmount: 9,
              ),
            ),
          ),
        ],
      ),
      _ShowcaseSection(
        title: 'Multi-unit output',
        rows: <_ShowcaseRow>[
          _ShowcaseRow(
            shortcut: 'timeAgoMulti(...)',
            explanation: 'Includes every nonzero default unit.',
            result: TimeAgoText(
              time: now.subtract(
                const Duration(hours: 2, minutes: 3, seconds: 4),
              ),
              multi: true,
            ),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgoMulti(..., units: '
                '[TimeAgoUnit.year, TimeAgoUnit.day])',
            explanation:
                'Decomposes the interval using only the requested units.',
            result: TimeAgoText(
              time: oneYearAndFiveDaysAgo,
              multi: true,
              units: const <TimeAgoUnit>[
                TimeAgoUnit.year,
                TimeAgoUnit.day,
              ],
            ),
          ),
        ],
      ),
      _ShowcaseSection(
        title: 'Past and future',
        rows: <_ShowcaseRow>[
          _ShowcaseRow(
            shortcut: 'timeAgo(pastTime, ...)',
            result: TimeAgoText(time: threeMinutesAgo),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgo(futureTime, ...)',
            result: TimeAgoText(
              time: now.add(const Duration(minutes: 3)),
            ),
          ),
        ],
      ),
      _ShowcaseSection(
        title: 'Directional output',
        rows: <_ShowcaseRow>[
          _ShowcaseRow(
            shortcut: 'timeAgo(..., directional: true)',
            explanation: 'Includes localized past or future wording.',
            result: TimeAgoText(
              time: threeMinutesAgo,
              directional: true,
            ),
          ),
          _ShowcaseRow(
            shortcut: 'timeAgo(..., directional: false)',
            explanation: 'Returns only the localized amount and unit.',
            result: TimeAgoText(
              time: threeMinutesAgo,
              directional: false,
            ),
          ),
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('any_timeago')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: <Widget>[
          Text(
            'Live showcases',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Compare presentation formats across languages and features, then '
            'explore the live widget examples below.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 64),
          Text(
            'Formats, languages, and features',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 32),
          _FormatShowcaseTable(rows: formatRows),
          const SizedBox(height: 32),
          for (final section in sections) ...<Widget>[
            Text(
              section.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            _ShowcaseTable(rows: section.rows),
            const SizedBox(height: 32),
          ],
        ],
      ),
    );
  }
}

class _FormatShowcaseRow {
  const _FormatShowcaseRow({
    required this.language,
    required this.feature,
    required this.valueFor,
  });

  final String language;
  final String feature;
  final String Function(TimeAgoFormat format) valueFor;
}

class _ShowcaseSection {
  const _ShowcaseSection({
    required this.title,
    required this.rows,
  });

  final String title;
  final List<_ShowcaseRow> rows;
}

class _ShowcaseRow {
  const _ShowcaseRow({
    required this.shortcut,
    required this.result,
    this.explanation,
  });

  final String shortcut;
  final Widget result;
  final String? explanation;
}

const _tableAccent = Color(0xFFbde3ff);
const _tableRadius = BorderRadius.all(Radius.circular(12));
const _tableBorderSide = BorderSide(color: _tableAccent);
const _tableBorder = TableBorder(
  top: _tableBorderSide,
  right: _tableBorderSide,
  bottom: _tableBorderSide,
  left: _tableBorderSide,
  horizontalInside: _tableBorderSide,
  verticalInside: _tableBorderSide,
  borderRadius: _tableRadius,
);

Widget _roundedTable(Table table) {
  return ClipRRect(
    borderRadius: _tableRadius,
    child: table,
  );
}

class _FormatShowcaseTable extends StatelessWidget {
  const _FormatShowcaseTable({required this.rows});

  final List<_FormatShowcaseRow> rows;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleSmall;
    final featureStyle = Theme.of(context).textTheme.bodySmall;

    Widget cell(Widget child) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Center(child: child),
      );
    }

    Widget heading(String title, String subtitle) {
      return cell(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(title, style: titleStyle),
            const SizedBox(height: 2),
            Text(subtitle, style: featureStyle),
          ],
        ),
      );
    }

    return _roundedTable(
      Table(
        border: _tableBorder,
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(1.5),
          1: FlexColumnWidth(2.2),
          2: FlexColumnWidth(2.2),
          3: FlexColumnWidth(2.2),
          4: FlexColumnWidth(2.2),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            decoration: const BoxDecoration(color: _tableAccent),
            children: <Widget>[
              heading('Language', 'Feature'),
              heading('Long', 'Format'),
              heading('Short', 'Format'),
              heading('Narrow', 'Format'),
              heading('Mini', 'Format'),
            ],
          ),
          for (final row in rows)
            TableRow(
              children: <Widget>[
                cell(
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(row.language, style: titleStyle),
                      const SizedBox(height: 2),
                      Text(
                        row.feature,
                        style: featureStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                for (final format in TimeAgoFormat.values)
                  cell(
                    SelectableText(
                      row.valueFor(format),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class _ShowcaseTable extends StatelessWidget {
  const _ShowcaseTable({required this.rows});

  final List<_ShowcaseRow> rows;

  @override
  Widget build(BuildContext context) {
    final codeStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontFamily: 'monospace',
        );

    Widget cell(Widget child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: child,
      );
    }

    return _roundedTable(
      Table(
        border: _tableBorder,
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(4),
          1: FlexColumnWidth(2),
          2: FlexColumnWidth(3),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            decoration: const BoxDecoration(color: _tableAccent),
            children: <Widget>[
              cell(
                Text(
                  'Shortcut',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              cell(
                Text(
                  'Live result',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              cell(
                Text(
                  'Explanation',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
          for (final row in rows)
            TableRow(
              children: <Widget>[
                cell(SelectableText(row.shortcut, style: codeStyle)),
                cell(row.result),
                cell(Text(row.explanation ?? '-')),
              ],
            ),
        ],
      ),
    );
  }
}
