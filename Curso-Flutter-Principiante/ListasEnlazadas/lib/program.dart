
import 'nodo.dart';

class Programa{
  late Nodo? _primero;
  late int _size;

  Programa(){
    this._size = 0;
    this._primero = null;
  }

  void addNodo(int dato){
    Nodo nuevo = new Nodo(dato);
    Nodo? valor1;
    Nodo? valor2;

    if(_primero == null){
      _primero = nuevo;
      nuevo.siguiente = null;
    }else{
      valor1 = _primero;
      while(valor1 != null){
        valor2 = valor1.siguiente;
        //Condicion que verifica si el numero entrante debe de ir primero
        if(nuevo.dato <= valor1.dato){
          nuevo.siguiente = _primero;
          _primero = nuevo;
          break;
        }else{
          //Condicion que verifica si el numero entrante debe de ir al ultimo
          if(nuevo.dato > valor1.dato && valor2 == null){
            valor1.siguiente = nuevo;
            nuevo.siguiente = null;
            break;
          }else{
            //Condicion que verifica si el numero debe ir en medio de otro nodo
            if(valor1.dato < nuevo.dato && valor2!.dato >= nuevo.dato){
              valor1.siguiente = nuevo;
              nuevo.siguiente = valor2;
              break;
            }else{
              valor1 = valor1.siguiente;
            }
          }
        }
      }
    }
    _size++;
  }

  void ListaVacia(){
    if(_primero == null){
      print("La lista esta vacia");
    }else{
      print("La lista tiene datos");
    }
  }

  void Listar(){
    var _data = new StringBuffer();
    Nodo? actual = _primero;
    while(actual != null){
      _data.write("[${actual.dato}] -> ");
      actual = actual.siguiente;
    }
    print(_data.toString());
  }

  void EliminarPrimero(){
    _primero = _primero?.siguiente;
  }

  void EliminarUltimo(){
    Nodo? anterior = _primero;
    Nodo? actual = _primero;

    while(actual!.siguiente != null){
      anterior = actual;
      actual = actual.siguiente;
    }

    anterior!.siguiente = null;
  }

  void EliminarPosicionNodo(int p){
    Nodo? anterior = _primero;
    Nodo? actual = _primero;
    int dato = 0;

    if(p > 0){
      while(dato != p && actual!.siguiente != null){
        anterior = actual;
        actual = actual.siguiente;
        dato++;
      }
      anterior!.siguiente = actual!.siguiente;
    }
  }

  Nodo? Buscar(int n){
    Nodo? p = _primero;
    var _mostrar = new StringBuffer();

    if(p == null){
      print("La Lista no contiene datos");
    }else{
      while(p!.siguiente != null || p.siguiente == null){
        if(p.dato == n){
          return p;
        }else{
          if(p.siguiente == null){
            return null;
          }
        }
        p = p.siguiente;
      }
    }
    return null;
  }

  int Size(){
    return _size;
  }

  void Modificar(int origen, int nuevo){
    Nodo? pos = Buscar(origen);

    if(pos != null || pos == null){
      pos!.dato = nuevo;
    }
  }


}




















