/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Aplicaciones Web Orientadas a Objetos
    Nombre del Maestro: Chuc Uc Joel Ivan
    Nombre de la actividad: Actividad 2, Ejercicio 4: Palindromos
    Nombre del alumno: Rafael Salazar Perera
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
import 'dart:io';

void main() {
  print('Ingrese la frase ');
  String? original = stdin.readLineSync();
  int NumPalabras = original!.split(' ').length;
  original = original.replaceAll(" ", "").toLowerCase();
  String? reverse = original.split('').reversed.join('');
  if (original == reverse) {
    print('Su frase es palindroma, su numero de frases son: $NumPalabras');
  } else {
    print('Su frase no es palindroma');
  }
}
