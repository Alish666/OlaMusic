import 'package:flutter/material.dart';
import 'package:olamusic/model/instrument.dart';
import 'package:provider/provider.dart';

import 'ProductItem.dart';

class GridViewBuilder extends StatelessWidget {
  final List<Instrument> catalog;
  GridViewBuilder({this.catalog});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: catalog.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: catalog[i],
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
