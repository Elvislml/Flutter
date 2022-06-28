import 'package:flutter/material.dart';

class AirPlanePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.black45,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Icon(
                Icons.airplanemode_active,
                size: 170.0,
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}