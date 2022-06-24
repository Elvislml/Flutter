import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton>{
  String flutterText = "";
  List<String> collections = ["Hola","Mi","Nombre","es","Elvis"];
  int index = 0;
  void onPressButton(){
    setState(() {
      flutterText = collections[index];
      index = index < collections.length - 1 ? index + 1 : 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                flutterText,
                style: new TextStyle(
                  fontSize: 40.0,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new RaisedButton(
                child: new Text(
                  "Actualizar",
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                ),
                color: Colors.blueAccent,
                onPressed: onPressButton,
              ),
            ],
          ),
        ),

      ),
    );
  }
}
























