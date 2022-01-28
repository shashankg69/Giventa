import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giventa_app/models/product.dart';
import 'package:giventa_app/screens/product_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:giventa_app/models/getUsableScreenSize_API.dart';

class gamingListing extends StatefulWidget {
  gamingListing({
    Key? key,
  }) : super(key: key);

  @override
  _gamingListingState createState() => _gamingListingState();
}

class _gamingListingState extends State<gamingListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gaming',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductCard(
              dayPrice: '200',
              image: 'assets/images/Console.png',
              location: 'Hyderabad',
              name: ' PS5 Console',
              rating: '4.0',
            ),
            ProductCard(
                name: 'PS4 Console',
                location: 'Hyderabad',
                dayPrice: '150',
                image: 'assets/images/Console.png',
                rating: '3.5'),
            ProductCard(
                name: 'PS4 Console',
                location: 'Hyderabad',
                dayPrice: '150',
                image: 'assets/images/Console.png',
                rating: '3.5'),
            ProductCard(
                name: 'PS4 Console',
                location: 'Hyderabad',
                dayPrice: '150',
                image: 'assets/images/Console.png',
                rating: '3.5'),
            ProductCard(
                name: 'PS4 Console',
                location: 'Hyderabad',
                dayPrice: '150',
                image: 'assets/images/Console.png',
                rating: '3.5'),
            ProductCard(
                name: 'PS4 Console',
                location: 'Hyderabad',
                dayPrice: '150',
                image: 'assets/images/Console.png',
                rating: '3.5')
          ],
        ),
      ),
    );
  }
}
