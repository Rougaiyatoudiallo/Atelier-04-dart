// Compteur de Tâches Simples (Exercice 7)
class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  var t1 = Tache("Premier");
  var t2 = Tache("Deuxième");
  var t3 = Tache("Troisième");
  print(Tache.nombreTotal);
}