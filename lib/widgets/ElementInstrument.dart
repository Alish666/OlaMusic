import 'package:flutter/material.dart';
import '../model/instrument.dart';

class ElementInstrument extends StatelessWidget {
  final Instrument instrument;
  ElementInstrument({this.instrument});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _goToInstrumentDetailScreen(context),
      borderRadius: BorderRadius.circular(13),
      child: Container(
        margin: EdgeInsets.only(bottom: 35),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Stack(
          children: [
            Image.network(
              instrument.url,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: 350,
            ),
            Positioned(
              bottom: 22,
              child: Text(
                "  " + instrument.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 22,
              right: 20,
              child: Text(
                '\$' + instrument.price,
                style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _goToInstrumentDetailScreen(context) {
    Navigator.pushNamed(context, '/InstrumentDetailScreen',
        arguments: instrument);
  }
}
