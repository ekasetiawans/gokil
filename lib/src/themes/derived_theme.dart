import 'package:flutter/material.dart';

ThemeData derivedTheme(ThemeData theme) {
  return theme.copyWith(
    tooltipTheme: TooltipThemeData(
      preferBelow: true,
      waitDuration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: theme.dividerColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      textStyle: TextStyle(
        fontSize: 13,
        color: Colors.grey.shade700,
      ),
    ),
    dividerColor: theme.brightness == Brightness.light
        ? Colors.grey.shade300
        : const Color(0xFF222222),
    dividerTheme: DividerThemeData(
      color: theme.brightness == Brightness.light
          ? Colors.grey.shade300
          : const Color(0xFF222222),
    ),
    shadowColor: theme.colorScheme.shadow,
    iconTheme: IconThemeData(
      color: theme.colorScheme.onSurface,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: theme.colorScheme.background,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      color: theme.colorScheme.surface,
      elevation: 2.0,
      surfaceTintColor: Colors.transparent,
      shadowColor: theme.colorScheme.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: 20,
        padding: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        minimumSize: const Size(120, 48),
        elevation: 0.0,
        textStyle: theme.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        minimumSize: const Size(120, 48),
        elevation: 2.0,
        textStyle: theme.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        minimumSize: const Size(120, 48),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: theme.colorScheme.surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      alignLabelWithHint: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: theme.colorScheme.surface,
      selectedItemColor: theme.colorScheme.primary,
    ),
    tabBarTheme: const TabBarTheme(
      dividerColor: Colors.transparent,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0.0,
        side: BorderSide(
          color: theme.dividerColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        minimumSize: const Size(120, 48),
      ),
    ),
    listTileTheme: ListTileThemeData(
      leadingAndTrailingTextStyle: theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14,
        color: Colors.black,
      ),
      titleTextStyle: theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14,
        color: Colors.black,
      ),
    ),
  );
}
