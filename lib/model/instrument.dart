import 'package:flutter/material.dart';

class Instrument with ChangeNotifier {
  final String id;
  final String name;
  final String type;
  final String color;
  final double weight;
  final String url;
  final String price;
  bool isFavorite;

  Instrument(
      {@required this.id,
      @required this.name,
      @required this.type,
      @required this.color,
      @required this.weight,
      @required this.url,
      @required this.price,
      this.isFavorite = false});

  void changeFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
