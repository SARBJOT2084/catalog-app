import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}
