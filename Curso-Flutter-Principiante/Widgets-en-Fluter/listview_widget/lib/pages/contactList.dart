
import 'package:flutter/material.dart';
import 'package:listview_widget/model/contactModel.dart';
import 'package:listview_widget/pages/contactItem.dart';

class ContactList extends StatelessWidget{
  final List<contactModel> _contacts;
  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: _buildContactList(),
    );
  }

  List<ContactItem> _buildContactList(){
    return _contacts
      .map((contact) => new ContactItem(contact))
      .toList();
  }
}