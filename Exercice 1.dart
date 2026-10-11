class Couleur {
  final int r;
  final int g;
  final int b;

  const Couleur(this.r, this.g, this.b);

  const Couleur.rouge() : r = 255, g = 0, b = 0;
  const Couleur.vert() : r = 0, g = 255, b = 0;
  const Couleur.bleu() : r = 0, g = 0, b = 255;
}
