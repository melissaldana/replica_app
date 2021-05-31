import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final TextStyle mainTextStyle = TextStyle(fontSize: 25.00);
  final int _contador=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soy un app bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de taps",
            style: mainTextStyle
            ),
            Text(
              '$_contador',
             style: mainTextStyle,
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        print("Clickeado");
        //_contador++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}