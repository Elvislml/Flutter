import 'package:flutter/material.dart';

class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: [
          new Icon(Icons.drive_folder_upload),
          new Text("Este es la Status")
        ],
      ),
    );
  }
}