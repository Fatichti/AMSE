# Informations générales
- **UV** : AMSE
- **Auteur** : Fabien Plouvier
- **Date** : 27/01/2022 -> 07/02/2022
- **TP** : 1  

📌Cette branche contient mes travaux réalisés pendant la période du TP1
  
## Quel est le contexte ?
🛠️Les spécifications étaient :  
1. Réaliser une application de gestion de media : Livres, Bds, Films, Séries, Sports...
2. Une NavBar au minimum 3 pages : Home, Media, About
3. Des ListView, Image, (TabBarView)
    
        
## Que contient la branche ?
Elle contient mes travaux réalisés, la partie "beginner" et "tp1".
Le comportement de l'application est défini par différents fichiers (langage DART) qui décompose l'application :

- **library.dart :**  
*Données constantes nécessaires pour avoir du contenu*
- **liste_type_media.dart :**  
*Ensemble de "cartes" représentant les différents types de médias (Séries, Films, BD)*
- **liste_contenu_media.dart :**  
*Affiche une liste de "cartes" contenant des données pour un type de média choisis*
- **navbar_accueil.dart :**  
*Navigation générale de l'application, accès à la page "Home", "Media" et "About"*
- **main.dart :**  
*Initialisation de l'application puis affiche la navigation générale*

⚠️*Notes :*
*Les différentes images utilisées par ces fichiers se situent dans le dossier "assets"*

## Comment utiliser l'application ?
⚠️Pour que tout fonctionne correctement, merci de respecter les étapes **d'installation** et **d'exécution** de l'application.

### Installation
1. Cloner le répertoire: 
```git
git clone https://github.com/Fatichti/AMSE.git
```

2. Se déplacer dans le dossier "tp1"
```bash
cd AMSE/tp1
```

3. Compiler l'application
```bash
flutter create .
```

### Exécution
1. Au sein du dossier "tp1", faites :
```Bash
flutter run
```

