import 'dart:html';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
   final _data = ["Perro", "Gato", "Leon", "Jirafa"];


   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Componentes Temporal"),
      ),
      body: ListView(
        children: _createIntemsShort(),
      ),
    );

   }

   List<Widget> _createItems(){
     List<Widget> widgets = [];
     for (String animal in _data) {
       final tempWidget = ListTile(
         title: Text(animal),
       );
       widgets.add(tempWidget);
        widgets..add(Divider());
     }
     return widgets;
   }

   List<Widget> _createIntemsShort(){
     var widgets = _data.map((animal){
       return Column(
         children: [
        ListTile(
         title: Text(animal),
         subtitle: Text("Subtitulo aqui"),
         leading: Icon(Icons.add_a_photo),
         trailing: Icon(Icons.keyboard_arrow_right),
         onTap:() {
          Navigator.pushNamed(context, 'alertPage');

         },
       ),
       Divider()
       ],
       )
    
     }).toList();
     return widgets;
   }

}