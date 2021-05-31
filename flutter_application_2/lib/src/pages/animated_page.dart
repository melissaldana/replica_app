
import 'dart:html';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';


class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _width =50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Page"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: _color
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _changeform(){
    final random = Random();
    int colorRed = random.nextInt(255);

    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();
    _color = Colors.blueAccent;
    setState(() {});

  }

  
}