import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'locales.dart';

class AppLocalizations {

  AppLocalizations(this.locale);

  final Locale? locale;
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();


 Map<String, String> _localizedStrings = {};

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Future<bool> load() async {
    // Load the language JSON file from the "lang" folder
    final String jsonString = await rootBundle.loadString(
      'lang/${locale!.languageCode}.json',
    );
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((String key, dynamic value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  /// Returns the localized [String].
  String translate(String key) {
    final localizedText = _localizedStrings[key];
    assert(localizedText != null);
    return localizedText!;
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale? locale) {
    return Locales.supportedLanguages.contains(locale!.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
