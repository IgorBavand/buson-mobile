import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Define a custom Form widget.
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  SearchScreenState createState() {
    return SearchScreenState();
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

class SearchScreenState extends State<SearchScreen> {
  final controllerOrigem = TextEditingController();
  final controllerDestino = TextEditingController();
  final controllerIda = TextEditingController();

  void _buscarPassagens() {
    Navigator.pushReplacementNamed(
      context,
      "/listar-passagens",
      arguments: {
        "origem": controllerOrigem.value.text,
        "destino": controllerDestino.value.text,
        "ida": controllerIda.value.text,
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Buscar passagens'),
          ),
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(stops: [
                0.2,
                1.0
              ], colors: [
                Colors.white,
                Colors.white,
              ])),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: controllerOrigem,
                      cursorColor: Colors.blue,
                      decoration: const InputDecoration(
                          label: Text("Origem"),
                          hintText: "Digite o lugar de partida...",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.bus_alert_sharp)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: controllerDestino,
                      decoration: const InputDecoration(
                          label: Text("Destino"),
                          hintText: "Digite o lugar de destino...",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.bus_alert)),
                    ),
                    TextField(
                      controller: controllerIda,
                      decoration: const InputDecoration(
                          label: Text("Data da ida"),
                          hintText: "Digite a data...",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.date_range)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          _buscarPassagens();
                        },
                        icon: const Icon(Icons.search),
                        label: const Text("Procurar"),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }

  Container buildCallContainer(String tipo) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(10.0)),
      child: Center(child: Text(tipo)),
    );
  }

}
