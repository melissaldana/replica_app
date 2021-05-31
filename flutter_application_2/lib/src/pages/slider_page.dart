import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderPosition = 10;
  bool _blockead = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        child: Column(
          children: [
              _createSlider(),
              _createCheckBox(),
              _createSwitch(),
              _createImage(),
          ],
          ),
      ),
    );
  }

  Widget _createSlider(){
    var sliderPosition = 10;
    return Slider(
      activeColor: Colors.indigoAccent,
      divisions: 4,
      min: 0.0,
      max: 100.0,
      value: _sliderPosition,
      onChanged: (value) {
        _sliderPosition = value;
        setState(() {});
      },
    );
  }

  Widget _createCheckBox(){
    /*return Checkbox(

    ); */
    return CheckboxListTile(
      title: Text ("Bloquear Slider"),
      value: _blockead,
      onChanged: (value) {
        setState(() {
          _blockead = value;
        });
      },
    );

  }

  Widget _createSwitch(){
    return SwitchListTile(
      title: Text("Bloquear Slider"),
      value: _blockead
    );
  }

  Widget _createImage() {
    return Image(
      width: _sliderPosition,
      fit: BoxFit.contain,
    );
  }
}