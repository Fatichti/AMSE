import 'liste_exos.dart';
import 'afficher_image.dart';
import 'transformer_image.dart';
import 'afficher_tuile.dart';

class ExosModel {
  String title;
  String description;
  String lienExo;
  ExosModel({required this.title, required this.description, required this.lienExo});
}

final listeExos = [
  ExosModel(title: "Exo 1", description: "Afficher une image", lienExo: "AfficherImage"),
  ExosModel(title: "Exo 2", description: "Transformer une image", lienExo: "TransformImage"),
  ExosModel(title: "Exo 3", description: "Menu et navigation entre pages", lienExo: "home"),
  ExosModel(title: "Exo 4", description: "Affichage d'une tuile (un morceau d'image)", lienExo: "AfficherTuile"),
];

final listeRoutes = {
  'home': (context) => ListeExos(),
  'AfficherImage': (context) => AfficherImage(),
  'TransformImage': (context) => TransformImage(),
  'AfficherTuile': (context) => DisplayTileWidget(),
};
