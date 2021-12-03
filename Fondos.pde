class Fondos {

  int numero;
  int n_pantalla;
  PImage pantalla;

  int tamX = width;
  int tamY = height;
  int posX = width/2;
  int posY = height/2;


  Fondos (int n_pantalla_) {

    n_pantalla = n_pantalla_;

    pantalla = loadImage("estado"+n_pantalla+".png");
  }

  void display () {

    image(pantalla, width/2, height/2, tamX, tamY );
    
  }
}
