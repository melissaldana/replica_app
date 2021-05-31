import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes asdd"),
      ),
      body: _list(),
    );
  }
  
  Widget _list(){

    return FutureBuilder(
      future: MenuProvider().loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot),
        );
      },
    );


    /*List<Widget> listado = [];
    final data = MenuProvider().loadData().then((value) {

      for( Map opcion in value){
        print(opcion);
      }

    });
    print(data);

    
    return ListView(
      children: [

      ],
    );*/
  }
  
  List<Widget> _listItems(List<dynamic> dta, BuildContext context){

    final List<Widget> widgets = [];
    if (data == null) return [];
    data.forEach((opcion){
      final widgetTemp = ListTile (title: Text(opcion["texto"]),
      
      
      )

    });
  }

}
