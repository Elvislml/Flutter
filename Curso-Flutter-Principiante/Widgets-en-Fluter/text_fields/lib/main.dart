import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyTextField(),
  ));
}



class MyTextField extends StatefulWidget{

  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField>{

  void onChanged(String value){
    print(value);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EditText Widget"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: [
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Ingrese cualquier Texto",
                ),
                onSubmitted: (String value) {
                  onChanged(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


























