import 'package:flutter/material.dart';
//import 'package:flutter_app_1/src/pages/home_page.dart';
import 'package:flutter_app_1/src/pages/home_page_statefull.dart';


class MyApp extends StatelessWidget {


@override
Widget build(BuildContext context){
return MaterialApp(
  home: Center(
    child: HomePageStateful(),
  ),
);

}

}
