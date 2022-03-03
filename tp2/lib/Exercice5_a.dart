import 'package:flutter/material.dart';
import 'dart:math' as math;

class Exercice5_a extends StatefulWidget {
  const Exercice5_a({Key? key}) : super(key: key);
  @override
  State<Exercice5_a> createState() => Exercice5_aState();
}

class Exercice5_aState extends State<Exercice5_a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercice 5 a)"),
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4, //les valeurs ont été trouvées à taton, pour ressembler à l'exemple donné
            crossAxisSpacing: 4,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 1")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 2")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 3")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 4")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 5")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 6")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 7")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 8")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Center(child: Text("Tile 9")),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
              ),
            ],
          ),
        )));
  }
}
