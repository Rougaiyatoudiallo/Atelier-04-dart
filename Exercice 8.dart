// Exercice 8: Livre et Roman
class Livre {
  String titre, auteur;

  int _pages = 200;
  int get pages => _pages;
  static int totalLivres = 0;
  Livre(this.titre, this.auteur) {
    totalLivres++;
  }
  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }
  static void afficherTotal() {
    print('Total livres: $totalLivres');
  }
}
