import 'package:flutter/material.dart';
import 'package:tarea5/screens/portada_screen.dart';
import 'package:tarea5/screens/personajes_screen.dart';
import 'package:tarea5/screens/momentos_screen.dart';
import 'package:tarea5/screens/acerca_de_screen.dart';
import 'package:tarea5/screens/en_mi_vida_screen.dart';
import 'package:tarea5/screens/contratame_screen.dart';

void main() {
  runApp(KurokoNoBasketApp());
}

class KurokoNoBasketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuroko no Basket Experience',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortadaScreen(),
    );
  }
}
