import 'package:flutter/material.dart';

class favPage extends StatefulWidget {
  favPage({Key? key}) : super(key: key);

  @override
  _favPageState createState() => _favPageState();
}

class _favPageState extends State<favPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Wishlist',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
