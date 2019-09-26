
////IMPORTACIONES DE DART////
import 'package:flutter/material.dart';
////MIS IMPORTACIONES ////
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/provides/menu_provider.dart';
////PAGINAS////



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
      
    );
  }

  Widget _lista() {
  /*   print(menuProvider.opciones); 
    llama a la clase  opciones
    vacias seguido imprime los datos del Json
 */
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot <List<dynamic>> snapshot){

        return ListView(
        children: _listaItems(snapshot.data , context),
       );  
      },
    );
  /*   return ListView(
      children: _listaItems(),
       ); */
  }

  List<Widget> _listaItems(List<dynamic> data , BuildContext context) {

    final List<Widget> opciones = [];
/*     //foreach  es un bloque constructivo de los lenguajes de 
     programación para recorrer los elementos de una colección
     los bucles foreach por lo general no mantienen contra-indicación 
     explícita,  que esencialmente dice "haga esto a todo en este juego" 
     en lugar de "hacer esto x veces." */

    data.forEach((opt){
        final widgetTemp = ListTile(
             title: Text(opt['texto']),
             leading: getIcon(opt['icon']),
             trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
              onTap: (){

                Navigator.pushNamed(context, opt['ruta']);


                    /* final route = MaterialPageRoute( //instancia la ruta a donde va la pagina pero mas resumido
                      builder: (context) => AlertPage()
                      );

                    Navigator.push(context, route); */
              },

        );

        opciones..add(widgetTemp)
                ..add(Divider());
    });
    return opciones;

  }
}