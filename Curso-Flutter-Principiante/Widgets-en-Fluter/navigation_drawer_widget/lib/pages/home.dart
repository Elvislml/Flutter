import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  Drawer _getDrawer(BuildContext context){

    var header = new DrawerHeader(
      child: new Text("Ajustes"),
    );

    var headerInfo = new AboutListTile(
      child: new Text("Informacion App"),
      applicationIcon: new Icon(Icons.favorite),
      icon: new Icon(Icons.info),
      applicationVersion: "v1.0.0",
      applicationName: "Demos Drawer",
    );
    ListTile _getItem(Icon icon, String description, String route) {
      return new ListTile(
        leading: icon,
        title: new Text(description),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        },
      );
    }

    ListView listView = new ListView(
        children: [
          header,
          _getItem(new Icon(Icons.settings), 'Configuracion', "/configuracion"),
          _getItem(new Icon(Icons.home), 'Pagina Principal', '/'),
          _getItem(new Icon(Icons.battery_charging_full), 'Bateria', '/bateria'),
          headerInfo,
        ]);

    return new Drawer(
      child: listView,
    );
  }






  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Menu"),
      ),

      drawer: _getDrawer(context)
    );
  }
}
