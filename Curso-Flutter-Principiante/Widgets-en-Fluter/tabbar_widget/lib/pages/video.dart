import 'package:flutter/material.dart';


class VideoPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: [
          new Icon(
            Icons.ondemand_video,
            size: 170.0,
            color: Colors.pink,
          ),
          new Text("Estamos en el Widget Video")
        ],
      ),
    );
  }
}