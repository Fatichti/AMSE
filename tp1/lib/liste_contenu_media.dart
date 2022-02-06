import 'dart:html';

import 'package:flutter/material.dart';

import 'library.dart';

// On génére la liste du contenu média automatiquement depuis le clic sur les cartes avec les listes fournies dans la librairie
class ListeContenuMedia extends StatelessWidget {
  const ListeContenuMedia({Key? key, required this.listeMedia}) : super(key: key);

  final List listeMedia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Voici la liste"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: InkWell(
                  child: ListTile(
                    title: Text(listeMedia[index].title, style: const TextStyle(fontSize: 18)),
                    subtitle: Text(listeMedia[index].description.substring(0, 70) + "...", style: const TextStyle(fontSize: 10)),
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 60, //44
                        minHeight: 120, //44
                        maxWidth: 80, //64
                        maxHeight: 140, //64
                      ),
                      child: Image.asset(listeMedia[index].imageURL, fit: BoxFit.cover),
                    ),
                  ),
                  onTap: () {
                    MediaModel media = listeMedia[index];
                    Navigator.push(context, MaterialPageRoute(builder: (context) => buildDescription(context, media)));
                  }));
        },
        itemCount: listeMedia.length,
      ),
    );
  }

//On affiche la description entière dans un autre widget
  Widget buildDescription(BuildContext context, MediaModel media) {
    return Scaffold(
      appBar: AppBar(
        title: Text(media.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(media.description),
      ),
    );
  }
}
