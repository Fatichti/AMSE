import 'package:flutter/material.dart';
import 'package:tp1/liste_type_media.dart';

class NavigationAccueil extends StatefulWidget {
  const NavigationAccueil({Key? key}) : super(key: key);

  @override
  State<NavigationAccueil> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavigationAccueil> {
  int _selectedIndex = 0;
  static const TextStyle optionStyleHome = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle optionStyleAbout = TextStyle(fontSize: 20);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      "Bienvenue sur la page d'accueil.\n\nNaviguer, découvrer tout un ensemble d'informations sur différents médias !",
      style: optionStyleHome,
    ),
    ListeTypeMedia(),
    Text(
      "Cette application a été réalisée par Fabien Plouvier.\n\nElle contient une variété d'informations sur différents types de média comme :\Séries, Films, BD\n\n(version du 06/02/2022)",
      style: optionStyleAbout,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion des Médias'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Media',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
