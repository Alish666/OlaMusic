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
        family: "K",
        type: "Keyboard Piano",
        url: "https://i.ibb.co/dJKfCxL/unnamed.png",
        weight: 144.6,
        price: '850'),
    Instrument(
        color: "red",
        id: "a2",
        name: "Fender R13",
        family: "S",
        type: "Electric Guitar",
        url: "https://i.ibb.co/xjzRRpt/1.png",
        weight: 22.3,
        price: '1300'),
    Instrument(
        family: "S",
        color: "brown",
        id: "a3",
        name: "The Violin",
        type: "Orchestra",
        url: "https://i.ibb.co/LtWJzsk/unnamed-1.png",
        weight: 11.73,
        price: '150')
  ];
  List<Instrument> _starred = [];

  bool isInList(String id) {
    for (int i = 0; i < _starred.length; i++) {
      if (id == _starred[i].id) {
        return true;
      } else {
        return false;
      }
    }
  }

  void addToStarred(String id) {
    for (int i = 0; i < _catalog.length; i++) {
      if (_catalog[i].isFavorite) {
        _starred.add(_catalog[i]);
        break;
      }
    }
    notifyListeners();
  }

  void deleteFromStarred(String id) {
    _starred.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  List<Instrument> get starred {
    return [..._starred];
  }

  List<Instrument> get catalog {
    return [..._catalog];
  }

  List<Instrument> get favorites {
    return _catalog.where((element) => element.isFavorite).toList();
  }

  Instrument getById(String id) {
    return _catalog.firstWhere((instrument) => id == instrument.id);
  }
}
