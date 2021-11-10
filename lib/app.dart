import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'core/i18n/app_localizations.dart';
import 'core/i18n/locales.dart';
import 'core/navigation/app_navigator.dart';
import 'core/navigation/destinations.dart';
import 'core/presentations/never_overscroll_behavior.dart';
import 'core/resources/strings.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/app_theme_data.dart';

class App extends StatelessWidget {
  final String? initialRoute;

  const App({Key? key, @required this.initialRoute}) : super(key: key);

  Locale _localeResolutionCallback(
    Locale? locale,
    Iterable<Locale> supportedLocales,
  ) {
    if (locale == null) {
      Intl.defaultLocale = supportedLocales.first.languageCode;
      return supportedLocales.first;
    } else {
      for (final supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          Intl.defaultLocale = supportedLocale.languageCode;
          return supportedLocale;
        }
      }
      Intl.defaultLocale = supportedLocales.first.languageCode;
      return supportedLocales.first;
    }
  }

  String _generateTitle(BuildContext context) {
    return getString(context, RString.appName);
  }

  Widget _buildApp(BuildContext context, Widget? child) {
    return ScrollConfiguration(
      behavior: NeverOverScrollBehavior(),
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: AppTheme(
          data: AppThemeData.light(),
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: _generateTitle,
      navigatorKey: AppNavigator.navigatorKey,
      initialRoute: initialRoute ?? Destinations.home,
      onGenerateInitialRoutes: AppNavigator.generateInitialRoutes,
      onGenerateRoute: AppNavigator.generateRoute,
      theme: AppTheme.light,
      builder: _buildApp,
      supportedLocales: Locales.supportedLocales,
      localeResolutionCallback: _localeResolutionCallback,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
