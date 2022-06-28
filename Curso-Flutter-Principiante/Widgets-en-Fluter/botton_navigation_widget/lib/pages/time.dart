import 'package:flutter/material.dart';

class TimePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Icon(
                Icons.watch_later,
                size: 170.0,
                color: Colors.tealAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}