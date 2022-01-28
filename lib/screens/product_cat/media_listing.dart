import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class mediaListing extends StatefulWidget {
  mediaListing({Key? key}) : super(key: key);

  @override
  _mediaListingState createState() => _mediaListingState();
}

class _mediaListingState extends State<mediaListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Media',
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
      body: Center(
        child: Text(
          'Media Listing',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
