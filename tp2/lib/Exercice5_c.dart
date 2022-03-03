import 'package:flutter/material.dart';

class Exercice5_c extends StatefulWidget {
  const Exercice5_c({
    Key? key,
  }) : super(key: key);
  @override
  State<Exercice5_c> createState() => Exercice5_cState();
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
            widthFactor: rapport,
            heightFactor: rapport,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}

class Exercice5_cState extends State<Exercice5_c> {
  double division = 3;
  List<TileImage> ListTiles = [];

  Widget createTileWidgetFrom(TileImage tile) {
    return InkWell(
      child: tile,
      onTap: () {
        print("Aucune action prévue au clic");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    majListeListTiles();

    return Scaffold(
        appBar: AppBar(
          title: Text("Exercice 5 c)"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: division.toInt()),
                  itemCount: (division * division).toInt(),
                  itemBuilder: (context, index) {
                    return createTileWidgetFrom(ListTiles[index]);
                  })),
          Slider(
              value: division,
              min: 2,
              max: 6,
              divisions: 4,
              label: division.round().toString(),
              onChanged: (double value) {
                setState(() {
                  division = value;
                });
              }),
        ])));
  }

  majListeListTiles() {
    ListTiles = [];
    for (int i = 0; i < division; i++) {
      for (int j = 0; j < division; j++) {
        ListTiles.add(TileImage(alignment: Alignment(-1 + 2 * j / (division - 1), -1 + 2 * i / (division - 1)), imageURL: 'https://picsum.photos/512/1024', rapport: 1 / division));
      }
    }
  }
}
