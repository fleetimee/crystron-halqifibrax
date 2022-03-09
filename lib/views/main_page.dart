// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dark_magicians/views/tab/favorite.dart';
import 'package:dark_magicians/views/tab/info.dart';
import 'package:dark_magicians/views/tab/list_user.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  var viewTabBar = [
    Favorite(),
    ListUser(),
    Info(),
  ];

  var viewTabBarTitle = [
    Tab(
      text: 'Favorite',
      icon: Icon(Icons.star),
    ),
    Tab(
      text: 'List User',
      icon: Icon(Icons.account_box),
    ),
    Tab(
      text: 'Info',
      icon: Icon(Icons.info),
    ),
  ];

  var tb;

  List<Widget> carouselItem = [
    'https://i.4cdn.org/a/1646704287230.jpg',
    'https://i.4cdn.org/a/1646704532092.jpg',
    'https://i.4cdn.org/a/1646705669918.jpg',
    'https://i.4cdn.org/a/1646705733920.jpg'
  ].map((i){
    return Container(
      margin: EdgeInsets.all(5),
      child: SafeArea(child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: Stack(
          children: [
            InkResponse(
              child: Image.network(i, fit: BoxFit.fill, width: 1000),
            )
          ]
        )
      )),
    );
  }).toList();
  var carouselOption = CarouselOptions(
    height: 300,
    aspectRatio: 1,
    reverse: false,
    autoPlay: true,
    enlargeCenterPage: true,
  );

  void initState() {
    super.initState();
    tb = TabController(length: viewTabBar.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(),
      child: NestedScrollView(
          controller: ScrollController(),
          physics: ClampingScrollPhysics(),
          body: TabBarView(
            children: viewTabBar,
            controller: tb,
          ),
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: true,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  // background: Image.network('https://i.4cdn.org/a/1646704287230.jpg', fit: BoxFit.cover),
                  background: Container(
                    color: Colors.pink,
                    height: 350,
                    alignment: Alignment.topCenter,
                    child: CarouselSlider(
                      items: carouselItem,
                      options: carouselOption,
                    ),
                  ),
                ),
                bottom: TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.red,
                  tabs: viewTabBarTitle,
                  controller: tb,
                ),
              ),
            ];
          }),
    ));
  }
}
