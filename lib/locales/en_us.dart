import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/en.dart' as en;
import 'package:flutter/widgets.dart';

final LocaleConfig locale = en.locale.copyWith(
  locale: const Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
  functions: const IntlTimeAgoLocaleFunctions('en_US'),
);

/// Ten-year unit shared with the English CLDR core.
const TimeAgoStep decade = en.decade;

/// Hundred-year unit shared with the English CLDR core.
const TimeAgoStep century = en.century;
