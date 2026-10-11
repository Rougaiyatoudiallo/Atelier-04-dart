class Couleur {
  final int r;
  final int v;
  final int b;

  const Couleur(this.r, this.v, this.b);

  const Couleur.rouge() : r = 255, v = 0, b = 0;
  const Couleur.vert() : r = 0, v = 255, b = 0;
  const Couleur.bleu() : r = 0, v = 0, b = 255;

  void afficherCouleur() {
    print('(R:$r, V:$v, B:$b)');
  }
}

class Point {
  double _x;
  double _y;

  Point(this._x, this._y);

  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  void display() {
    print('x: $_x, y: $_y');
  }
}

class MonCompteBancaire {
  double _solde;
  final String numeroCompte;

  MonCompteBancaire(this.numeroCompte, [this._solde = 0.0]);

  String get solde {
    return '${_solde.toStringAsFixed(2)} \$';
  }

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  print('--- EXERCICE 1 ---');
  var colRouge = Couleur.rouge();
  var colVert = Couleur.vert();
  var colBleu = Couleur.bleu();
  colRouge.afficherCouleur();
  colVert.afficherCouleur();
  colBleu.afficherCouleur();

  print('\n--- EXERCICE 2 ---');
  var pt = Point(2, 5);
  pt.display();
  pt.move(-1, 3);
  pt.display();

  print('\n--- EXERCICE 3 ---');
  var compte = MonCompteBancaire('FR76-BANQUE');
  compte.depot(150.0);
  print('Solde : ${compte.solde}');
}