import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giventa_app/constants.dart';
import 'package:giventa_app/models/books.dart';
import 'package:giventa_app/models/electronics.dart';
import 'package:giventa_app/models/media.dart';
import 'package:giventa_app/models/product.dart';
import 'package:giventa_app/models/travel.dart';
import 'package:giventa_app/screens/product_cat/book_listing.dart';
import 'package:giventa_app/screens/product_cat/elec_listing.dart';
import 'package:giventa_app/screens/product_cat/gaming_cat_list.dart/console_listing.dart';
import 'package:giventa_app/screens/product_cat/gaming_listing.dart';
import 'package:giventa_app/screens/product_cat/media_listing.dart';
import 'package:giventa_app/screens/product_cat/travel_listing.dart';
import 'package:google_fonts/google_fonts.dart';

import 'products_titles.dart';

class ProductsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          gamingHead(title: "Gaming"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List.generate(
                  products.length,
                  (index) => productCard(
                      product: products[index],
                      press: () =>
                          Navigator.pushNamed(context, consoleList.routeName)),
                ),
              ],
            ),
          ),
          gamingHead(title: "Media"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(medias.length,
                    (index) => mediaCard(media: medias[index], press: () {}))
              ],
            ),
          ),
          gamingHead(title: "Electronics"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    electronics.length,
                    (index) => electronicsCard(
                          electronic: electronics[index],
                          press: () {},
                        ))
              ],
            ),
          ),
          gamingHead(title: "Travel"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ...List.generate(
                  travels.length,
                  (index) => travelCard(
                        travel: travels[index],
                        press: () {},
                      ))
            ]),
          ),
          gamingHead(title: "Books"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ...List.generate(
                  books.length,
                  (index) => booksCard(
                        book: books[index],
                        press: () {},
                      ))
            ]),
          ),
        ],
      ),
    );
  }
}

class productCard extends StatefulWidget {
  const productCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;

  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: 140,
          height: 140,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.14,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset(widget.product.image),
                    ),
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Text(
                widget.product.title,
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 14, color: Colors.grey.shade700)),
              )
            ],
          ),
        ),
      ),
    );
  }

  void press() {}
}

class mediaCard extends StatelessWidget {
  const mediaCard({
    Key? key,
    required this.media,
    required this.press,
  }) : super(key: key);

  final media;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 140,
        height: 140,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.14,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return mediaListing();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(media.image),
                ),
              ),
            ),
            Text(
              media.title,
              style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontSize: 14, color: Colors.grey.shade700)),
            )
          ],
        ),
      ),
    );
  }
}

class electronicsCard extends StatelessWidget {
  const electronicsCard({
    Key? key,
    required this.electronic,
    required this.press,
  }) : super(key: key);

  final electronic;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 140,
        height: 140,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.14,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return electronicsListing();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(electronic.image),
                ),
              ),
            ),
            Text(
              electronic.title,
              style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontSize: 14, color: Colors.grey.shade700)),
            )
          ],
        ),
      ),
    );
  }
}

class travelCard extends StatelessWidget {
  const travelCard({
    Key? key,
    required this.travel,
    required this.press,
  }) : super(key: key);

  final travel;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 140,
        height: 140,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.14,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return travelListing();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade800,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(travel.image),
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Text(
              travel.title,
              style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontSize: 14, color: Colors.grey.shade700)),
            )
          ],
        ),
      ),
    );
  }
}

class booksCard extends StatelessWidget {
  const booksCard({
    Key? key,
    required this.book,
    required this.press,
  }) : super(key: key);

  final book;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 140,
        height: 140,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.14,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return booksListing();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.shade400,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(book.image),
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Text(
              book.title,
              style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontSize: 14, color: Colors.grey.shade700)),
            )
          ],
        ),
      ),
    );
  }
}
