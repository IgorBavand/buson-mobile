import 'package:consumer/controller/passagem_controller.dart';
import 'package:consumer/model/passagem.dart';
import 'package:consumer/repository/passagem_repository.dart';
import 'package:flutter/material.dart';
import 'dart:convert' show utf8;

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var produtoController = PassagemController(PassagensRepository());
    produtoController.findAll();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Passagens encontradas')),
        backgroundColor: Colors.indigoAccent,
      ),
      body: FutureBuilder<List<Passagem>>(
        future: produtoController.findAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            print(snapshot.error);
            return const Center(child: Text('Error ...'));
          }

          return ListView.separated(
              itemBuilder: (context, index) {
                var produto = snapshot.data?[index];
                return Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(stops: [
                        0.2,
                        1.0
                      ], colors: [
                        Colors.blue,
                        Colors.purple,
                      ])),
                  height: 100.0,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: ClipOval(
                            child: Icon(
                              Icons.bus_alert_outlined
                            ),
                          ),
                        ),
                        Expanded(flex: 2, child: Text(utf8.decode('${produto?.empresa}'.runes.toList()))),
                        Expanded(flex: 1, child: Text('${produto?.preco}')),
                        Expanded(flex: 1, child: Text('${produto?.horarioEmbarque}')),
                        Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children: [

                                InkWell(
                                  child: buildCallContainer('Comprar'),
                                ),
                              ],
                            )),
                      ]),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(thickness: 0.5, height: 0.5);
              },
              itemCount: snapshot.data?.length ?? 0);
        },
      ),
    );
  }

  Container buildCallContainer(String tipo) {
    return Container(
      width: 70.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(10.0)),
      child: Center(child: Text('${tipo}')),
    );
  }
}