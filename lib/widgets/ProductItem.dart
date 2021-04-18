import 'package:flutter/material.dart';
import 'package:olamusic/screens/InstrumentDetailScreen.dart';
import '../model/instrument.dart';
import '../model/data.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:provider/provider.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProductItem extends StatelessWidget {
  // final Instrument instrument;
  // ProductItem({this.instrument});

  @override
  Widget build(BuildContext context) {
    final instrument = Provider.of<Instrument>(context, listen: true);
    return GestureDetector(
      onTap: () => pushNewScreenWithRouteSettings(
        context,
        screen: InstrumentDetailScreen(),
        withNavBar: true,
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
        settings: RouteSettings(
            name: '/InstrumentDetailScreen', arguments: instrument.id),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Positioned(
              child: FavoriteButton(
                isFavorite: instrument.isFavorite,
                valueChanged: (_) {
                  instrument.changeFavorite();
                  print(instrument.isFavorite);
                },
                iconSize: 40,
                iconColor: Color.fromRGBO(171, 68, 68, 1),
              ),
              right: 10,
              top: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 55, top: 30, right: 30, bottom: 10),
                  child: Image.network(
                    instrument.url,
                    scale: 6,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "\$" + instrument.price,
                    style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    instrument.name,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _goToIstrumentDetailScreen(BuildContext context, String id) {
    Navigator.pushNamed(context, '/InstrumentDetailScreen', arguments: id);
  }
}


// Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => InstrumentDetailScreen(
//             takenId: instrument.id,
//           ),
//         ),
//       ),