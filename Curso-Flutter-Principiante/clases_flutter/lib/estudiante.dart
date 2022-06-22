
class Estudiante{
  late String _nombre;
  late int edad;
  late double calificacion = 9.9;

  Estudiante(String nombre, int edad){
    this._nombre = nombre;
    this.edad = edad;
  }

  //Constructores nombrados
  Estudiante.Constructor(String nombre, double calificacion){
    this._nombre = nombre;
    this.calificacion = calificacion;
  }

  String get getNombre{
    return this._nombre;
  }

  set setNombre(String newNombre){
    this._nombre = newNombre;
  }
}












