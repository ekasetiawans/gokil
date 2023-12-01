import 'package:flutter/material.dart';

TextTheme createTextThemeWithFontFamily({
  String? fontFamily,
  required Color color,
  List<String> fallbacks = const [],
}) {
  return TextTheme(
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    displaySmall: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    titleLarge: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    titleSmall: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    bodySmall: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontFamilyFallback: fallbacks,
    ),
  );
}
