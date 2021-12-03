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
    text(text, 50, 500);

    popStyle();
  }

  void continuar() {

    pushStyle();

    textAlign(CENTER, CENTER);
    fill(255, 0, 00);
    textSize(13);
    text("Presioná la barra espaciadora para continuar", 300, 75);
    textFont(type1);


    popStyle();
  }

  void contenedor() {

    pushStyle();

    rectMode(CENTER);


    fill(248, 246, 215);
    textFont(type2);
    rect(300, 465, 590, 200);
    fill(0);
    textSize(18);
    text("¿Qué querés hacer?", 15, 395);
    popStyle();
    
  }
}
