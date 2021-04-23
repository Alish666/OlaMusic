import 'package:flutter/material.dart';
import 'package:olamusic/widgets/RecomendedList.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 247, 243, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(249, 247, 243, 1),
        title: Center(
          child: Text(
            "oLA",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
