//Definiere zwei asynchrone Funktionen, die das Abrufen von Daten aus zwei verschiedenen Quellen simulieren.
//Rufe sie in der Hauptfunktion nacheinander auf und gib ihre Ergebnisse aus.
//Dabei soll jeweils mittels async und await auf die Rückgabe der Daten der zwei Funktionen gewartet werden.

import "dart:async";

Future<String> fetchDataFromSource1() async {
  await Future.delayed(Duration(seconds: 1));
  return "Daten von Quelle 1";
}

Future<String> fetchDataFromSource2() async {
  await Future.delayed(Duration(seconds: 2));
  return "Daten von Quelle 2";
}

void main() async {
  String data1 = await fetchDataFromSource1();
  print(data1);

  String data2 = await fetchDataFromSource2();
  print(data2);
}
