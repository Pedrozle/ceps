import 'package:ceps/apps/search.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/Vectorlogo.png'),
            Container(
              margin: EdgeInsets.only(top: 400),
              height: 65,
              width: 245,
              child: ElevatedButton(
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()),
                        )
                      },
                  child: const Text('Pesquisar CEPs')),
            ),
          ],
        )
      ],
    ));
  }
}
