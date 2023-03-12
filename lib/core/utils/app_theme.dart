import 'package:biznugget/core/utils/colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    fontFamily: 'Great Sailor',
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor1),
    primaryColor: AppColors.primaryColor1,
    hintColor: AppColors.hintColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
  );
}
// core_sans_c.otf