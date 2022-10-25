import 'package:flutter/material.dart';

import 'home_page.dart';

// entry point
void main() {
  runApp(MyApp()); // give name of your app
}

// stateless widget
// build has all ui it is called in everytime ui is refreshed
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // all datatypes in dart.
    int days = 30;
    // String s = "sarbjot";
    // double pi = 3.24;
    // bool isMale = true;
    // num temp = 30.5;
    // const p = 3.14579;
    return MaterialApp(
      home: HomePage(),
    );
  }
}
