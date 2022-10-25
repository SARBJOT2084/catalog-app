import 'package:flutter/material.dart';

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
    return MaterialApp(
        home: Container(
      child: Text("Welcome to 30 days of flutter."),
    ));
  }
}
