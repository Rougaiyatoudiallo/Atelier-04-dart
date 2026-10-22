// Exercice 7: Le Compteur de Tâches
class Tache {
  String description;
  static int nombreTotal = 0;
  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  Tache('T1');
  Tache('T2');
  Tache('T3');
  print('Total: \');
}
