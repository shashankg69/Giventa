import 'package:flutter/material.dart';

class productElectronics {
  final String image, title;
  final int size, id;
  final Color color;
  productElectronics({
    required this.id,
    required this.image,
    required this.title,
    required this.size,
    required this.color,
  });
}

List<productElectronics> electronics = [
  productElectronics(
      id: 1,
      title: "Laptop",
      size: 12,
      image: "assets/images/laptop-removebg-preview.png",
      color: Color(0xFFAB47BC)),
  productElectronics(
      id: 2,
      title: "Phone",
      size: 15,
      image: "assets/images/phone-removebg-preview.png",
      color: Color(0xFF84FFFF)),
  productElectronics(
      id: 3,
      title: "Keyboard",
      size: 12,
      image: "assets/images/keyboard-removebg-preview.png",
      color: Color(0xFF76FF03)),
  productElectronics(
    id: 4,
    image: "assets/images/desktop-removebg-preview.png",
    title: "Desktop",
    size: 12,
    color: Colors.black,
  ),
];
