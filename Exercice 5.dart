// Exercice 5: Gestion des Formes
import 'dart:math' as math;
abstract class Forme {

  double calculerAire();
  void afficherMessage() {
    print('Calcul de l\\'aire...');
  }
}

class Cercle extends Forme {
  final double rayon;
  Cercle(this.rayon);
  @override
  double calculerAire() => math.pi * rayon * rayon;
}
class Rectangle extends Forme {
  final double longueur, largeur;
  Rectangle(this.longueur, this.largeur);
  @override
  double calculerAire() => longueur * largeur;
}

void main() {
  var c = Cercle(3);
  c.afficherMessage();
  print(c.calculerAire());
  var r = Rectangle(4, 5);
  r.afficherMessage();
  print(r.calculerAire());
}
