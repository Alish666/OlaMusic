import 'package:flutter/material.dart';
import 'package:olamusic/widgets/CatalogViewBuilder.dart';
import 'package:olamusic/widgets/ProductItem.dart';
import '../model/instrument.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

enum Options {
  Liked,
  Catalog,
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  dynamic _showLiked = false;
  @override
  Widget build(BuildContext context) {
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
        actions: [
          PopupMenuButton(
            onSelected: (Options chosenOption) {
              setState(() {
                if (chosenOption == Options.Liked) {
                  _showLiked = true;
                } else {
                  _showLiked = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Liked"),
                value: Options.Liked,
              ),
              PopupMenuItem(
                child: Text("Catalog"),
                value: Options.Catalog,
              ),
            ],
          ),
        ],
      ),
      body: CatalogViewBuilder(
        showLiked: _showLiked,
      ),
    );
  }
}
