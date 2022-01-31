import 'package:flutter/material.dart';

import 'liste_contenu_media.dart';
import 'navbar_accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: NavigationAccueil()
      //home: MaListView(),
    );
  }
}

