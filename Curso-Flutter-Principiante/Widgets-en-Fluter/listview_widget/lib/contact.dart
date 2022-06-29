
import 'package:flutter/material.dart';
import 'package:listview_widget/model/contactModel.dart';
import 'package:listview_widget/pages/contactList.dart';

class Contact extends StatelessWidget{

  _buildList(){
    return <contactModel>[
      const contactModel(nombre: "Elvis", email: "elvis@gmail.com"),
      const contactModel(nombre: "Maria", email: "maria@gmail.com"),
      const contactModel(nombre: "Lili", email: "lili@gmail.com"),
      const contactModel(nombre: "Jescenia", email: "jess@gmail.com"),
      const contactModel(nombre: "Carlos", email: "carlos@gmail.com"),
      const contactModel(nombre: "Kevin", email: "kevin@gmail.com")
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ContactList(_buildList()),
    );
  }
}