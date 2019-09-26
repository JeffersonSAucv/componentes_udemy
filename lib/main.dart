


import 'package:flutter/material.dart';
 ///////////
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'), // English
        const Locale('es','ES'), // Español
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        
      ],
      title: 'Componentes App',
      home: HomePage(),
      //initialRoute: '/',
      routes: getApplicationRoutes(),
/* 
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder:(BuildContext context) => AlertPage(), 
        );
      }, */
    );
  }
}