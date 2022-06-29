
import 'package:flutter/material.dart';

class Camera extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: [
          new Icon(Icons.camera),
          new Text("Este es la camara")
        ],
      ),
    );
  }
}