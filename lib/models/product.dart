import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Consoles",
      size: 12,
      image: "assets/images/Console.png",
      color: Color(0xFFAB47BC)),
  Product(
      id: 2,
      title: "Controller",
      size: 15,
      image: "assets/images/controller.png",
      color: Color(0xFF84FFFF)),
  Product(
      id: 3,
      title: "Headphones",
      size: 12,
      image: "assets/images/headphones.png",
      color: Color(0xFF76FF03)),
  Product(
    id: 4,
    image: "assets/images/charger.png",
    title: "Charger",
    size: 12,
    color: Colors.black,
  ),
];
