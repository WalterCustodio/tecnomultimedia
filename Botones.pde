class Boton {

  PFont type2;

  float x, y, ancho, alto;  
  String texto;
  PImage agua, fuego, planta;

  Boton(String texto_, float x_, float y_, float ancho_, float alto_) {

    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    texto = texto_;

    agua = loadImage("pk_water.png");
    fuego = loadImage("pk_fire.png");
    planta = loadImage("pk_plant.png");

    rectMode(CENTER);

    type2= createFont("VDJ.ttf", 30);
  }


  void pk() {
    pushStyle();
    if (mouseOver()) {
      strokeWeight(5);
      fill(200, 250, 100, 70);
      stroke(240, 200, 0);
    } else {
      noStroke();
      noFill();
    }

    rect(x, y, ancho, alto);
    popStyle();

    if (texto.equals("water")) {
      image(agua, x, y);
    } else if (texto.equals("fire")) {
      image(fuego, x, y);
    } else if (texto.equals("plant")) {
      image(planta, x, y);
    }
  }

  void ataque() {

    if (mouseOver()) {
      strokeWeight(5);
      stroke(240, 200, 0);
    } else {
      noStroke();
    }

    rect(x, y, ancho, alto);


    pushMatrix();
    pushStyle();
    translate(x, y);
    textAlign(CENTER, CENTER);
    textFont(type2);
    text(texto, 0, 0);
    popStyle();
    popMatrix();
  }

  void jugar() {

    pushStyle();

    stroke(255);
    if (mouseOver()) {
      strokeWeight(3);
      fill(255, 141, 50);
    } else {
      strokeWeight(1);
      fill(255, 168, 88);
    }


    rect(x, y, ancho, alto);


    textAlign(CENTER, CENTER);
    textFont(type2);
    fill(255);
    text(texto, x, y);

    popStyle();
  }

  void creditos() {
    pushStyle();
    stroke(255);
    
    if (mouseOver()) {

      strokeWeight(3);
      fill(101, 67, 151);
    } else {

      strokeWeight(1);
      fill(145, 115, 177);
    }

    rect(x, y, ancho, alto);


    textAlign(CENTER, CENTER);

    textFont(type2);
    fill(255);
    textSize(20);
    text(texto, x, y);

    popStyle();
  }

  boolean mouseOver() {
    if ( mouseX > x-ancho/2 && mouseX < x+ancho/2 
      && mouseY > y-alto/2 && mouseY < y+alto/2 ) {
      return true;
    } else {
      return false;
    }
  }
}
