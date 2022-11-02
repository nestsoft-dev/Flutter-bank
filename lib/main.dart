import 'package:flutter/material.dart';
import 'package:netsoft_flutterwave/screens/home_screen.dart';
import 'package:netsoft_flutterwave/screens/splash_screen.dart';

import 'card_input/card_input.dart';
import 'screens/virtual_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nestsoft Flutterwave',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //HOMESCREEN()
      home: SplashScreen() ,
    );
  }
}

