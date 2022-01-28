import 'package:flutter/material.dart';
import 'package:giventa_app/constants.dart';
import 'package:giventa_app/screens/Categories/gaming_cat.dart';
import 'package:google_fonts/google_fonts.dart';

class gamingHead extends StatelessWidget {
  const gamingHead({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        children: <Widget>[
          gamingTitle(
            text: title,
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return gamingCat();
              }));
            },
            child: Text(
              "View All >",
              style: TextStyle(color: Colors.amber.shade600),
            ),
          ),
        ],
      ),
    );
  }
}

class gamingTitle extends StatelessWidget {
  const gamingTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(text,
                style: GoogleFonts.publicSans(
                    textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500))),
          ),
        ],
      ),
    );
  }
}
