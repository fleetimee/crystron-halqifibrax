import 'package:dark_magicians/routes.dart';
import 'package:dark_magicians/views/main_page2.dart';
import 'package:flutter/material.dart';
import 'views/main_page.dart';
import 'routes.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainPage(),
      routes: {
        MyRoutes.MAIN_PAGE: (context) => MainPage(),
        MyRoutes.MAIN_PAGE2: (context) => MainPage2(),
      },
      initialRoute: MyRoutes.MAIN_PAGE,
    );
  }
}
