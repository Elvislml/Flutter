import 'package:clases_flutter/escuela.dart';
import 'package:flutter/material.dart';

import 'estudiante.dart';
import 'escuela.dart';

/*void main() {
  runApp(const MyApp());
}

 */

void main(){

  //Busqueda de datos usndo colecciones
  var estudiante1 = Estudiante("Elvis", 23, 10);
  var estudiante2 = Estudiante("Maria", 21, 8);
  var estudiante3 = Estudiante("Carlos", 22, 8);
  var estudiante4 = Estudiante("Jescenia", 23, 9);

  var escuela = Escuela();
  escuela.addEstudiante(estudiante1);
  escuela.addEstudiante(estudiante2);
  escuela.addEstudiante(estudiante3);
  escuela.addEstudiante(estudiante4);
  escuela.addEstudiante(estudiante4);

  //escuela.buscarPorNombre("Martha");

  /*
  var data = Estudiante("Elvis",12);
  print("${data.nombre} y tengo ${data.edad}");

   */

  //Constructores nombranos
  /*
  var dataNombrado = Estudiante.Constructor("Maria", 10);
  print("${dataNombrado.getNombre} y tengo de nota ${dataNombrado. calificacion}");

  dataNombrado.setNombre = "Carlos";
  print("Nuevo nombre es ${dataNombrado.getNombre}");

   */

  //Runas en Dart
  //runas();

}



runas(){
  Runes input = new Runes('\u{1f605}');
  String cadena = "Elvis";
  int numero = 2;
  //Ver el valor unicode de la letra que querramos

  print(String.fromCharCodes(input));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
