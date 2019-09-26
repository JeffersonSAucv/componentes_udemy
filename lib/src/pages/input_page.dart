import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = "";
  String _email = "";
  String _fecha = "";
  String _opcionSeleccionada = 'volar';

  List _poderes = ['volar','rayos x','Super Aliento','Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Inputs de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
           Divider(),
           _crearPassword(),
           Divider(),
           _crearFecha(context),
           Divider(),
           _crearDropDown(),
           Divider(),
          _crearPersona(),
          
          

        ],
      ),
      
    );
  }

  Widget _crearPersona() {

      return ListTile(
         title: Text('Nombres es : $_nombre'),
         subtitle: Text('Email: $_email'),
         trailing: Text(_opcionSeleccionada),
      );

  }
  Widget _crearInput(){
      
      return TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(20.0)
          ),
          counter: Text('Letras ${ _nombre.length }'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          suffix: Icon(Icons.accessibility,color:  Colors.blue,),
          icon: Icon(Icons.account_circle),
        ),
        onChanged: (valor){
            _nombre = valor;
            setState(() {
             print(_nombre);
            });
            
        },
      );

 }

  Widget _crearEmail() {

    return TextField(
         keyboardType: TextInputType.emailAddress,
         decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(20.0)
          ),
          hintText: 'Email',
          labelText: 'Email',
          suffix: Icon(Icons.alternate_email,color:  Colors.blue,),
          icon: Icon(Icons.email),
        ),
        onChanged: (valor) =>setState(() {
            _email = valor;
            })
      );



  }

  Widget _crearPassword() {

     return TextField(
         obscureText:  true,
         decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(20.0)
          ),
          hintText: 'Password',
          labelText: 'Pasword',
          suffix: Icon(Icons.lock_open,color:  Colors.blue,),
          icon: Icon(Icons.lock),
        ),
        onChanged: (valor) =>setState(() {
            _email = valor;
            })
      );
  }


  Widget _crearFecha(BuildContext context) {
     return TextField(
          enableInteractiveSelection:  false,
          controller: _inputFieldDateController,
         decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(20.0)
          ),
          hintText: 'Fecha de Nacimiento',
          labelText: 'Fecha de Nacimiento',
          suffix: Icon(Icons.perm_contact_calendar, color:  Colors.blue,),
          icon: Icon(Icons.calendar_today),
        ),
        onTap:(){
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);

        } ,
      );

  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2020),
        locale: Locale('es','ES'),
    );

    if(picked != null){
       setState(() {
         _fecha = picked.toString(); 
         _inputFieldDateController.text  = _fecha;
         
       });
    }

  }

  List<DropdownMenuItem<String>> getOpcionesDropdown (){
      List<DropdownMenuItem<String>> lista = new List();
      _poderes.forEach((poder){

        lista.add(DropdownMenuItem(
          child: Text(poder),
          value: poder,
        ));
      });

      return lista;
  }


  Widget _crearDropDown () {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all,color: Colors.blue),
        SizedBox(width: 30.0,),
        DropdownButton(
        value : _opcionSeleccionada,
        items: getOpcionesDropdown(),
        onChanged: (opt){
          setState(() {
            _opcionSeleccionada = opt;
            
          });
        },
      ),

      ],
    );

  }
}

