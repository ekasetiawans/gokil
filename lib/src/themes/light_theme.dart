import 'package:flutter/material.dart';

import 'derived_theme.dart';
import 'text_theme_extension.dart';

ThemeData createLightTheme({
  required Color primary,
  required Color secondary,
  String? fontFamily,
  List<String> fontFamilyFallbacks = const [],
}) {
  var theme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: primary,
      primary: primary,
      secondary: secondary,
      onPrimary: primary.computeLuminance() > 0.5
          ? const Color(0xFF121212)
          : const Color(0xFFD5D5D5),
      surface: const Color(0xFFF0F0F0),
      onSurface: const Color(0xFF121212),
      background: const Color(0xFFF8F8F8),
      onBackground: const Color(0xFF121212),
      surfaceTint: Colors.transparent,
    ),
    textTheme: createTextThemeWithFontFamily(
      fontFamily: fontFamily,
      color: const Color(0xFF121212),
      fallbacks: fontFamilyFallbacks,
    ),
  );

  return derivedTheme(theme);
}
