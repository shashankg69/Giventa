import 'package:flutter/material.dart';

class productMedia {
  final String image, title;
  final int size, id;
  final Color color;
  productMedia({
    required this.id,
    required this.image,
    required this.title,
    required this.size,
    required this.color,
  });
}

List<productMedia> medias = [
  productMedia(
      id: 1,
      title: "Camera",
      size: 12,
      image: "assets/images/camera-removebg-preview.png",
      color: Color(0xFFAB47BC)),
  productMedia(
      id: 2,
      title: "Webcam",
      size: 15,
      image: "assets/images/webcam-removebg-preview.png",
      color: Color(0xFF84FFFF)),
  productMedia(
      id: 3,
      title: "Handycam",
      size: 12,
      image: "assets/images/handycam-removebg-preview.png",
      color: Color(0xFF76FF03)),
  productMedia(
    id: 4,
    image: "assets/images/tripod-removebg-preview.png",
    title: "Tripod",
    size: 12,
    color: Colors.black,
  ),
];
