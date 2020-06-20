import 'package:LeasureIdeasApp/constants.dart';
import 'package:LeasureIdeasApp/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leasure Ideas ',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
