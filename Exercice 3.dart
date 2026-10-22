// Exercice 3: Compte Bancaire
class Compte {
  double _solde = 0.0;

  final String numeroCompte;

  Compte(this.numeroCompte, [this._solde = 0.0]);
  String get solde => '$(_solde.toStringAsFixed(2)) \$';

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  var c = Compte('FR123', 100.0);
  c.depot(50.0);
  print(c.solde);
}
