import 'package:flutter/material.dart';
import 'package:olamusic/model/data.dart';
import 'package:olamusic/model/instrument.dart';
import 'package:provider/provider.dart';
import 'ProductItem.dart';

class CatalogViewBuilder extends StatelessWidget {
  final bool showLiked;
  CatalogViewBuilder({this.showLiked});
  @override
  Widget build(BuildContext context) {
    final _catalog = showLiked
        ? Provider.of<Data>(context).favorites
        : Provider.of<Data>(context).catalog;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: _catalog.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: _catalog[i],
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
