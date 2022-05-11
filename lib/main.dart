//include all the widgets bottom,top everything is a widgets
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bmi_screen.dart';
import 'package:flutter_application_1/screens/intro_screen.dart';

//entry point of flutter app
void main() {
  runApp(GlobeApp());
}

//statelessw enter it will override method below
//in flutter extend keyword is used for inheritance
//stateless means never changes throughout the app
// statelesswidget must override the build widget method and having build context
class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home container having center locatted both vertically as well as horizontally
        //in child we can have nested child
        //Scaffold give the functionality of appbar menu
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        routes: {
          '/':(context) => IntroScreen(),
          '/bmi':(context) => BmiScreen(),
        },
        initialRoute: '/',
       );
  }
}
