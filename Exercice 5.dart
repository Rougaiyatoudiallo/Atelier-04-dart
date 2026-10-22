
import 'dart:math' as math;

abstract class Forme {
  double calculerAire();

  void afficherMessage() {
    print("\n--- Calcul de l'aire...");
  }
}

class Cercle extends Forme {
  final double rayon;

  Cercle(this.rayon);

  @override
  double calculerAire() {
    return math.pi * rayon * rayon;
  }
}

class Rectangle extends Forme {
  final double longueur;
  final double largeur;

  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() {
    return longueur * largeur;
  }
}

void main() {
  final cercle = Cercle(5);
  final rectangle = Rectangle(4, 6);

  cercle.afficherMessage();

  print("\n--- Aire du cercle : ${cercle.calculerAire().toStringAsFixed(2)}",
  );

  rectangle.afficherMessage();
  
  print("\n--- Aire du rectangle : ${rectangle.calculerAire()}");
}
