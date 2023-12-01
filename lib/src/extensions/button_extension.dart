import 'package:flutter/material.dart';
import 'package:gokil/src/extensions/theme_context.dart';

extension ElevatedButtonExtension on ElevatedButton {
  Widget get primary => Builder(
        builder: (context) {
          return ElevatedButton(
            style: context.primaryElevatedButtonStyle,
            onPressed: onPressed,
            child: child,
          );
        },
      );

  Widget get secondary => Builder(
        builder: (context) {
          return ElevatedButton(
            style: context.secondaryElevatedButtonStyle,
            onPressed: onPressed,
            child: child,
          );
        },
      );
}

extension FilledButtonExtension on FilledButton {
  Widget get primary => Builder(
        builder: (context) {
          return FilledButton(
            style: context.primaryFilledButtonStyle,
            onPressed: onPressed,
            child: child,
          );
        },
      );

  Widget get secondary => Builder(
        builder: (context) {
          return FilledButton(
            style: context.secondaryFilledButtonStyle,
            onPressed: onPressed,
            child: child,
          );
        },
      );
}
