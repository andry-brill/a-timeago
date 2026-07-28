import 'package:any_timeago/any_timeago.dart';
import 'package:any_timeago/locales/nb.dart' as nb;
import 'package:flutter/widgets.dart';

final LocaleConfig locale = nb.locale.copyWith(
  locale: Locale.fromSubtags(languageCode: 'no'),
  functions: const IntlTimeAgoLocaleFunctions('no'),
);
