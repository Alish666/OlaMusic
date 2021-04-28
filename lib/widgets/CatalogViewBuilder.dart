import 'package:flutter/material.dart';
import 'package:olamusic/model/data.dart';
import 'package:olamusic/model/instrument.dart';
import 'package:provider/provider.dart';
import 'ProductItem.dart';

class CatalogViewBuilder extends StatefulWidget {
  @override
  _CatalogViewBuilderState createState() => _CatalogViewBuilderState();
}

class _CatalogViewBuilderState extends State<CatalogViewBuilder> {
  @override
  Widget build(BuildContext context) {
    final catalogData = Provider.of<Data>(context);
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: catalogData.catalog.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: catalogData.catalog[i],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
