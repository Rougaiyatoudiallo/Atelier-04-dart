
abstract class Connectable {
  void connecter(String utilisateur);

  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("\n--- ServeurAPI : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("\n--- ServeurAPI : Déconnexion réussie.");
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("\n--- BaseDeDonnees : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("\n--- BaseDeDonnees : Déconnexion réussie.");
  }
}

void main() {
  final services = <Connectable>[
    ServeurAPI(),
    BaseDeDonnees(),
  ];

  for (final service in services) {
    service.connecter("admin");
    service.deconnecter();
  
  }
}
