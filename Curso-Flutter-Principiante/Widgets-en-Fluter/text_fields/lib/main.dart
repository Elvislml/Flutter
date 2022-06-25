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

  String inputValue = "";

  final TextEditingController controller = new TextEditingController();

  void onSubmitted(String value){
    setState( () {
      inputValue = inputValue + "\n" + value;
      //Limpiar el Texto
      controller.text = "";
    });
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
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Ingrese cualquier Texto",
                ),
                onSubmitted: (String value) {
                  onSubmitted(value);
                },
                controller: controller,

              ),
              new Text(inputValue),
            ],
          ),
        ),
      ),
    );
  }
}


























