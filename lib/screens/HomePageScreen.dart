import 'package:flutter/material.dart';
import 'package:olamusic/widgets/RecomendedList.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                  Container(
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
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                child: RecomendedList(),
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
