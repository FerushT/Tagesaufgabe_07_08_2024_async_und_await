//Erstelle eine Funktion getWelcomeMessage().
//Diese Funktion soll Daten über die Funktion fetchUserName (siehe unten) abrufen
//und dann zu einem String im Format "Willkommen in unserer App, $userName!” verarbeitet
//und dann ausgegeben werden.

//Gebe die Nachricht dann mit dem entsprechenden Namen in der Konsole aus.

//Tipp: Warte in der getWelcomeMessage Funktion, bis du den tatsächlichen Wert von fetchUserName
//erhalten hast, bevor du ihn weiter verarbeitest.

Future getWelcomeMessage() async {
  String userName = await fetchUserName();
  String welcomeMessage = 'Willkommen in unserer App, $userName!';
  print(welcomeMessage);
}

// Funktion zum Abrufen von fetchUserName
Future<String> fetchUserName() {
  return Future.delayed(Duration(seconds: 3), () {
    return "Mario";
  });
}

void main() {
  getWelcomeMessage();
}
