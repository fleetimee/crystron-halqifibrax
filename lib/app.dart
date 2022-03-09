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
      theme: ThemeData(
        textTheme: (
          const TextTheme(
            headline1: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            headline3: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ),
        fontFamily: 'Poppins',
      ),
    );
  }
}
