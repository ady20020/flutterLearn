import 'package:flutter/material.dart';
import 'package:new_app/screens/bmi_screen.dart';
import 'package:new_app/screens/intro_screen.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  // const GlobeApp ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch:Colors.blueGrey
      ),
      routes: {
        '/':(context)=>IntroScreen(),
        '/bmi':(context)=>BmiScreen()
      },
      initialRoute: '/',
      // home: IntroScreen()
    );
  }
}
