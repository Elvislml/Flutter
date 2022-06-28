import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new NavegationApp(),
  ));
}


class NavegationApp extends StatefulWidget {
  @override
  _NavegationApp createState() => new _NavegationApp();
}

class _NavegationApp extends State<NavegationApp> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Primera Pantalla"),
      ),

      body: new Center(
        child: new RaisedButton(
            child: new Text("Mostrar Pantalla"),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Second()
                  )
              );
            }
        ),
      ),
    );
  }
}

class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Segunda Pagina"),
      ),
      
      body: new Center(
        child: new RaisedButton(
            onPressed: () {
              Navigator.pop(
                  context
              );
            },
          child: new Text("Regresa ..."),
        ),
      ),
    );
  }
}






















