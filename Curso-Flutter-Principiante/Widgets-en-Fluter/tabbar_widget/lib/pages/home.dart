import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: [
          new Icon(
            Icons.home_filled,
            size: 170.0,
            color: Colors.blue,
          ),
          new Text("Estamos en el Widget Home")
        ],
      ),
    );
  }
}