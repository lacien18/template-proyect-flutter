import 'dart:ui';

abstract class Locales {
  static const supportedLanguages = ['es'];

  static List<Locale> get supportedLocales =>
      supportedLanguages.map((e) => Locale(e)).toList();
}
