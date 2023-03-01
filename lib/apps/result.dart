import 'package:flutter/material.dart';

enum DataFormat { json, jsonp, xml }

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _Result();
}

class _Result extends State<Result> {
  DataFormat? _format = DataFormat.json;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado da Pesquisa'),
      ),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0)),
          ),
          child: Container(
            height: 180,
            margin:
                const EdgeInsetsDirectional.only(top: 20, start: 16, end: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 24),
                        height: 56,
                        child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'CEP', hintText: '00.000-000'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56,
                      child: ElevatedButton(
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Result()),
                                )
                              },
                          child: const Text('Pesquisar')),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: const Text('Selecione o formato da resposta:',
                      textAlign: TextAlign.left),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Radio<DataFormat>(
                              value: DataFormat.json,
                              groupValue: _format,
                              onChanged: (DataFormat? value) {
                                setState(() {
                                  _format = value;
                                });
                              }),
                          const Expanded(
                            child: Text('JSON'),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Radio<DataFormat>(
                              value: DataFormat.jsonp,
                              groupValue: _format,
                              onChanged: (DataFormat? value) {
                                setState(() {
                                  _format = value;
                                });
                              }),
                          const Expanded(
                            child: Text('JSONP'),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Radio<DataFormat>(
                              value: DataFormat.xml,
                              groupValue: _format,
                              onChanged: (DataFormat? value) {
                                setState(() {
                                  _format = value;
                                });
                              }),
                          const Expanded(
                            child: Text('XML'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: width,
          decoration: const BoxDecoration(
            color: Color(0xff539103),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
                bottomLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0)),
          ),
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.all(16),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CEP:',
                ),
                SizedBox(height: 15),
                Text('Formato:'),
                SizedBox(height: 15),
                Text(
                    '{ "cep": "76801-799",  "logradouro": "Avenida dos Imigrantes",  "complemento": "até 465 - lado ímpar",  "bairro": "São Sebastião",  "localidade": "Porto Velho",  "uf": "RO",  "ibge": "1100205",  "gia": "",  "ddd": "69",  "siafi": "0003"}')
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
