import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/nb.dart' as nb;
import 'package:flutter/widgets.dart';

final LocaleConfig locale = nb.locale.copyWith(
  locale: Locale.fromSubtags(languageCode: 'no'),
  calendar: const TimeAgoCalendarLabels(
    yesterday: 'i går',
    today: 'i dag',
    tomorrow: 'i morgen',
    dateTime: '{1} kl. {0}',
    relativeDateTime: '{1} kl. {0}',
  ),
  functions: const IntlTimeAgoLocaleFunctions('no'),
);
