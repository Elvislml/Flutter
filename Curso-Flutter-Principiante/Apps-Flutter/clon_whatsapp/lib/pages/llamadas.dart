
import 'package:flutter/material.dart';

class Llamadas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: [
          new Icon(Icons.call),
          new Text("Este es la llamada")
        ],
      ),
    );
  }
}