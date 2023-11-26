import 'package:flutter/material.dart';
import 'package:try1/home.dart'; // Importing home.dart file


void main() {
  runApp(PlaceToVisitPage());
}

class PlaceToVisitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      home: HomePage(), // Using the Home widget from home.dart file
    );
  }
}