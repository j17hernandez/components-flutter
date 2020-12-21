import 'package:flutter/material.dart';
import 'dart:math';


class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width  = 50.0;
  double _height = 50.0;
  Color  _color  = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarForma,
      ),
    );
  }

void _cambiarForma() {

  final ramdon = Random();

  setState(() {
    _width  = ramdon.nextInt(300).toDouble();
    _height = ramdon.nextInt(300).toDouble();
    _color  =  Color.fromRGBO(
      ramdon.nextInt(255),
      ramdon.nextInt(255),
      ramdon.nextInt(255),
      1);
    _borderRadius = BorderRadius.circular(ramdon.nextInt(100).toDouble());
  });
}
}