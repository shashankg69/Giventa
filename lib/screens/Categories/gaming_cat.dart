import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giventa_app/constants.dart';
import 'package:giventa_app/screens/Categories/gCat_body.dart';
import 'package:google_fonts/google_fonts.dart';

class gamingCat extends StatelessWidget {
  const gamingCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Categories',
            style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 22))),
        backgroundColor: Colors.yellow.shade50,
        foregroundColor: Colors.black,
        elevation: 1,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/vuesax-twotone-arrow-left.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: gCat_Body(),
    );
  }
}
