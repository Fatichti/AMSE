import 'package:flutter/material.dart';
import 'liste_exos.dart';
import 'library.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Application : Jeu de Taquin par Fabien';

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
