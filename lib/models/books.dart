import 'package:flutter/material.dart';

class bookCard {
  final String image, title;
  final int size, id;
  final Color color;
  bookCard({
    required this.id,
    required this.image,
    required this.title,
    required this.size,
    required this.color,
  });
}

List<bookCard> books = [
  bookCard(
      id: 1,
      title: "Comics",
      size: 12,
      image: "assets/images/Console.png",
      color: Color(0xFFAB47BC)),
  bookCard(
      id: 2,
      title: "Action",
      size: 15,
      image: "assets/images/controller.png",
      color: Color(0xFF84FFFF)),
  bookCard(
      id: 3,
      title: "Fiction",
      size: 12,
      image: "assets/images/headphones.png",
      color: Color(0xFF76FF03)),
  bookCard(
    id: 4,
    image: "assets/images/charger.png",
    title: "Self-Help",
    size: 12,
    color: Colors.black,
  ),
];
