import 'package:flutter/material.dart';

class Exercice5_b extends StatefulWidget {
  const Exercice5_b({Key? key}) : super(key: key);
  @override
  State<Exercice5_b> createState() => Exercice5_bState();
}

class TileImage extends StatelessWidget {
  final String imageURL;
  final Alignment alignment;
  final double rapport;
  TileImage({Key? key, required this.alignment, required this.imageURL, required this.rapport}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 0.3,
            heightFactor: 0.3,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}

class Exercice5_bState extends State<Exercice5_b> {
  List<TileImage> ListTiles = [
    TileImage(
      alignment: Alignment.topLeft,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.topCenter,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.topRight,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.centerLeft,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.center,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.centerRight,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.bottomLeft,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.bottomCenter,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
    TileImage(
      alignment: Alignment.bottomRight,
      rapport: 1 / 3,
      imageURL: 'https://picsum.photos/512/1024',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercice 5 b)"),
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 4, //on reprend l'extrait du code de la partie a)
              crossAxisSpacing: 4,
              children: <Widget>[
                ListTiles[0], //on récupère simplement les données qu'on a défini dans la liste de la classe Exercice5_bState
                ListTiles[1],
                ListTiles[2],
                ListTiles[3],
                ListTiles[4],
                ListTiles[5],
                ListTiles[6],
                ListTiles[7],
                ListTiles[8]
              ]),
        )));
  }
}
