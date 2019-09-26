import 'package:flutter/services.dart' show rootBundle;


import 'dart:convert';

class _MenuProvider{
  //la consola imprime primo lista que es una lista vacia  y luego imprime _MenuProvider
  //Me confundi pensando que opciones tenia la lista del Json que gil que fui
  // osea lo  imprime en orden
  List<dynamic> opciones = [];

  _MenuProvider(){
    //cargarData();
  }

     Future <List<dynamic>>cargarData()  async {
    
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];

      return opciones;
    }

  }


final menuProvider = new _MenuProvider();