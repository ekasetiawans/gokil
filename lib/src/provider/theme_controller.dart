// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {
  final ThemeData _lightTheme;
  final ThemeData _darkTheme;
  late ThemeMode _themeMode;

  final void Function(ThemeMode mode)? onThemeChanged;
  final ThemeMode Function()? getSavedThemeMode;

  ThemeController({
    required ThemeData lightTheme,
    required ThemeData darkTheme,
    ThemeMode defaultThemeMode = ThemeMode.system,
    this.onThemeChanged,
    this.getSavedThemeMode,
  })  : _lightTheme = lightTheme,
        _darkTheme = darkTheme,
        _themeMode = defaultThemeMode {
    if (getSavedThemeMode != null) {
      _themeMode = getSavedThemeMode!();
    }
  }

  set mode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
    onThemeChanged?.call(themeMode);
  }
}

class Gokil extends StatefulWidget {
  final ThemeController controller;
  final Widget Function(
    ThemeData lightTheme,
    ThemeData darkTheme,
    ThemeMode mode,
  ) builder;

  const Gokil({
    super.key,
    required this.controller,
    required this.builder,
  });

  @override
  State<Gokil> createState() => _GokilState();

  static void setTheme(BuildContext context, ThemeMode themeMode) {
    final controller =
        context.findAncestorStateOfType<_GokilState>()!.controller;
    controller.mode = themeMode;
  }
}

class _GokilState extends State<Gokil> {
  late ThemeController controller = widget.controller;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return widget.builder(
          widget.controller._lightTheme,
          widget.controller._darkTheme,
          widget.controller._themeMode,
        );
      },
    );
  }

  didUpdateWidget(Gokil oldWidget) {
    super.didUpdateWidget(oldWidget);
    controller = widget.controller;
  }
}
