import 'package:flutter/material.dart';

class Exercice6_b extends StatefulWidget {
  const Exercice6_b({Key? key}) : super(key: key);
  @override
  State<Exercice6_b> createState() => Exercice6_bState();
}

class Exercice6_bState extends State<Exercice6_b> {
  int division = 4;
  int indexTile = 4;
  List<Tile> ListTiles = [];
  @override
  Widget build(BuildContext context) {
    majListeListTiles();
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercice 6 b)"),
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: division),
                    itemCount: ListTiles.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          child: TileWidget(tile: ListTiles[index]),
                        ),
                        onTap: () {
                          setState(() {
                            changeTile(index);
                          });
                        },
                      );
                    }))));
  }

  void majListeListTiles() {
    int nbTiles = (division * division).toInt();
    if (ListTiles.isEmpty) {
      for (int i = 0; i < nbTiles; i++) {
        ListTiles.add(Tile(i.toString(), 0));
      }
    }
    for (int i = 0; i < nbTiles; i++) {
      if (i == indexTile) {
        ListTiles[i].status = 2;
      } else if (canMove(i)) {
        ListTiles[i].status = 1;
      } else {
        ListTiles[i].status = 0;
      }
    }
  }

  bool canMove(int i) {
    if (i == indexTile - division && indexTile >= division) {
      return true;
    } else if (i == indexTile + division && indexTile <= (division - 1) * division - 1) {
      return true;
    } else if (i == indexTile - 1 && i % division != division - 1) {
      return true;
    } else if (i == indexTile + 1 && i % division != 0) {
      return true;
    }
    return false;
  }

  void changeTile(int i) {
    if (ListTiles[i].status == 1) {
      Tile tmp = ListTiles[indexTile];
      ListTiles[indexTile] = ListTiles[i];
      ListTiles[i] = tmp;
      indexTile = i;
    }
  }
}

class Tile {
  String title;
  int status;
  Tile(this.title, this.status);
}

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key, required this.tile}) : super(key: key);
  final Tile tile;
  @override
  Widget build(BuildContext context) {
    if (tile.status == 2) {
      return tileActive(tile);
    } else {
      return tileNonActive(tile);
    }
  }

  Widget tileActive(Tile tile) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(1, 255, 255, 255), //la tuile active est fond blanc avec une bordure rouge, les autres en fond gris
          border: Border.all(
            color: Colors.red,
            width: 8,
          ),
        ),
        child: Center(child: Text(tile.title)));
  }

  Widget tileNonActive(Tile tile) {
    return Container(padding: const EdgeInsets.all(5), child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 100, 100, 100)), child: Center(child: Text(tile.title))));
  }
}
