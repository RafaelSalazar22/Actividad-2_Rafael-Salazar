/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Aplicaciones Web Orientadas a Objetos
    Nombre del Maestro: Chuc Uc Joel Ivan
    Nombre de la actividad: Actividad 2, Ejercicio 1: Calcular salario semanal
    Nombre del alumno: Rafael Salazar Perera
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
import 'dart:io';

void main() {
  int xHora = 120;
  int extra = 175;
  int salario = 0;
  int Acta = 0;
  int i = 0;
  print("Ingrese el nombre del empleado");
  var Empleado = stdin.readLineSync();

  while (i < 4) {
    i = i + 1;
    print("Ingrese las horas trabajadas del empleado : $Empleado : ");
    String EmpleadoSTRING = stdin.readLineSync() ?? '0';
    int Horas = int.parse(EmpleadoSTRING);
    if (Horas >= 27 && Horas < 41) {
      salario = xHora * Horas;
      print(
          "El empleado : $Empleado Laboro $Horas Horas , el Salario que le corresponde es :$salario ");
    } else if (Horas > 40) {
      salario = xHora * 40;
      int Sacarextra = Horas - 40;
      int extras = Sacarextra * extra;
      salario = salario + extras;
      print(
          "El empleado : $Empleado Laboro $Horas Horas , el Salario que le corresponde es :$salario ");
    } else if (Horas < 27) {
      Acta = Acta + 1;
      print(
          "El empleado : $Empleado Laboro $Horas Horas , No cumple con las horas solicitas se le levantara un acta administrativa");
    }
    if (Acta >= 2) {
      print(
          "Estimado empleado : $Empleado por este medio le informamos que usted esta oficialmente despedido.");
      break;
    }
  }
}
