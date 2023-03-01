import 'package:ceps/apps/result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

enum DataFormat { json, jsonp, xml }

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _Search();
}

class _Search extends State<Search> {
  DataFormat? _format = DataFormat.json;

  @override
  Widget build(BuildContext context) {
    late Future<String> futureCep;
    TextEditingController cepInput = TextEditingController();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Container(
            margin: EdgeInsets.only(top: (height * 0.25)),
            child: Center(child: Image.asset('assets/Vectorlogo.png'))),
        Container(
          margin: EdgeInsets.only(top: (height * 0.77)),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(32.0),
                topLeft: Radius.circular(32.0)),
          ),
          child: Container(
            margin:
                const EdgeInsetsDirectional.only(top: 40, start: 16, end: 16),
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
                        child: TextField(
                          controller: cepInput,
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
                                // futureCep = fetchCEP(),
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
      ]),
    ));
  }

  // Future<http.Response> fetchCEP(String cep) async{
  //   String cep =
  //   String url = "https://viacep.com.br/ws/$/json/";

  //   final response = await http.get(Uri.parse(url));

  //   return response;
  // }
}
