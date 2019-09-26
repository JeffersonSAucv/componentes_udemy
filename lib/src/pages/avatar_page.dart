import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
   //final stlimagen = 'https://cdn.vox-cdn.com/thumbor/9yAot9JLM_cX6thEgvOaZIxTr7Q=/0x0:4677x3280/1200x800/filters:focal(2346x1127:3094x1875)/cdn.vox-cdn.com/uploads/chorus_image/image/62282455/615970090.jpg.0.jpg';
  //imagen2 ='https://conceptodefinicion.de/wp-content/uploads/2014/05/imagen.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage
              ('https://cdn.vox-cdn.com/thumbor/9yAot9JLM_cX6thEgvOaZIxTr7Q=/0x0:4677x3280/1200x800/filters:focal(2346x1127:3094x1875)/cdn.vox-cdn.com/uploads/chorus_image/image/62282455/615970090.jpg.0.jpg'),
              radius: 25.0,

            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://conceptodefinicion.de/wp-content/uploads/2014/05/imagen.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          //fadeInDuration: Duration(milliseconds: 200),
        ),
      ),


    );
  }
}