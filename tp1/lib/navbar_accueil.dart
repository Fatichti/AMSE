import 'package:flutter/material.dart';
import 'package:tp1/liste_type_media.dart';

import 'liste_contenu_media.dart';


class NavigationAccueil extends StatefulWidget {
  const NavigationAccueil({Key? key}) : super(key: key);

  @override
  State<NavigationAccueil> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavigationAccueil> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      "Bienvenue sur la page d'accueil.\nEn cours de développement",
      style: optionStyle,
    ),
    ListeTypeMedia(),
    
    Text(
      "Bienvenue sur la page d'informations générales de l'application.\nEn cours de développement",
      style: optionStyle,
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
        title: const Text('BottomNavigationBar Sample'),
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
