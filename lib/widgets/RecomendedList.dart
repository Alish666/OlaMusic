import 'package:flutter/material.dart';
import '../model/data.dart';
import '../model/instrument.dart';
import 'ElementInstrument.dart';

class RecomendedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Catalog.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(bottom: 15),
      itemBuilder: (context, index) => ElementInstrument(
        instrument: Catalog[index],
      ),
    );
  }
}
