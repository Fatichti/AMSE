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
    imageURL:"assets/films/starwars_reveil_force",
    title: "Star Wars - Le réveil de la force",
    description: "Film de science-fiction américain de type space opera coécrit et réalisé par J. J. Abrams\nSorti en 2015, soit dix ans après la sortie de La Revanche des Sith.",
  ),
  MediaModel(
    imageURL:"assets/films/bienvenu_chtis.jpg",
    title: "Bienvenue chez les ch'tis",
    description: "Film français réalisé par Dany Boon, sorti le 20 février 2008 dans le Nord-Pas-de-Calais et dans quelques salles de la Somme.\nLe 27 février dans le reste de la France, en Belgique et en Suisse, un jour après au Luxembourg, et le 25 juillet au Canada.",
  ),
  MediaModel(
    imageURL:"assets/films/sully.jpg",
    title: "Sully",
    description: "Film américain coproduit et réalisé par Clint Eastwood et sorti en 2016.\nIl s'agit d'un film biographique inspiré de l'histoire vraie de l'amerrissage forcé du vol US Airways 1549 sur le fleuve Hudson, réussi par le pilote Chesley « Sully » Sullenberger en janvier 2009.\n Il est adapté du livre Highest Duty (2009) écrit par le pilote avec l'auteur Jeffrey Zaslow.",
  ),
  MediaModel(
    imageURL:"assets/films/retour_futur",
    title: "Retour vers le futur",
    description: "Film de science-fiction américain réalisé par Robert Zemeckis, sorti en 1985.\nL'intrigue relate le voyage dans le passé d'un adolescent, Marty McFly, à bord d'une machine à voyager dans le temps fabriquée par le docteur Emmett Brown, à partir d'une voiture de modèle DeLorean DMC-12",
  ),
];


// On génére la liste avec les élèments
class ListeContenuMedia extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Liste des films"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(film[index].title, style: TextStyle(fontSize: 18)),
                subtitle: Text(film[index].description, style: TextStyle(fontSize: 10)),
                leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 60,         //44
                      minHeight: 120,        //44
                      maxWidth: 80,          //64
                      maxHeight: 140,         //64
                    ),
                    child: Image.asset(film[index].imageURL, fit: BoxFit.cover),
                    ),
              ),
          );
        },
        itemCount: film.length,
      ),
    );
  }
}