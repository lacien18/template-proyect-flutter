import 'package:flutter/widgets.dart';

class AppColors {
  const AppColors({
    @required this.primary,
    @required this.secondary,
    @required this.background,
    @required this.skeleton,
    @required this.info,
    @required this.error,
    @required this.inactive,
    @required this.text,
  });

  final Color? primary;
  final Color? secondary;
  final Color? background;
  final Color? skeleton;
  final Color? info;
  final Color? error;
  final Color? inactive;
  final Color? text;
}

const kAppLightColors = AppColors(
  inactive: Color(0xFFBABABA),
  info: Color(0xFF61D2BA),
  error: Color(0xFFD51B4D),
  primary: Color(0xFF5B45C7),
  secondary: Color(0xFF03D1CF),
  background: Color(0xFFFFFFFF),
  skeleton: Color(0xFFBABABA),
  text:Color(0xFF17202A),
);
