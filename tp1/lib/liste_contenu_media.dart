import 'package:flutter/material.dart';


// On créer le model du média type
class MediaModel{

  String imageURL;
  String title;
  String description;

  MediaModel({required this.imageURL, required this.title, required this.description});

}

// On défini quelques exemples: séries, films..

final series = [
  MediaModel(
    imageURL:"séries imageURL1",
    title: "séries title1",
    description: "séries description1",
  ),
  MediaModel(
    imageURL:"séries imageURL2",
    title: "séries title2",
    description: "séries description2",
  ),
];

final film = [
  MediaModel(
    imageURL:"film imageURL1",
    title: "film title1",
    description: "film description1",
  ),
  MediaModel(
    imageURL:"film imageURL2",
    title: "film title2",
    description: "film description2",
  ),
];


// On génére la liste avec les élèments
class ListeContenuMedia extends StatelessWidget {
  
  void affichage_test(){
    print("liste contenue média appelée");
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Liste des séries"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(series[index].title, style: TextStyle(fontSize: 30)),
                subtitle: Text('Sous-titre ' + series[index].title),
                leading: CircleAvatar(
                  child: Text(
                      series[index].title[0], // prendre le premier caractère du texte
                      style: TextStyle(fontSize: 20)),
                )),
          );
        },
        itemCount: series.length,
      ),
    );
  }
}