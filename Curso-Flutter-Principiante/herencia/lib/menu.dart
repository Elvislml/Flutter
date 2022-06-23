
import 'package:herencia/principal.dart';
import 'package:herencia/producto.dart';

class Menu extends Principal implements IInterface{


  late String s;
  late List<Producto> golosinas;

  Menu(){
    golosinas = <Producto>[];
    mensaje();

    var data = IInterface();

  }

  @override
  void agregarProducto() {
    // TODO: implement agregarProducto
  }

  @override
  void getProductos(String s) {
    // TODO: implement getProductos
  }

  @override
  // TODO: implement nombre
  String? get nombre => null;

  /*
  @override
  void agregarProducto() {
    // TODO: implement agregarProducto
    golosinas.add(Producto("A1", "Galletas", 0.50));
    golosinas.add(Producto("B1", "Refresco", 10));
    golosinas.add(Producto("C1", "Pizza", 15));
    golosinas.add(Producto("D1", "Chocolate", 6));
    golosinas.add(Producto("E1", "Doritos", 4));

  }

  @override
  void getProductos(String valor) {
    // TODO: implement getProductos
    var prodcuto = golosinas.where((p) => p.ID.startsWith(valor) || p.Nombre.startsWith(valor)).toList();

    if(prodcuto.isNotEmpty){
      Producto data = prodcuto.elementAt(0);
      print("Codigo ${data.ID} producto ${data.Nombre} precio ${data.Precio}");

    }else{
      print("El producto no se encuentra en el inventario");
    }
  }

   */

  /*
  @override
  void getProductos(String valor) {
    // TODO: implement getProductos
    var prodcuto = golosinas.where((p) => p.ID.startsWith(valor) || p.Nombre.startsWith(valor)).toList();

    if(prodcuto.isNotEmpty){
      Producto data = prodcuto.elementAt(0);
      print("Codigo ${data.ID} producto ${data.Nombre} precio ${data.Precio}");
      print(s);
    }else{
      print("El producto no se encuentra en el inventario");
    }
  }

   */

  /*void getProductos(String valor){
    var prodcuto = golosinas.where((p) => p.ID.startsWith(valor) || p.Nombre.startsWith(valor)).toList();

    if(prodcuto.isNotEmpty){
      Producto data = prodcuto.elementAt(0);
      print("Codigo ${data.ID} producto ${data.Nombre} precio ${data.Precio}");
      print(s);
    }else{
      print("El producto no se encuentra en el inventario");
    }
  }

   */

}

class  IInterface{
  final String? nombre = "";
  void agregarProducto(){

  }

}














