import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'library.dart';

// On génére la liste du contenu média automatiquement depuis le clic sur les cartes avec les listes fournies dans la librairie
class ListeExos extends StatelessWidget {
  const ListeExos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des exercices"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: InkWell(
                  child: ListTile(
                    title: Text(listeExos[index].title, style: const TextStyle(fontSize: 18)),
                    subtitle: Text(listeExos[index].description, style: const TextStyle(fontSize: 10)),
                  ),
                  onTap: () {
                    ExosModel exos = listeExos[index];
                    Navigator.pushNamed(context, exos.lienExo);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => buildDescription(context, exos)));
                  }));
        },
        itemCount: listeExos.length,
      ),
    );
  }
}
