import 'package:flutter/material.dart';
import 'package:clon_whatsapp/models/chat_model.dart';

class Chat extends StatefulWidget{

  @override
  _ChatState createState() => new _ChatState();
}

class _ChatState extends State<Chat>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: mensajeDate.length,
      itemBuilder: (context, i) => new Column(
        children: [
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(mensajeDate[i].imageUrl),
            ),
          )
        ],
      ),
    );
  }
}