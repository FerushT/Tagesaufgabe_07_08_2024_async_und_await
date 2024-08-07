// Konvertiere die folgende Future-basierte Funktion zu einer Anweisung mit async und await.

void main() async {
//Hier habe ich anstatt "fetchData().then((data){}) await fetchdata() verwendet,
//um auf das Ergebnis von "fetchData" zu warten.

  String data = await fetchData();
  print(data);
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data fetched');
}
