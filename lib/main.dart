import 'package:flutter/material.dart';
import 'package:olamusic/model/data.dart';
import 'package:olamusic/screens/HomePageScreen.dart';
import 'package:olamusic/screens/InstrumentDetailScreen.dart';
import 'package:olamusic/screens/ProductsOverviewScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'screens/CartScreen.dart';
import 'screens/FavoriteScreen.dart';
import 'screens/NavigationBar.dart';
import 'screens/ProfileAuthScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Data(),
      child: MaterialApp(
        home: NavigationBar(),
        routes: {
          '/HomePageScreen': (context) => HomePageScreen(),
          '/InstrumentDetailScreen': (context) => InstrumentDetailScreen(),
          '/ProductsOverviewScreen': (context) => ProductsOverviewScreen(),
          '/FavoriteScreen': (context) => FavoriteScreen(),
          '/ProfileAuthScreen': (context) => ProfileAuthScreen(),
          '/CartScreen': (context) => CartScreen()
        },
      ),
    );
  }
}
