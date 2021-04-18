import 'package:flutter/material.dart';
import 'package:olamusic/model/data.dart';
import 'package:olamusic/model/instrument.dart';
import 'package:olamusic/widgets/InstrumentDetailsElement.dart';
import 'package:provider/provider.dart';

class InstrumentDetailScreen extends StatelessWidget {
  // final String takenId;
  // InstrumentDetailScreen({this.takenId});
  @override
  Widget build(BuildContext context) {
    final takenId = ModalRoute.of(context).settings.arguments as String;
    final instrument = Provider.of<Data>(context).getById(takenId);

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
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: InstrumentDetailsElement(instrument: instrument),
    );
  }
}
