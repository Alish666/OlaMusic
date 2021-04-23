import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:olamusic/model/data.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Data>(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 247, 243, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(249, 247, 243, 1),
        title: Center(
          child: Text(
            "oLA",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: data.starred.length,
        itemBuilder: (ctx, i) => ListTile(
          leading: CircleAvatar(
            child: Text(data.starred[i].id),
          ),
          title: Text(data.starred[i].name),
          trailing: IconButton(
            icon: data.catalog[i].isFavorite
                ? Icon(
                    Icons.star,
                    size: 28,
                    color: Colors.yellow[600],
                  )
                : Icon(
                    Icons.star,
                    size: 28,
                    color: Colors.grey,
                  ),
            onPressed: () {
              data.catalog[i].changeFavorite();
              if (data.catalog[i].isFavorite &&
                  !data.isInList(data.catalog[i].id)) {
                data.addToStarred(data.catalog[i].id);
              } else {
                data.deleteFromStarred(data.catalog[i].id);
              }
            },
          ),
        ),
      ),
    );
  }
}
