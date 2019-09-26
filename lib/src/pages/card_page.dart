import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
         ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          SizedBox(height: 30.0,),
        _cardTipo1(),
          SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
         _cardTipo1(),
          SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
         _cardTipo1(),
          SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
        ],
      ),  
    );
  }



   Widget _cardTipo1() {
      return Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album,color: Colors.blue),
              title: Text('Soy el titulo de esta tarjeta'),
              subtitle: Text('Aqui estamos con la descripcion de la tarjeta para comprobar su uso.'),
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: (){},
                ),
                FlatButton(
                  child: Text('ok'),
                  onPressed: (){},
                )
              ],
            ),
          ],
        ),
      );

   }

 Widget _cardTipo2() {

   final card = Container(
     //clipBehavior: Clip.antiAlias,
     //elevation: 1.0,
     child: Column(
       children: <Widget>[
         //ctrl + enter ver todas los parametors del widget
         FadeInImage(
            image: NetworkImage
           ('https://www.xtrafondos.com/wallpapers/paisaje-del-universo-867.jpg'),
            placeholder:AssetImage('assets/jar-loading.gif') , 
            fadeInDuration: Duration(milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
         ),
         /* Image(
           image: NetworkImage
           ('https://www.xtrafondos.com/wallpapers/paisaje-del-universo-867.jpg'),
         ), */
         Container(
           padding: EdgeInsets.all(10.0),
           child: Text('LandsCape Galaxy'),
           ),
       ],
     ), 
  );

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: <BoxShadow>[
        BoxShadow( 
          color : Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset( 2.0 ,  10.0),
        ),
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );

 }
}