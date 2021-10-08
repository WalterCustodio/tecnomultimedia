

AventuraGrafica aventuraGrafica;

void setup() {
  size(600, 600);
  // background(255);
  aventuraGrafica = new AventuraGrafica();
}

void draw() {

  aventuraGrafica.display();
}
void keyPressed() {
  aventuraGrafica.teclado();
}
