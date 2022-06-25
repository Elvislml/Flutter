import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyAlertApp(),
  ));
}

class MyAlertApp extends StatefulWidget{

  @override
  _MyAlertApp createState() => new _MyAlertApp();
}

enum DialogAction {
  yes,
  no
}

class _MyAlertApp extends State<MyAlertApp> {

  String _inputValue = "";

  void _alertResult(DialogAction action){
    print("Tu seleccion es ${action.name}");
  }

  void _showAlert(String value){
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: [
        new FlatButton(
            onPressed: () {
              _alertResult(DialogAction.yes);
            },
            child: new Text("Si")
        ),
        new FlatButton(
            onPressed: () {
              _alertResult(DialogAction.no);
            },
            child: new Text("No")
        ),
      ],
    );

    showDialog(
        builder: (context) => dialog, context: context
    );
  }

  void _onChanged(String value){
    setState (() {
      _inputValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo de Alert Dialog"),
      ),

      body: new Container(
        child: new Center(
          child: new Column(
            children: [
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Ingrese un Texto"
                ),

                onChanged: (String value){
                  _onChanged(value);
                },
              ),
              new RaisedButton(
                child: new Text("Ver Alerta"),
                onPressed: () {
                  _showAlert(_inputValue);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}























