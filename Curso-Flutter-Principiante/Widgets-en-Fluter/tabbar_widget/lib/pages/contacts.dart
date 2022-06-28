import 'package:flutter/material.dart';


class ContactPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: [
          new Icon(
            Icons.contacts,
            size: 170.0,
            color: Colors.greenAccent,
          ),
          new Text("Estamos en el Widget Contacto")
        ],
      ),
    );
  }
}