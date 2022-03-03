import 'package:flutter/material.dart';
import 'Exercice3.dart';
import 'library.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Application : UV AMSE par Fabien';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: ListeExos(), //On appelle la classe principale définie dans navbar_accueil.dart
      initialRoute: 'home',
      routes: listeRoutes,
    );
  }
}
