import 'package:intl/date_symbol_data_local.dart' as intl;

/// Loads Intl date symbols for all locales bundled by `package:intl`.
///
/// Call this before `runApp()` when localized month-day formatting is needed.
/// Applications that need another loading strategy can initialize Intl
/// directly instead.
Future<void> initializeTimeAgoDateFormatting() {
  return intl.initializeDateFormatting();
}
