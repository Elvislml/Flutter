
import 'package:clon_whatsapp/pages/camera.dart';
import 'package:clon_whatsapp/pages/chats.dart';
import 'package:clon_whatsapp/pages/llamadas.dart';
import 'package:clon_whatsapp/pages/status.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget{

  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  late TabController tabController;

  List<Widget> listTabs = [
    new Tab(
      icon: new Icon(Icons.camera_alt),
    ),
    new Tab(
      text:"CHATS",
    ),
    new Tab(
      text:"STATUS",
    ),
    new Tab(
      text:"LLAMADAS",
    ),
  ];
  
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: listTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Chats"),

        bottom: new TabBar(
          tabs: listTabs,
          controller: tabController,
        ),
      ),

      body: new TabBarView(
        children: [
          new Camera(),
          new Chat(),
          new Status(),
          new Llamadas()
        ],
        controller: tabController,
      ),
    );
  }
}