import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'My Account',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
