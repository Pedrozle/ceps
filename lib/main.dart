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
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),
        home: const Index());
  }
}
