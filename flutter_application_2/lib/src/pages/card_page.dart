import 'dart:html';

import 'package:flutter/material.dart';
class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [


        ],
      ),
      );
  }

  Widget _cardType(){
    return Card(
      elevation: 18.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
           ListTile(
             title: Text('Soy el titulo'),
             leading: Icon(Icons.photo_album, color: Colors.blue),
             subtitle: Text('Soy el subtitulo'),
           )   
           Row(
             children: [
              
             ],
           )

        ],

      ),
    );

  }

  Widget _cardType2() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
    );
  }



}