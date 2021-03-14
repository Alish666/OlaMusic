import 'package:flutter/material.dart';
import 'package:olamusic/model/instrument.dart';
import 'package:olamusic/widgets/InstrumentDetailsElement.dart';

class InstrumentDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RouteSettings routeSettings = ModalRoute.of(context).settings;
    Instrument instrument = routeSettings.arguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "oLA",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            // Drawer opens (Realization of logic)
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              //Screen opens (Realization of logic)
            },
          )
        ],
      ),
      body: InstrumentDetailsElement(instrument: instrument),
    );
  }
}
