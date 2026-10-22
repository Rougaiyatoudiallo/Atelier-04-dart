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

class Roman extends Livre {
  String genre;
  Roman(String titre, String auteur, this.genre) : super(titre, auteur);
  @override
  void afficherInfos() {
    super.afficherInfos();
    print('Genre: $genre');
  }
}

void main() {
  var l = Livre('L1', 'A1');
  l.afficherInfos();
  var r = Roman('R1', 'A2', 'Policier');
  r.afficherInfos();
  Livre.afficherTotal();
}
