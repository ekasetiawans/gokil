import 'package:flutter/material.dart';

import 'derived_theme.dart';
import 'text_theme_extension.dart';

ThemeData createDarkTheme({
  required Color primary,
  required Color secondary,
  String? fontFamily,
  List<String> fontFamilyFallbacks = const [],
}) {
  var theme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: primary,
      primary: primary,
      secondary: secondary,
      onPrimary: primary.computeLuminance() > 0.8
          ? const Color(0xFF121212)
          : const Color(0xFFC8C8C8),
      surface: const Color(0xFF1c1c1c),
      onSurface: const Color(0xFFC8C8C8),
      background: const Color(0xFF121212),
      onBackground: const Color(0xFFC8C8C8),
      surfaceTint: Colors.transparent,
    ),
    textTheme: createTextThemeWithFontFamily(
      fontFamily: fontFamily,
      color: const Color(0xFFC8C8C8),
      fallbacks: fontFamilyFallbacks,
    ),
  );

  return derivedTheme(theme);
}
