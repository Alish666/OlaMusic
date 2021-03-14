import 'package:flutter/material.dart';

class Instrument {
  final String id;
  final String name;
  final String type;
  final String color;
  final double weight;
  final String url;
  final String price;

  const Instrument(
      {@required this.id,
      @required this.name,
      @required this.type,
      @required this.color,
      @required this.weight,
      @required this.url,
      @required this.price});
}
