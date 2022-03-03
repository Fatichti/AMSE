import 'Exercice1.dart';
import 'Exercice2.dart';
import 'Exercice3.dart';
import 'Exercice4.dart';
import 'Exercice5_a.dart';
import 'Exercice5_b.dart';
import 'Exercice5_c.dart';
import 'Exercice6_a.dart';
import 'Exercice6_b.dart';
import 'Exercice7.dart';

class ExosModel {
  String title;
  String description;
  String lienExo;
  ExosModel({required this.title, required this.description, required this.lienExo});
}

final listeExos = [
  ExosModel(title: "Exercice 1", description: "Afficher une image", lienExo: "AfficherImage"),
  ExosModel(title: "Exercice 2", description: "Transformer une image", lienExo: "TransformImage"),
  ExosModel(title: "Exercice 3", description: "Menu et navigation entre pages", lienExo: "home"),
  ExosModel(title: "Exercice 4", description: "Affichage d'une tuile (un morceau d'image)", lienExo: "AfficherTuile"),
  ExosModel(title: "Exercice 5_a", description: "Génération plateau de tuiles simple", lienExo: "GénererPlateauTuileSimple"),
  ExosModel(title: "Exercice 5_b", description: "Génération plateau de tuiles avec image", lienExo: "GénererPlateauTuileImage"),
  ExosModel(title: "Exercice 5_c", description: "Génération plateau de tuiles configurable", lienExo: "GénererPlateauTuileCustom"),
  ExosModel(title: "Exercice 6_a", description: "Animation d'une tuile", lienExo: "AnimerTuile"),
  ExosModel(title: "Exercice 6_b", description: "Echanger des tuiles dans un plateau", lienExo: "EchangerTuile"),
  ExosModel(title: "Exercice 7", description: "Le jeu de taquin", lienExo: "JeuTaquin"),
];

final listeRoutes = {
  'home': (context) => ListeExos(),
  'AfficherImage': (context) => AfficherImage(),
  'TransformImage': (context) => TransformImage(),
  'AfficherTuile': (context) => DisplayTileWidget(),
  'GénererPlateauTuileSimple': (context) => Exercice5_a(),
  'GénererPlateauTuileImage': (context) => Exercice5_b(),
  'GénererPlateauTuileCustom': (context) => Exercice5_c(),
  'AnimerTuile': (context) => Exercice6_a(),
  'EchangerTuile': (context) => Exercice6_b(),
  'JeuTaquin': (context) => Exercice7(),
};
