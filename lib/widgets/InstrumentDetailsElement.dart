import 'package:flutter/material.dart';
import 'package:olamusic/model/instrument.dart';

class InstrumentDetailsElement extends StatelessWidget {
  String text =
      "Lorem ipsum dolor sit amet, est id iusto elitr affert, ei suas albucius laboramus vel, no sea perpetua consequuntur delicatissimi. Ad his esse tempor, nec nihil tempor luptatum eu. Ius an dicta percipit luptatum. Ex lobortis molestiae pro. Modo vitae necessitatibus an usu, in iudico explicari quo.";

  final Instrument instrument;
  InstrumentDetailsElement({this.instrument});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Stack(
          children: [
            Image.network(instrument.url),
            Positioned(
              bottom: 25,
              right: 25,
              child: Container(
                child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(9)),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            "" + instrument.name,
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            "\$" + instrument.price,
            style: TextStyle(
                color: Colors.green[700],
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey[900], fontSize: 18),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: <Widget>[
            // ALL GESTURE DETECTORS SHOULD BE WORKING!! LOGIC REALIZATION..
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "FC",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(9)),
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              child: Container(
                child: Text(
                  "S",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(9)),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              child: Container(
                child: Text(
                  "FR",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(9)),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              child: Container(
                child: Text(
                  "NFR",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                decoration: BoxDecoration(
                    color: Colors.pink[400],
                    borderRadius: BorderRadius.circular(9)),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              ),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(9)),
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: GestureDetector(
                child: Container(
                  child: Icon(
                    Icons.star_border_outlined,
                    color: Colors.black,
                    size: 33,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(9)),
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
