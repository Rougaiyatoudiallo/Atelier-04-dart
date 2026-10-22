
class Livre {
  final String titre;
  final String auteur;

  int _pages;

  static int totalLivres = 0;

  Livre(
    this.titre,
    this.auteur, {
    int pages = 200,
  }) : _pages = pages {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
    print("Nombre de pages : $pages");
  }

  static void afficherTotalLivres() {
    print("Nombre total de livres : $totalLivres");
  }
}

class Roman extends Livre {
  final String genre;

  Roman(
    String titre,
    String auteur,
    this.genre, {
    int pages = 200,
  }) : super(titre, auteur, pages: pages);

  void afficherInfosRoman() {
    afficherInfos();
    print("Genre : $genre");
  }
}

void main() {
  final livre1 = Livre(
    "Le Petit Prince",
    "Antoine de Saint-Exupéry",
  );

  final livre2 = Livre(
    "Les Misérables",
    "Victor Hugo",
    pages: 500,
  );

  final roman1 = Roman(
    "Le Crime de l'Orient-Express",
    "Agatha Christie",
    "Policier",
    pages: 256,
  );

  final roman2 = Roman(
    "L'Étranger",
    "Albert Camus",
    "Philosophique",
  );

  print("\n--- Les LIVRES ---");
  livre1.afficherInfos();
  print("--------------------");
  livre2.afficherInfos();

  print("\n--- Les ROMANS ---");
  roman1.afficherInfosRoman();
  print("--------------------");
  roman2.afficherInfosRoman();

  print("\n--- Les STATISTIQUES ---");
  Livre.afficherTotalLivres();
}
