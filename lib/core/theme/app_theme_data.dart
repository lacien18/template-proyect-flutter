import 'package:flutter/widgets.dart';
import 'package:proyect_template/core/resources/colors.dart';

class AppThemeData {
  final AppColors? colors;

  const AppThemeData({
    @required this.colors,
  });

  factory AppThemeData.light() {
    return const AppThemeData(
      colors: kAppLightColors,
    );
  }
}
