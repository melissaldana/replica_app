
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle, color: Colors.white,),
        actions: <Widget>[
          IconButton (
            icon: Icon(Icons.videocam, color: Colors.white,),
            onPressed: () {},
          ),
          IconButton (
            icon: Icon(Icons.inbox, color: Colors.white), 
            onPressed: () {},
          ),
          IconButton (
            icon: Icon(Icons.chat_bubble_outline, color: Colors.white),
            onPressed: () {},
          ),
          IconButton (
            icon: Icon(Icons.search, color: Colors.white,),
            onPressed: () {},
          )
        ],
      ),
      body: 
        Container(
        child: Column(
          children: [
              _Titulo(),
              _Titulo2(),
              _createImage(),
          ],
          ),
      ),
    );

    
  }

Widget _createImage(){
    return Column(
        children: [
        Image.asset(            
          'images/fortnite.jpg',
          alignment: Alignment.bottomLeft,            
          width: 150,            
          height: 170,
          ),
          
          Text ("Fornite",textAlign: TextAlign.left,  style: TextStyle(fontSize: 10,color: Colors.black87)),
          _Titulo3(),
          
        Image.asset(            
          'images/jelty.jpg',
          alignment: Alignment.bottomLeft,            
          width: 150,            
          height: 140,
          ),

          Image.asset(            
          'images/destri.jpg',
          alignment: Alignment.bottomLeft,            
          width: 150,            
          height: 140,
          ),
        ],

      );  
  }

 Widget _Titulo(){
    return Container(
        child:
        Text ('Siguiendo',textAlign: TextAlign.left, style: TextStyle(fontSize: 38,color: Colors.black87,),
       )
    );

  }

   Widget _Titulo2(){
    return Container(
        child:
        Text ('CATEGORÍAS QUE SIGUES', textAlign: TextAlign.left, style: TextStyle(fontSize: 14,color: Colors.black87, height: 5),
       )
    );

  }
  
 Widget _Titulo3(){
    return Container(
        child:
        Text ('106 K', textAlign: TextAlign.left, style: TextStyle(fontSize: 10,color: Colors.black87,),
       ),
    );

  }
  
 
 
}