import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}

*/

void main(){

  //Ejercicio propuesto Primera mitad del Curso
  //sumaPositivosNegativos();

  //Segunda Parte del curso
  condicionalSwitch();


}

void practicandoCurso(){
  //Primera Parte

  /*
  List<String> lista = [];
  lista.add("A");
  lista.add("B");
  lista.add("C");
  lista.add("D");
  lista.add("D");
  lista.add("Anita");
  lista.add("Alfredo");

  //Insertar un elemento en la lista
  lista.insert(3, "Hola");

  //Obtener el primer elemento de la lista
  var primerElemento = lista.first;
  print(primerElemento);

  //Obtener el ultimo elemento de la lista
  var ultimoElemento = lista.last;
  print(ultimoElemento);

  //Busca el ultimo elemento en la lista
  var ultimoElementoBuscado = lista.lastIndexOf("D");
  print("Se encuentra en $ultimoElementoBuscado");

  //Buscar elemento en la lita
  var pos = lista.indexOf("D");
  print("Se ecuentra en la posicion $pos");


  //Metodo para buscar en una coleccion de acuerdo al caracter ingresado
  //var datos = lista.where((element) => element.startsWith("A")).toList();
  //print(datos);

  //Nos permite mapear
  //var map = lista.map((e) => "Datos: $e").toList();

  //Verificar si un elemento existe en la coleccion de datos
  var elementoExiste = lista.contains("A");
  print(elementoExiste);

  //Ordenar listas
  var numeros = [1,5,3,7,9,2,4];
  numeros.sort();
  print(numeros);

  //Comparacion
  lista.sort((nombre1,nombre2) => nombre1.length.compareTo(nombre2.length));
  print(lista);
  /*if(!lista.isNotEmpty){
    print("La lista no tiene datos");
  }else{
    lista.forEach((element) => print("Posicion $element"));
  }*/
  */

  //Parte 2 Mapas

  /*var nombres = <String, int>{"nombre":12,"edad":20};
  //nombres["apellido"] = "Burgos";

  nombres.putIfAbsent("Apellido", () {
    return "Burgos";
  });

  nombres.forEach((key, value) => print(value));

   */

  var map = Map();
  map["nombre"] = "Elvis";
  print(map["nombre"]);

  //Palabras reservadas
  //const -> Cuando querramos crear una variable que no querramos que sea modificada, la variable debe estar en Mayusculas
  //final -> Las palbras finales tambien deben ser escritas en mayusculas
  //dynamic -> no estamos seguros que tipo de valores se van a almacenar en alguna variable


  //Manipulacion de String en Dart
  var curso = "Curso de Dart and flutter desde cero con Firebase";
  /*for(var i = 0; i <curso.length; i++){
    print(curso[i]);
  }
   */

  //Metodo para convertir todos los caracteres en minuscula
  print(curso.toLowerCase());

  //Metodo para convertir todos los caracteres en mayusculas
  print(curso.toUpperCase());

  //Buscar un caracter en la cadena de texto
  print(curso.indexOf('d',7));


  //Obtener el ultimo caracter que encuentre al final
  print(curso.lastIndexOf('e'));

  //Buscar un caracter en la cadena de texto, devuelve un bool
  print(curso.contains("Dart"));

  //Buscar un caracter al principio de la cadena de texto
  print(curso.startsWith('C'));

  //Buscar que una cadena de texto termina con cierto caracter
  print(curso.endsWith("s"));

  //Convertir una cadena de texto en una lista, segun un caracter ingresado
  var lista = curso.split(" ");
  print(lista);

  //Metodo para remplazar datos
  print(curso.replaceAll("flutter", "Flutter"));

  //Nos permite crear cadenas de texto
  var ab = new StringBuffer("Elvis\t");
  //String data = ab.toString();
  ab.write("Burgos ");
  ab.writeAll(["Curso ","de ","Dart "]);
  ab.clear();

  //Si el objeto esta basio o no
  if(ab.isEmpty){
    print("Nuestrto objeto se encuentra basio");
  }

  //Crear cadenas Multilineas
  var data = "Dart";
  var name = "Elvis";
  var cursoInterpolado = "Curso de ${data} desde cero con ${name}";
  print(cursoInterpolado);
}

void sumaPositivosNegativos() {
  var numeros = [1,-9,6,-5,3,-2];
  var positivos = 0;
  var negativos = 0;
  for(var i=0; i<numeros.length; i++){
    if(numeros[i]<0){
      negativos += numeros[i];
    }else{
      positivos += numeros[i];
    }
  }
  print("La suma de positivos es : ${positivos} \nLa suma de Negativos es: ${negativos}");
}

//Tercera parte del curso
void condicionalSwitch(){
  var name = "Gabriel";
  switch(name){
    case "Alex":
      print("Tu nombres es: $name");
      break;

    case "Elvis":
      print("Tu nombre es: $name");
      break;

    default:
      print("Tu tienes nombre? ");
  }
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
