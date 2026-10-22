// Exercice 6: Le Contrat de Service
abstract class Connectable {

  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String u) => print('ServeurAPI: Connexion établie pour $u.');
  @override
  void deconnecter() => print('ServeurAPI: Déconnexion réussie.');
}
class BaseDeDonnees implements Connectable {
  @override
  void connecter(String u) => print('BDD: Connexion établie pour $u.');
  @override
  void deconnecter() => print('BDD: Déconnexion réussie.');
}

void main() {
  List<Connectable> services = [ServeurAPI(), BaseDeDonnees()];
  for (var s in services) {
    s.connecter('Admin');
    s.deconnecter();
  }
}
