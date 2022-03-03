import 'package:flutter/material.dart';

class AfficherImage extends StatefulWidget {
  const AfficherImage({Key? key}) : super(key: key);

  @override
  State<AfficherImage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AfficherImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Affichage Image")),
      body: const Image(
        image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
  }
}
