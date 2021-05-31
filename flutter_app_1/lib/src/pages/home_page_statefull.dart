import 'package:flutter/material.dart';

class HomePageStateful extends StatefulWidget {

@override
_HomagePageStatefulState createState() => _HomagePageStatefulState();
}

class _HomagePageStatefulState extends State<HomePageStateful>{
final TextStyle mainTextStyle = TextStyle(fontSize: 25.00);
int _contador=0;

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

      floatingActionButton: _buildButtoms(),
    );
  }

 Widget _buildButtoms(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
        children: [
            SizedBox (width: 30.0),
           FloatingActionButton(
        onPressed: _restart,
        child: Icon(Icons.exposure_zero),
      ),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        onPressed: _menos,
        child: Icon(Icons.remove),
      ),
      SizedBox (width: 30.0),
      FloatingActionButton(
        onPressed: _sumar,
        child: Icon(Icons.add),
      ),
        ],
      );

 }


 void _restart(){
  _contador =0;
  setState(() {});
 }

void _menos(){
  if (_contador >0){
    _contador--;
    }
  setState(() {});
}

void _sumar(){
  if (_contador <25){
    _contador++;
  }
  setState(() {});
}

}