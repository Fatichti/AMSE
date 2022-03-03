import 'package:flutter/material.dart';
import 'dart:math' as math;

class Exercice7 extends StatefulWidget {
  const Exercice7({
    Key? key,
  }) : super(key: key);
  @override
  State<Exercice7> createState() => Exercice7State();
}

class Exercice7State extends State<Exercice7> {
  bool enJeu = false;
  bool partieGagnee = false;
  int nbCoup = 0;
  int division = 2;
  int nbMix = 1;
  int indexTile = 0;
  int lastindexTile = 0;
  String image = 'https://picsum.photos/512';
  List<Tile> ListTiles = [];

  @override
  Widget build(BuildContext context) {
    majListTiles();
    if (ispartieGagnee() && enJeu) {
      partieGagnee = true;
    } else if (!enJeu) {
      partieGagnee = false;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 7 - Jeu de taquin"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          taquinBarreHaut(),
          Expanded(child: Center(child: taquinPlayground())),
        ],
      ),
      floatingActionButton: taquinBoutonMilieu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: taquinBarreBas(),
    );
  }

  //On défini le code pour le fonctionnement du jeu (mettre à jour les tuiles...)
  void setGame() {
    enJeu = enJeu ? false : true;
    if (enJeu) {
      indexTile = math.Random().nextInt(division * division);
      mixListTiles();
    } else {
      nbCoup = 0;
    }
  }

  void majListTiles() {
    int nbListTiles = (division * division).toInt();
    if (ListTiles.isEmpty || ListTiles.length != nbListTiles) {
      ListTiles = [];
      for (int i = 0; i < division; i++) {
        for (int j = 0; j < division; j++) {
          ListTiles.add(Tile(
            image,
            Alignment(-1 + 2 * j / (division - 1), -1 + 2 * i / (division - 1)),
            1 / division,
            0,
          ));
        }
      }
    }
    for (int i = 0; i < nbListTiles; i++) {
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

  void changerListTiles(int index) {
    if (ListTiles[index].status == 1) {
      Tile tileTemp = ListTiles[indexTile];
      ListTiles[indexTile] = ListTiles[index];
      ListTiles[index] = tileTemp;
    }
  }

  void tileTap(int index) {
    if (ListTiles[index].status == 1) {
      changerListTiles(index);
      lastindexTile = indexTile;
      indexTile = index;
      nbCoup++;
    }
  }

  bool ispartieGagnee() {
    int index = 0;
    for (int i = 0; i < division; i++) {
      for (int j = 0; j < division; j++) {
        if (ListTiles[index].alignment != Alignment(-1 + 2 * j / (division - 1), -1 + 2 * i / (division - 1))) {
          return false;
        }
        index++;
      }
    }
    return true;
  }

  void mixListTiles() {
    ListTiles = [];
    majListTiles();
    int toMix = nbMix * 10 * ListTiles.length;
    int lastTile = -1;
    while (toMix != 0) {
      majListTiles();
      int nextTile = math.Random().nextInt(division * division);
      if (canMove(nextTile) && nextTile != lastTile) {
        changerListTiles(nextTile);
        indexTile = nextTile;
        toMix--;
      }
    }
    lastindexTile = indexTile;
    if (ispartieGagnee()) {
      mixListTiles();
    }
  }

  void annulerCoup() {
    if ((lastindexTile != indexTile) && (enJeu) && (!partieGagnee)) {
      changerListTiles(lastindexTile);
      indexTile = lastindexTile;
      nbCoup--;
    }
  }

  //On défini le code pour la bar du haut de l'application
  Widget taquinBarreHaut() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(color: Color.fromARGB(255, 70, 70, 70)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Vous avez fait : ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          Container(
            width: 60,
            height: 30,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 40, 40, 40),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
                child: Text(
              nbCoup.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )),
          ),
          const Text("coups", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }

  //On défini le code pour le widget central (clic des tuiles, notifie si partie gagnée..)
  Widget taquinPlayground() {
    Image myImage;
    myImage = Image.network(image);
    if (enJeu && !partieGagnee) {
      return Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: division.toInt()),
              itemCount: ListTiles.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    child: TileWidget(tile: ListTiles[index]),
                  ),
                  onTap: () {
                    setState(() {
                      tileTap(index);
                    });
                  },
                );
              }),
        ),
      );
    } else if (nbCoup > 0) {
      return new AlertDialog(
        title: const Text('Partie Gagnée'),
        content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Féliciations ! Vous avez gagné la partie !! \nEn $nbCoup mouvements."),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            myImage,
            Expanded(
                child: Center(
                    child: Text(
              partieGagnee ? "Gagné !" : "",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ))),
          ],
        ),
      );
    }
  }

  //On défini le code pour les boutons Jouer, Rejouer et Annuler
  Widget taquinBoutonMilieu() {
    return FloatingActionButton.extended(
      backgroundColor: Colors.red.shade900,
      icon: enJeu
          ? (partieGagnee
              ? const Icon(
                  Icons.replay,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.stop_rounded,
                  color: Colors.white,
                ))
          : const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
            ),
      label: enJeu ? (partieGagnee ? const Text("REJOUER", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)) : const Text("STOP", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))) : const Text("JOUER", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      onPressed: () {
        setState(() {
          setGame();
        });
      },
    );
  }

  //On défini le code pour la bar du bas (ajouter/diminuer le nombre de division...)
  Widget taquinBarreBas() {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 160,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: [
          divisionWidgetMoins(),
          Column(
            children: <Widget>[
              Text(
                "\n", //pour laisser un espace entre le bouton jouer et le bouton "annuler coup"
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: ((lastindexTile != indexTile) && (enJeu) && (!partieGagnee)) ? Colors.red.shade900 : Colors.grey.shade800),
                child: Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                    Text("Annuler coup", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                  ]),
                ),
                onPressed: () {
                  setState(() {
                    annulerCoup();
                  });
                },
              ),
              Text(
                "\nNombre de divisions :", //pour laisser un espace entre le bouton "annuler coup" et le nombre de divisions
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 40, 40, 40),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  division.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                )),
              ),
            ],
          ),
          divisionWidgetPlus(),
        ]),
      ),
    );
  }

  Widget divisionWidgetMoins() {
    return Column(
      children: [
        const Text("\nBaisser", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: enJeu ? Colors.grey.shade800 : Colors.red.shade900, minimumSize: Size(80, 80)),
          child: const Icon(Icons.remove, color: Colors.white),
          onPressed: () {
            !enJeu
                ? setState(() {
                    division -= 1;
                    if (division == 1) {
                      division = 2;
                    }
                  })
                : {};
          },
        ),
      ],
    );
  }

  Widget divisionWidgetPlus() {
    return Column(
      children: [
        const Text("\nAugmenter", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: enJeu ? Colors.grey.shade800 : Colors.red.shade900, minimumSize: Size(80, 80)),
          child: const Icon(Icons.add, color: Colors.white),
          onPressed: () {
            !enJeu
                ? setState(() {
                    division += 1;
                    if (division == 11) {
                      division = 10;
                    }
                  })
                : {};
          },
        ),
      ],
    );
  }
}

//On défini les tuiles
class Tile {
  String image;
  double factor;
  Alignment alignment;
  int status;
  Tile(this.image, this.alignment, this.factor, this.status);
}

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key, required this.tile}) : super(key: key);
  final Tile tile;

  @override
  Widget build(BuildContext context) {
    switch (tile.status) {
      case 1:
        return autourActiveTile(tile);
      case 2:
        return activeTile(tile);
      default:
        return passiveTile(tile);
    }
  }

  Widget tileImage(Tile tile) {
    Image tileImage;
    tileImage = Image.network(tile.image);
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: ClipRect(
        child: Align(
          alignment: tile.alignment,
          widthFactor: tile.factor,
          heightFactor: tile.factor,
          child: tileImage,
        ),
      ),
    );
  }

  Widget activeTile(Tile tile) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      child: tileImage(tile),
    );
  }

  Widget passiveTile(Tile tile) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: const BoxDecoration(color: Color.fromARGB(0, 40, 40, 40)),
      child: tileImage(tile),
    );
  }

  Widget autourActiveTile(Tile tile) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(color: Color.fromARGB(255, 200, 50, 50)),
      child: tileImage(tile),
    );
  }
}
