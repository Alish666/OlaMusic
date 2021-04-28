import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:olamusic/model/instrument.dart';
import 'instrument.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Data with ChangeNotifier {
  List<Instrument> _catalog = [];
  List<Instrument> _starred = [];

  Future<void> dataSetFromServer() async {
    List<Instrument> list = [];
    final respons = await http.get(Uri.parse(
        'https://olamusic-default-rtdb.firebaseio.com/instruments.json'));

    final convertedData = json.decode(respons.body) as Map<String, dynamic>;
    if (convertedData == null) {
      return;
    }

    convertedData.forEach((id, instrument) {
      list.add(
        Instrument(
            id: id,
            name: instrument['name'],
            type: instrument['type'],
            color: instrument['color'],
            weight: instrument['weight'],
            url: instrument['url'],
            price: instrument['price'],
            family: instrument['family'],
            overallQuantity: instrument['overallQuantity']),
      );
    });
    _catalog = list;
    notifyListeners();
  }

  Future<void> addToStarred(Instrument instrument) async {
    _starred.add(instrument);
    notifyListeners();
    String instrumentId = instrument.id;
    String userdId = FirebaseAuth.instance.currentUser.uid;
    String token = await FirebaseAuth.instance.currentUser.getIdToken();
    final url =
        "https://olamusic-default-rtdb.firebaseio.com/users/$userdId/favorites/$instrumentId.json";

    await http.post(Uri.parse(url), body: json.encode({'isFavorite': true}));
  }

  Future<void> deleteFromStarred(Instrument instrument) async {
    _starred.remove(instrument);
    notifyListeners();
    String instrumentId = instrument.id;
    String userdId = FirebaseAuth.instance.currentUser.uid;
    final url =
        "https://olamusic-default-rtdb.firebaseio.com/users/$userdId/favorites/$instrumentId.json";

    await http.delete(Uri.parse(url));
  }

  List<Instrument> get starred {
    return [..._starred];
  }

  List<Instrument> get catalog {
    return [..._catalog];
  }

  Instrument getById(String id) {
    return _catalog.firstWhere((instrument) => id == instrument.id);
  }
}
