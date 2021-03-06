import 'package:flutter/material.dart';
import 'package:navigation_drawer_widget/pages/home.dart';
import 'package:navigation_drawer_widget/pages/settings.dart';
import 'package:navigation_drawer_widget/pages/battery.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Home(),
    routes: <String, WidgetBuilder>{
      Settings.routeName:(BuildContext context) => new Settings(),
      Battery.routeName : (BuildContext context) => new Battery(),
    },
  ));
}


















