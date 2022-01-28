import 'package:flutter/material.dart';
import 'package:giventa_app/constants.dart';
import 'package:giventa_app/screens/components/products_body.dart';
import 'package:giventa_app/screens/kCategory.dart';
import 'package:giventa_app/screens/product_card.dart';
import 'package:google_fonts/google_fonts.dart';
import '../kCategory.dart';
import '../kConstants.dart';
import 'package:giventa_app/models/getUsableScreenSize_API.dart';

class gCat_Body extends StatefulWidget {
  const gCat_Body({Key? key}) : super(key: key);

  @override
  State<gCat_Body> createState() => _gCat_BodyState();
}

class _gCat_BodyState extends State<gCat_Body> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 8, vsync: this);
    var usableScreenSize;
    return SingleChildScrollView(
      child: Column(
        children: [
          exploreCategoriesSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Text('Spotlight Products',
                style: GoogleFonts.ptSans(
                    textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ProductCard(
                name: 'PS4 Console',
                location: 'Hyderabad',
                dayPrice: '150',
                image: 'assets/images/Console.png',
                rating: '3.5'),
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
        ],
      ),
    );
  }
}

Container exploreCategoriesSection() {
  return Container(
    height: 200,
    padding: const EdgeInsets.only(left: 8),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          children: [
            CategoryCard(
              categoryName: "Consoles",
            ),
            CategoryCard(
              categoryName: "Controller",
            ),
          ],
        ),
        Column(
          children: [
            CategoryCard(
              categoryName: "Headphones",
            ),
            CategoryCard(
              categoryName: "Charger",
            ),
          ],
        ),
        Column(
          children: [
            CategoryCard(
              categoryName: "Gear",
            ),
            CategoryCard(
              categoryName: "VR Headset",
            ),
          ],
        ),
        Column(
          children: [
            CategoryCard(
              categoryName: "Fashion",
            ),
            CategoryCard(
              categoryName: "Electronics",
            ),
          ],
        ),
        Column(
          children: [
            CategoryCard(
              categoryName: "Fashion",
            ),
            CategoryCard(
              categoryName: "Electronics",
            ),
          ],
        ),
      ],
    ),
  );
}
