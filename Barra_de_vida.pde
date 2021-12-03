class BarraVida {

  float vidaInicial, vidaActual;
  int posX, posY, ancho, alto;
  float tamX, posX2;


  BarraVida(float vidaIncial_) {

    vidaInicial = vidaIncial_;
    
  }

  void display(float vidaActual_, int posX_, int posY_) {

    rectMode(CORNER);

    posX = posX_;
    posY = posY_;
    ancho = 75;
    alto = 20;

    vidaActual = vidaActual_;

    for (float i = 0; i < vidaInicial; i++) {

      tamX = ancho/vidaInicial;
      posX2 = posX+tamX*i;

      if (vidaActual<= i) {
        noStroke();
        noFill();
      } else {

        noStroke();
        fill(0, 250, 25);
      }
      rect(posX2, posY, tamX, alto);
      
    }
    
    pushStyle();
    strokeWeight(2);
    stroke(100,100,0);
    fill(255, 50);
    rect( posX, posY, ancho, alto);

    popStyle();
  }
}
