
class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  final tache1 = Tache("\n---Faire les exercices Dart ---");
  final tache2 = Tache("\n---Tester les programmes ---");
  final tache3 = Tache("\n---Publier le projet sur GitHub ---");

  print(tache1.description);
  print(tache2.description);
  print(tache3.description);

  print("\n--- Nombre total de tâches : ${Tache.nombreTotal}");
}
