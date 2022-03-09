// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _FavoriteState();
  }
}


class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [Text(
                  'Rekomendasi Produk Hari Ini:', 
                  style: Theme.of(context).textTheme.headline2,),
                  Divider(),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(child: Image.network('https://i.4cdn.org/a/1646710130540.jpg')),
                        Card(child: Image.network('https://i.4cdn.org/a/1646719073848.jpg')),
                        Card(child: Image.network('https://i.4cdn.org/a/1646720485233.png')),
                        Card(child: Image.network('https://i.4cdn.org/a/1646720946508.jpg')),
                        Card(child: Image.network('https://i.4cdn.org/a/1646726290512.jpg')),
                      ]
                    ),
                  )],
              ),
            ),
          )
      ]
      )

    );
  }
}