class Boton {

  PFont type2;


  float x, y, ancho, alto;  
  String texto;

  Boton(String texto_, float x_, float y_, float ancho_, float alto_) {

    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    texto = texto_;

    rectMode(CENTER);

    type2= createFont("VDJ.ttf", 14);
  }


  void pk() {

    if (mouseOver()) {
      strokeWeight(5);
      fill(100, 250, 100, 90);
      stroke(240, 200, 0);
    } else {
      noStroke();
      fill(230, 230, 230, 95);
    }

    rect(x, y, ancho, alto);
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



  boolean mouseOver() {
    if ( mouseX > x-ancho/2 && mouseX < x+ancho/2 
      && mouseY > y-alto/2 && mouseY < y+alto/2 ) {
      return true;
    } else {
      return false;
    }
  }
}
