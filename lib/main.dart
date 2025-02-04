import 'package:flutter/material.dart';
import 'layoutCombined.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Match the reference image
      body: Center(
        child: Layout(),
      ),
    );
  }
}

