import 'package:flutter/material.dart';
import 'package:proyect_template/core/i18n/app_localizations.dart';

String getString(BuildContext context, String key) {
  return AppLocalizations.of(context)!.translate(key);
}

abstract class RString {
  static const appName = 'app_name';
}
