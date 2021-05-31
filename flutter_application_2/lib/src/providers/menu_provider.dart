import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/services.dart' show rootBundle;

class MenuProvider {
  List<dynamic> opciones = [];

  MenuProvider() {
    loadData();
  }
  void loadData () async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
     
  }


}