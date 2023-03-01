import 'package:ceps/apps/search.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.none,
              alignment: Alignment.bottomLeft,
              image: new AssetImage('assets/Vectorback.png'))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 100,
                  child:
                      Image.asset('assets/Vectorlogo.png', fit: BoxFit.fill)),
              Container(
                margin: const EdgeInsets.only(top: 400),
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
      ),
    ));
  }
}
