import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  String imageUrl;
  String company;
  String character;
  double price;
  String size;
  bool favorite;

  Product({
    required this.imageUrl,
    required this.company,
    required this.character,
    required this.price,
    required this.size,
    this.favorite = false,
  });

  void toggleFavoriteStatus() {
    favorite = !favorite;
    notifyListeners();
  }
}