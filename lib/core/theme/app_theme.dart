import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyect_template/core/resources/colors.dart';

import 'app_theme_data.dart';

class AppTheme extends InheritedWidget {
  final AppThemeData? data;

  const AppTheme({
    Key? key,
    @required child,
    @required this.data,
  }) : super(key: key, child: child);

  static AppThemeData? of(BuildContext context) {
    final appTheme = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    assert(
      appTheme != null,
      'AppTheme requested with a context that does not include an AppTheme',
    );
    return appTheme!.data;
  }

  /// App light theme.
  ///
  /// Used as [MaterialApp.theme] property.
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: kAppLightColors.primary,
    primaryColorBrightness: Brightness.light,
    backgroundColor: kAppLightColors.background,
    scaffoldBackgroundColor: kAppLightColors.background,
    canvasColor: kAppLightColors.background,
    errorColor: kAppLightColors.error,
    disabledColor: kAppLightColors.inactive,
    unselectedWidgetColor: kAppLightColors.inactive,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: kAppLightColors.primary!,
      selectionHandleColor: kAppLightColors.background,
      cursorColor: kAppLightColors.background,
    ),
    dividerColor: kAppLightColors.inactive!,
    colorScheme: ColorScheme.light(
      primary: kAppLightColors.primary!,
      secondary: kAppLightColors.secondary!,
      error: kAppLightColors.error!,
      surface: kAppLightColors.background!,
      onSecondary: kAppLightColors.secondary!,
      onSurface: kAppLightColors.background!,
      onError: kAppLightColors.error!,
    ),
    primaryIconTheme: IconThemeData(
      color: kAppLightColors.background,
    ),
    iconTheme: IconThemeData(
      color: kAppLightColors.background,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
      ),
      color: kAppLightColors.background,
    ),
    buttonBarTheme: const ButtonBarThemeData(buttonPadding: EdgeInsets.zero),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kAppLightColors.text),
      bodyText2: TextStyle(color: kAppLightColors.text),
      subtitle1: TextStyle(color: kAppLightColors.text),
      subtitle2: TextStyle(color: kAppLightColors.text),
      headline5: TextStyle(color: kAppLightColors.text),
      headline6: TextStyle(
        color: kAppLightColors.text,
        fontWeight: FontWeight.w600,
      ),
      button: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
  );

  @override
  bool updateShouldNotify(AppTheme oldWidget) => false;
}
