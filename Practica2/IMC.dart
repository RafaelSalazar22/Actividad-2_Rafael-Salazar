/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Aplicaciones Web Orientadas a Objetos
    Nombre del Maestro: Chuc Uc Joel Ivan
    Nombre de la actividad: Actividad 2, Ejercicio 3: Calcular IMC
    Nombre del alumno: Rafael Salazar Perera
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
import 'dart:io';

void main() {
  double IMC = 0;
  print("Ingresa el peso en kg ");
  String PesoString = stdin.readLineSync() ?? '0';
  int Peso = int.parse(PesoString);

  print("Ingresa la altura en centimetro");
  String AlturaString = stdin.readLineSync() ?? '0';
  int Altura = int.parse(AlturaString);
  double AltM = Altura / 100;
  IMC = (Peso / (AltM * AltM));

  if (IMC < 18.50) {
    print("Su pueso es inferior a lo normal , su IMC es de :$IMC");
  } else if (IMC >= 18.50 && IMC < 24.99) {
    print("Su Peso es normal, su IMC es de :$IMC");
  } else if (IMC >= 25.0 && IMC < 29.99) {
    print("Su Peso es superior a lo normal, su IMC es de :$IMC");
  } else if (IMC > 30.0) {
    print("Tiene obesidad, su IMC es de :$IMC");
  }
}
