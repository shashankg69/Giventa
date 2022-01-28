import 'package:flutter/material.dart';
import 'package:giventa_app/constants.dart';
import 'package:giventa_app/screens/components/products_body.dart';
import '/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ProductsBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.yellow.shade50,
      foregroundColor: Colors.black,
      elevation: 1,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          Text('Products',
              style:
                  GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 22))),
        ],
      ),
    );
  }
}
