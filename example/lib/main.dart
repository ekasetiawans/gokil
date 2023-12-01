import 'package:flutter/material.dart';
import 'package:gokil/gokil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Gokil(
      controller: ThemeController(
        lightTheme: createLightTheme(
          primary: Colors.indigo,
          secondary: Colors.pink,
        ),
        darkTheme: createDarkTheme(
          primary: Colors.indigo,
          secondary: Colors.pink,
        ),
        defaultThemeMode: ThemeMode.light,
      ),
      builder: (lightTheme, darkTheme, themeMode) {
        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          home: Scaffold(
            body: Builder(builder: (context) {
              return Column(
                children: [
                  'Hello World!'.text,
                  'Hello World!'.text.bold,
                  'Hello World!'.text.bold.italic,
                  'Hello World!'.text.bold.italic.underline,
                  'Hello World!'.text.bold.italic.lineThrough,
                  'Hello World!'.text.bold.size(18),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Gokil.setTheme(context, ThemeMode.dark);
                    },
                    child: 'Dark Mode'.text,
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Gokil.setTheme(context, ThemeMode.light);
                    },
                    child: 'Light Mode'.text,
                  ),
                ],
              );
            }),
          ),
        );
      },
    );
  }
}
