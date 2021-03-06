// On créer le model du média type
class MediaModel {
  String imageURL;
  String title;
  String description;

  MediaModel({required this.title, required this.imageURL, required this.description});
}

// On défini quelques exemples: séries, films, bds..
final series = [
  MediaModel(
    imageURL: "assets/series/casaDePapel.jpg",
    title: "La casa de papel",
    description: "Série télévisée espagnole créée par Álex Pina et diffusée entre le 2 mai 2017 et le 23 novembre 2017 sur la chaîne Antena 3 en Espagne.\nDans le reste du monde, la diffusion de la première saison en deux parties débute le 20 décembre 2017 sur Netflix et connaît un très grand succès mondial.\nLa deuxième saison, exclusive à Netflix, est composée des troisième, quatrième et cinquième parties",
  ),
  MediaModel(
    imageURL: "assets/series/Dead2Me.jpg",
    title: "Dead to Me",
    description: "Série télévisée américaine à l’humour noir créée par Liz Feldman (en), et mise en ligne le 3 mai 2019 sur Netflix.\nLes personnages principaux sont joués par Christina Applegate et Linda Cardellini. La série est présentée comme une version humoristique de Big Little Lies",
  ),
  MediaModel(
    imageURL: "assets/series/BobaFett.jpg",
    title: "Le Livre de Boba Fett",
    description: "Série télévisée américaine en prise de vues réelles dans l’univers de la saga Star Wars.\nIl s'agit d'un spin-off de la série télévisée The Mandalorian, cette fois centrée sur le chasseur de primes Boba Fett.\nTemuera Morrison tient le rôle-titre alors que Ming-Na Wen reprend son rôle de Fennec Shand, qu'ils avaient tous deux incarné dans The Mandalorian",
  ),
  MediaModel(
    imageURL: "assets/series/SWAT.jpg",
    title: "S.W.A.T.",
    description: "Série télévisée américaine créée par Shawn Ryan et Aaron Rahsaan Thomas, et diffusée depuis le 2 novembre 2017 sur le réseau CBS et en simultané sur le réseau Global au Canada.\nIl s'agit d'une reprise de la série Section 4, diffusée dès 1975. La série existe dans un univers partagé avec le drame policier The Shield, également créé par Shawn Ryan.",
  ),
];

final films = [
  MediaModel(
    imageURL: "assets/films/starwars_reveil_force",
    title: "Star Wars - Le réveil de la force",
    description: "Film de science-fiction américain de type space opera coécrit et réalisé par J. J. Abrams\nSorti en 2015, soit dix ans après la sortie de La Revanche des Sith.",
  ),
  MediaModel(
    imageURL: "assets/films/bienvenu_chtis.jpg",
    title: "Bienvenue chez les ch'tis",
    description: "Film français réalisé par Dany Boon, sorti le 20 février 2008 dans le Nord-Pas-de-Calais et dans quelques salles de la Somme.\nLe 27 février dans le reste de la France, en Belgique et en Suisse, un jour après au Luxembourg, et le 25 juillet au Canada.",
  ),
  MediaModel(
    imageURL: "assets/films/sully.jpg",
    title: "Sully",
    description: "Film américain coproduit et réalisé par Clint Eastwood et sorti en 2016.\nIl s'agit d'un film biographique inspiré de l'histoire vraie de l'amerrissage forcé du vol US Airways 1549 sur le fleuve Hudson, réussi par le pilote Chesley « Sully » Sullenberger en janvier 2009.\nIl est adapté du livre Highest Duty (2009) écrit par le pilote avec l'auteur Jeffrey Zaslow.",
  ),
  MediaModel(
    imageURL: "assets/films/retour_futur",
    title: "Retour vers le futur",
    description: "Film de science-fiction américain réalisé par Robert Zemeckis, sorti en 1985.\nL'intrigue relate le voyage dans le passé d'un adolescent, Marty McFly, à bord d'une machine à voyager dans le temps fabriquée par le docteur Emmett Brown, à partir d'une voiture de modèle DeLorean DMC-12",
  ),
];

final bds = [
  MediaModel(
    imageURL: "assets/bds/gaston.jpg",
    title: "Gaston Lagaffe",
    description: "Gaston Lagaffe est un personnage de fiction créé en 1957 par le dessinateur belge André Franquin.\nIl est le protagoniste de la série Gaston, apparue dans le magazine de bande dessinée Le Journal de Spirou la même année et publiée en albums à partir de 1960.\nGaston est l'anti-héros par excellence, et le roi incontesté de la gaffe.",
  ),
  MediaModel(
    imageURL: "assets/bds/tintin.jpg",
    title: "Les Aventures de Tintin",
    description: "Série de bandes dessinées créée par le dessinateur et scénariste belge Hergé.\nAvec 250 millions d'exemplaires vendus, Les Aventures de Tintin font partie des bandes dessinées européennes les plus célèbres et plus populaires du xxe siècle. Elles ont été traduites dans une centaine de langues et dialectes et adaptées à de nombreuses reprises au cinéma, à la télévision et au théâtre.",
  ),
  MediaModel(
    imageURL: "assets/bds/luckyLuke.jpg",
    title: "Lucky Luke",
    description: "Série de bande dessinée belge de western humoristique créée par le dessinateur belge Morris dans l'Almanach 1947, un hors-série du journal Spirou publié en 1946.\nMorris est aidé, à partir de la neuvième histoire, par plusieurs scénaristes, dont le plus fameux est René Goscinny.\nDepuis la mort de Morris en 2001, le dessin est assuré par Achdé",
  ),
  MediaModel(
    imageURL: "assets/bds/astérix.jpg",
    title: "Astérix",
    description: "Série de bande dessinée française créée le 29 octobre 1959 par le scénariste français René Goscinny et le dessinateur français Albert Uderzo\nAprès la mort de René Goscinny en 1977, Albert Uderzo poursuit seul la série, puis passe la main en 2013 à Jean-Yves Ferri et Didier Conrad.\nLa série compte 39 tomes en octobre 2021.",
  ),
];
