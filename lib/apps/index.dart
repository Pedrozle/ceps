import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffCCCCCC),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.purpleAccent,
          ),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),
        home: Scaffold(
            body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/Vectorlogo.png'),
                const SizedBox(height: 400),
                FilledButton(
                    style: ButtonStyle(),
                    onPressed: () => {},
                    child: const Text('Pesquisar CEPs'))
              ],
            )
          ],
        )));
  }
}
