import 'package:flutter/material.dart';
import 'package:olamusic/model/instrument.dart';
import 'instrument.dart';
import 'package:provider/provider.dart';

class Data with ChangeNotifier {
  List<Instrument> _catalog = [
    Instrument(
        color: "black",
        id: "a1",
        name: "The Piano",
        type: "Keyboard",
        url: "https://i.ibb.co/dJKfCxL/unnamed.png",
        weight: 144.6,
        price: '850'),
    Instrument(
        color: "red",
        id: "a2",
        name: "Fender R13",
        type: "Guitar",
        url: "https://i.ibb.co/dJKfCxL/unnamed.png",
        weight: 22.3,
        price: '1300'),
    Instrument(
        color: "brown",
        id: "a3",
        name: "The Violin",
        type: "Guitar",
        url: "https://i.ibb.co/LtWJzsk/unnamed-1.png",
        weight: 11.73,
        price: '150')
  ];

  List<Instrument> get catalog {
    return [..._catalog];
  }

  Instrument getById(String id) {
    return _catalog.firstWhere((instrument) => id == instrument.id);
  }

  List<Instrument> get favoriteCatalog {
    return [..._catalog.where((element) => element.isFavorite)];
  }
}
