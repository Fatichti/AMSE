import 'package:flutter/material.dart';
import 'dart:math';

/*on reprend ici le code donné*/
class Exercice6_a extends StatefulWidget {
  const Exercice6_a({Key? key}) : super(key: key);
  @override
  State<Exercice6_a> createState() => Exercice6_aState();
}

class Exercice6_aState extends State<Exercice6_a> {
  List<Widget> ListTiles = List<Widget>.generate(
      2,
      (index) => TileWidget(
            tile: Tile.randomColor(),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 6 a)"),
        centerTitle: true,
      ),
      body: Row(children: ListTiles),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.sentiment_very_satisfied), onPressed: swapListTiles),
    );
  }

  swapListTiles() {
    setState(() {
      ListTiles.insert(1, ListTiles.removeAt(0));
    });
  }
}

class Tile {
  Color? color;
  Tile(this.color);
  Tile.randomColor() {
    color = Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
  }
}

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key, required this.tile}) : super(key: key);
  final Tile tile;

  @override
  Widget build(BuildContext context) {
    return coloredBox();
  }

  Widget coloredBox() {
    return Container(
        color: tile.color,
        child: const Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}
