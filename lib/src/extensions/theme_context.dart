import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;
  bool get isDarkTheme => theme.brightness == Brightness.dark;
  bool get isLightTheme => theme.brightness == Brightness.light;

  // ButtonStyles
  ButtonStyle get primaryElevatedButtonStyle => ElevatedButton.styleFrom(
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
      );

  ButtonStyle get secondaryElevatedButtonStyle => ElevatedButton.styleFrom(
        foregroundColor: colorScheme.onSecondary,
        backgroundColor: colorScheme.secondary,
      );

  ButtonStyle get primaryFilledButtonStyle => FilledButton.styleFrom(
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
      );

  ButtonStyle get secondaryFilledButtonStyle => FilledButton.styleFrom(
        foregroundColor: colorScheme.onSecondary,
        backgroundColor: colorScheme.secondary,
      );
}
