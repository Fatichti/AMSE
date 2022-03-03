import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformImage extends StatefulWidget {
  const TransformImage({Key? key}) : super(key: key);

  @override
  State<TransformImage> createState() => _TransformImageState();
}

class _TransformImageState extends State<TransformImage> {
  double _currentSliderValueZ = 0;
  double _currentSliderValueX = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Transformer une image"),
        ),
        body: Center(
          child: Container(
              color: Colors.black,
              child: Column(children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.skewY(0)..rotateZ(-_currentSliderValueZ * math.pi / 24.0),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.skewY(0)..rotateX(-_currentSliderValueX * math.pi / 24.0),
                        child: Image.network('https://picsum.photos/512/1024'),
                      ),
                    ),
                  ),
                ),
                Slider(
                    value: _currentSliderValueZ,
                    max: 100,
                    divisions: 100,
                    label: _currentSliderValueZ.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValueZ = value;
                      });
                    }),
                Slider(
                    value: _currentSliderValueX,
                    max: 100,
                    divisions: 100,
                    label: _currentSliderValueX.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValueX = value;
                      });
                    })
              ])),
        ));
  }
}
