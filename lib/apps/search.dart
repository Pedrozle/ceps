import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pesquisar CEP'),
        ),
        body: Container(
          color: Theme.of(context).colorScheme.secondary,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
          ),
          child: Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 24),
                        height: 56,
                        child: const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'CEP',
                              hintText: '00.000-000'),
                        ),
                      ),
                    ),
                    Container(
                      height: 56,
                      child: ElevatedButton(
                          onPressed: () => {}, child: const Text('Pesquisar')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
