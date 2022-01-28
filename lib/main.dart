// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giventa_app/home_page.dart';
import 'package:giventa_app/screens/products_page.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(GiventaApp());
}

class GiventaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade50),
      home: homePage(),
    );
  }
}
