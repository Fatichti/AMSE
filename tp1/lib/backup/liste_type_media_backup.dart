import 'package:flutter/material.dart';
import 'package:tp1/library.dart';

import '../liste_contenu_media.dart';


class ListeTypeMedia extends StatelessWidget {
  ListeTypeMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Les différents médias")
        ),
        body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[

                // On créer une première carte pour la rubrique des films
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      // Cette carte contient une liste d'informations textuels
                      const ListTile(
                        leading: Icon(Icons.video_camera_back),
                        title: Text('RUBRIQUES : FILMS'),
                        subtitle: Text('Consulter des informations concernant quelques films'),
                      ),
                    
                      // Cette carte contient un conteneur avec une image
                      Container(
                        height: 120.0,
                        width: 300.0,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/cards/cardFilms.gif'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        ),
                        ),

                      // Cette carte contient un bouton qui redirige vers la page de liste du contenu du media pour les films
                      ButtonBarTheme (
                        data: const ButtonBarThemeData(),
                        child: ButtonBar(
                          children: <Widget>[
                            TextButton(
                              child: const Text('Découvrir'),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ListeContenuMedia(listeMedia: films)));
                                } ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  elevation: 10,
                ),

                // On créer une seconde carte pour la rubrique des séries
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      // Cette carte contient une liste d'informations textuels
                      const ListTile(
                        leading: Icon(Icons.movie_creation),
                        title: Text('RUBRIQUES : SERIES'),
                        subtitle: Text('Consulter des informations concernant des séries'),
                      ),
                    
                      // Cette carte contient un conteneur avec une image
                      Container(
                        height: 120.0,
                        width: 300.0,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/cards/cardSeries.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        ),
                        ),

                      // Cette carte contient un bouton qui redirige vers la page de liste du contenu du media pour les séries
                      ButtonBarTheme ( 
                        data: const ButtonBarThemeData(),
                        child: ButtonBar(
                          children: <Widget>[
                            TextButton(
                              child: const Text('Découvrir'),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ListeContenuMedia(listeMedia: series)));
                                } ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  elevation: 10,
                ),

                // On créer une troisième carte pour la rubrique des bds
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      // Cette carte contient une liste d'informations textuels
                      const ListTile(
                        leading: Icon(Icons.menu_book),
                        title: Text('RUBRIQUES : BANDES DESSINEES'),
                        subtitle: Text('Consulter des informations concernant des bandes dessinées'),
                      ),
                    
                      // Cette carte contient un conteneur avec une image
                      Container(
                        height: 120.0,
                        width: 300.0,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/cards/cardBds.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        ),
                        ),

                      // Cette carte contient un bouton qui redirige vers la page de liste du contenu du media pour les séries
                      ButtonBarTheme ( 
                        data: const ButtonBarThemeData(),
                        child: ButtonBar(
                          children: <Widget>[
                            TextButton(
                              child: const Text('Découvrir'),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ListeContenuMedia(listeMedia: bds)));
                                } ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ],
            )
        )
    );
  }
}