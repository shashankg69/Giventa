import 'package:flutter/material.dart';

class travelCard {
  final String image, title;
  final int size, id;
  final Color color;
  travelCard({
    required this.id,
    required this.image,
    required this.title,
    required this.size,
    required this.color,
  });
}

List<travelCard> travels = [
  travelCard(
      id: 1,
      title: "Rugsack",
      size: 12,
      image: "assets/images/Console.png",
      color: Color(0xFFAB47BC)),
  travelCard(
      id: 2,
      title: "Boots",
      size: 15,
      image: "assets/images/controller.png",
      color: Color(0xFF84FFFF)),
  travelCard(
      id: 3,
      title: "Trekking Pole",
      size: 12,
      image: "assets/images/headphones.png",
      color: Color(0xFF76FF03)),
  travelCard(
    id: 4,
    image: "assets/images/charger.png",
    title: "Drone",
    size: 12,
    color: Colors.black,
  ),
];
