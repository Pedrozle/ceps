import 'package:flutter/material.dart';

//Packages
import 'package:ceps/apps/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffCCCCCC),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff006600),
            secondary: const Color(0xff919106),
          ),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32))),
              fillColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromARGB(255, 230, 230, 230)),
              filled: true,
              hintStyle: TextStyle(color: Color.fromARGB(255, 163, 163, 163))),
          radioTheme: RadioThemeData(
              fillColor: MaterialStateColor.resolveWith(
                  (states) => const Color(0xff006600))),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),
        home: const Index());
  }
}
