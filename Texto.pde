class Texto {

  PFont type1;
  PFont type2;

  PImage recuadro;

  float x, y, ancho, alto;

  Texto () {

    recuadro = loadImage("dialogo.png");
    type1 = createFont("GemunuLibre-Medium.ttf", 20);
    type2= createFont("VDJ.ttf", 14);
  }

  void dialogo(String text) {

    pushStyle();

    textAlign(LEFT, CENTER);
    image(recuadro, 300, 500);
    textFont(type1);
    fill(50);
    text(text, 60, 500);

    popStyle();
  }
}
