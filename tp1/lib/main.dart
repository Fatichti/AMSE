import 'package:flutter/material.dart';
import 'navbar_accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const String _title = 'Application : Gestion Medias par Fabien';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: NavigationAccueil()   //On appelle la classe principale définie dans navbar_accueil.dart
    );
  }
}

