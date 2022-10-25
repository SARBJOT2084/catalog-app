import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of code by sarbjot"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
/* 
Widget is a return type 
method 
bringVegetables(int rupees)
{
  // take cycle
  // go to sec 16 

}
// with default type 
bringVegetables({int rupees=90})
{
  // take cycle
  // go to sec 16 

}
// set parameter is required 
bringVegetables({@required int rupees=90})
{
  // take cycle
  // go to sec 16 

}
 */