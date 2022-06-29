
import 'package:flutter/material.dart';
import 'package:listview_widget/model/contactModel.dart';

class ContactItem extends StatelessWidget {
  final contactModel _contact;
  const ContactItem(this._contact);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListTile(
      leading: new CircleAvatar(
        child: new Text(_contact.nombre[0]),
      ),
      title: new Text(_contact.nombre),
      subtitle: new Text(_contact.email),
    );
  }
}