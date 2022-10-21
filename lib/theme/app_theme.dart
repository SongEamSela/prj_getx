import 'package:flutter/material.dart';
import 'package:prj_getx/theme/theme_colors.dart';

class Themes {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ThemeColors.lavender,
      onPrimary: Colors.black,
      secondary: ThemeColors.spaceBlue,
      onSecondary: ThemeColors.spaceCadet,
      background: ThemeColors.babyPink,
    ),
  );

  static final darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(
    primary: ThemeColors.spaceBlue,
    secondary: ThemeColors.burgundy,
    onSecondary: ThemeColors.spaceCadet,
    background: ThemeColors.spaceCadet,
  ));
}
