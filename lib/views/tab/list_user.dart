// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListUserState();
  }
}

class _ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Daftar User Ter-registrasi',
                  style: Theme.of(context).textTheme.headline1,)
                ],
              ),
            )
          )
        ],
      )
    );
  }
}
