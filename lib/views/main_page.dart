import 'package:carousel_slider/carousel_slider.dart';
import 'package:dark_magicians/routes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  var viewTabBar = [
    Text('Tab 1'),
    Text('Tab 2'),
    Text('Tab 3'),
  ];

  var viewTabBarTitle = [
    Tab(
      text: 'Tab 1',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: 'Tab 2',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: 'Tab 3',
      icon: Icon(Icons.home),
    ),
  ];

  var tb;

  List<Widget> carouselItem = [
    Image.network('https://i.4cdn.org/a/1646704287230.jpg'),
    Image.network('https://i.4cdn.org/a/1646704532092.jpg'),
    Image.network('https://i.4cdn.org/a/1646705669918.jpg'),
    Image.network('https://i.4cdn.org/a/1646705733920.jpg'),
  ];
  var carouselOption = CarouselOptions(
    height: 300,
    aspectRatio: 1,
    reverse: false,
    autoPlay: true,
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
                flexibleSpace: FlexibleSpaceBar(
                  // background: Image.network('https://i.4cdn.org/a/1646704287230.jpg', fit: BoxFit.cover),
                  background: Container(
                    height: 300,
                    alignment: Alignment.topCenter,
                    child: CarouselSlider(
                      items: carouselItem,
                      options: carouselOption,
                    ),
                  ),
                ),
                bottom: TabBar(
                  tabs: viewTabBarTitle,
                  controller: tb,
                ),
              ),
            ];
          }),
    ));
  }
}
