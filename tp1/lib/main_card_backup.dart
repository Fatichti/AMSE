import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Les différents médias")
        ),
        body: Container(
            margin: const EdgeInsets.all(10) ,
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[




                      const ListTile(
                        leading: Icon(Icons.video_camera_back),
                        title: Text('RUBRIQUES : FILMS'),
                        subtitle: Text('Consulter des informations concernant quelques films'),
                      ),
                    
                      Container(
                        height: 120.0,
                        width: 300.0,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/img/test_img.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        ),
                        ),


                      ButtonBarTheme ( // make buttons use the appropriate styles for cards
                        data: const ButtonBarThemeData(),
                        child: ButtonBar(
                          children: <Widget>[
                            TextButton(
                              child: const Text('Découvrir'),
                              onPressed: () {
                                print("bookmark");
                                } ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  elevation: 10,
                ),




                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[




                      const ListTile(
                        leading: Icon(Icons.movie_creation),
                        title: Text('RUBRIQUES : SERIES'),
                        subtitle: Text('Consulter des informations concernant des séries'),
                      ),
                    
                      Container(
                        height: 120.0,
                        width: 300.0,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/img/test_img.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        ),
                        ),


                      ButtonBarTheme ( // make buttons use the appropriate styles for cards
                        data: const ButtonBarThemeData(),
                        child: ButtonBar(
                          children: <Widget>[
                            TextButton(
                              child: const Text('Découvrir'),
                              onPressed: () {
                                print("bookmark");
                                } ,
                            ),
                          ],
                        ),
                      ),

                      

                    ],
                  ),
                  elevation: 10,
                ),











              ],
            )
        )
    );
  }
}