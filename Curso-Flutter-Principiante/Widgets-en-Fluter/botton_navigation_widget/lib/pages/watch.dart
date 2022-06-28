import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.redAccent,
      body: new Container(
        child: new Center(
          child: new Column(

            //Center de children
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Icon(
                Icons.alarm,
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