import 'package:flutter/material.dart';

class Gambar with ChangeNotifier {
  List<String> _images = [
    "assets/jalan.jpg",
    "assets/sunset.jpg",
    "assets/motoran.jpg",
    "assets/kapal2.jpeg",
    "assets/kapal1.jpeg",
    "assets/kapal3.jpeg",
  ];

  List<String> get images => _images;

  void add(Gambar images) {
    images.add(images);
    notifyListeners();
  }
}
