import 'package:botton_navigation_widget/pages/airplanes.dart';
import 'package:botton_navigation_widget/pages/time.dart';
import 'package:botton_navigation_widget/pages/watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyBottonNav(),
  ));
}

class MyBottonNav extends StatefulWidget{

  @override
  _MyBottonNav createState() => new _MyBottonNav();
}

class _MyBottonNav extends State<MyBottonNav> with SingleTickerProviderStateMixin{

  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Botton NAvigation Bar"),
      ),

      body: new TabBarView(
        children: [
          new AlarmPage(),
          new TimePage(),
          new AirPlanePage()
        ],
        controller: tabController,
      ),
      
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          tabs: [
            new Tab(
              icon: new Icon(Icons.alarm),
            ),
            new Tab(
              icon: new Icon(Icons.watch_later),
            ),
            new Tab(
              icon: new Icon(Icons.airplanemode_active),
            ),
          ],
          controller: tabController,
        ),

      ),
    );
  }
}


















