
import 'estudiante.dart';

class Escuela{
  late List<Estudiante> estudiante;

  Escuela(){
    estudiante = <Estudiante>[];
  }

  void addEstudiante(Estudiante nuevoEstudiante){
    estudiante.add(nuevoEstudiante);
  }

  void buscarPorNombre(String nombre){
    bool estudianteEncontrado = false;
    for(var i = 0; i<estudiante.length; i++){
      if(estudiante[i].nombre == nombre){
        estudianteEncontrado = true;
        print("Estudiante encontrado con Exito");
        print("Nombre : ${estudiante[i].nombre} \n"
            "Edad : ${estudiante[i].edad} \n"
            "Calificacion: ${estudiante[i].calificacion}");
      }
    }

    if(estudianteEncontrado == false){
      print("Estudiante no encontrado");
    }
  }


}











