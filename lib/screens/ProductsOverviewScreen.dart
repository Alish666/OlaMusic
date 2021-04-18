import 'package:flutter/material.dart';
import 'package:olamusic/widgets/GridViewBuilder.dart';
import 'package:olamusic/widgets/ProductItem.dart';
import '../model/instrument.dart';
import '../model/data.dart';
import 'package:provider/provider.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catalog = Provider.of<Data>(context).catalog;
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 247, 243, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 247, 243, 1),
        title: Center(
          child: Text(
            "Products",
            style: TextStyle(color: Colors.grey[900]),
          ),
        ),
        elevation: 0,
      ),
      body: GridViewBuilder(catalog: catalog),
    );
  }
}
