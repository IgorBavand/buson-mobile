import 'package:consumer/view/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Aplication());
}

class Aplication extends StatelessWidget {
  const Aplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'API CONSUMER',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const MainScreen()
    );
  }
}