import 'package:flutter/material.dart';
import 'package:olamusic/model/data.dart';

import 'package:olamusic/screens/HomePageScreen.dart';
import 'package:olamusic/screens/InstrumentDetailScreen.dart';
import 'package:olamusic/screens/ProductsOverviewScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'model/basket.dart';
import 'screens/CartScreen.dart';
import 'screens/FavoriteScreen.dart';
import 'screens/NavigationBar.dart';
import 'screens/ProfileAuthScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Data()),
        ChangeNotifierProvider(create: (ctx) => Basket())
      ],
      child: MaterialApp(
        home: NavigationBar(),
        routes: {
          '/HomePageScreen': (context) => HomePageScreen(),
          '/InstrumentDetailScreen': (context) => InstrumentDetailScreen(),
          '/ProductsOverviewScreen': (context) => ProductsOverviewScreen(),
          '/FavoriteScreen': (context) => FavoriteScreen(),
          '/ProfileAuthScreen': (context) => ProfileAuthScreen(),
          '/CartScreen': (context) => CartScreen(),
          '/NavigationBar': (context) => NavigationBar()
        },
      ),
    );
  }
}
