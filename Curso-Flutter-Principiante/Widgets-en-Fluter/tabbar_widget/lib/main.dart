import 'package:flutter/material.dart';
import 'package:tabbar_widget/pages/contacts.dart';
import 'package:tabbar_widget/pages/home.dart';
import 'package:tabbar_widget/pages/video.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Tab Bar",
    home: new MyTabBar(),
  ));
}

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBar createState() => new _MyTabBar();
}

class _MyTabBar extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController tabController;

  List<Widget> listTabs = [
    new Tab(
      icon: new Icon(Icons.home),
    ),
    new Tab(
      icon: new Icon(Icons.ondemand_video),
    ),
    new Tab(
      icon: new Icon(Icons.contacts),
    )
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: listTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Video Tabs"),
        backgroundColor: Colors.redAccent,
        bottom: new TabBar(
          tabs: listTabs,
          controller: tabController,
        ),
      ),
      body: new TabBarView(
        children: [
          new HomePage(),
          new VideoPage(),
          new ContactPage()
        ],
        controller: tabController,
      ),
    );
  }
}
