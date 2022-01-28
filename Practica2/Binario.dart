/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Aplicaciones Web Orientadas a Objetos
    Nombre del Maestro: Chuc Uc Joel Ivan
    Nombre de la actividad: Actividad 2, Ejercicio 2: Conversión a binario
    Nombre del alumno: Rafael Salazar Perera
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
import 'dart:io';

void main() {
  int Cero = 0;
  int uno = 1;
  print("Ingresa numero que deseas convertir en binario");
  String NumeroCon = stdin.readLineSync() ?? '0';
  int Numeros = int.parse(NumeroCon);
  while (Numeros > 0) {
    Cero = Cero + (Numeros % 2) * uno;
    Numeros = (Numeros / 2).floor();
    uno = uno * 10;
  }
  print("$NumeroCon su numero en binario es: $Cero");
}
