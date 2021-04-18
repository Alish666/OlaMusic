import 'package:flutter/material.dart';
import 'package:olamusic/model/data.dart';
import 'package:olamusic/widgets/GridViewBuilder.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catalog = Provider.of<Data>(context).favoriteCatalog;
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
      body: GridViewBuilder(catalog: catalog),
    );
  }
}
