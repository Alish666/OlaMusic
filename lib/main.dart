import 'package:flutter/material.dart';
import 'package:olamusic/screens/HomePageScreen.dart';
import 'package:olamusic/screens/InstrumentDetailScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageScreen(),
      routes: {
        '/HomePageScreen': (context) => HomePageScreen(),
        '/InstrumentDetailScreen': (context) => InstrumentDetailScreen()
      },
    );
  }
}
