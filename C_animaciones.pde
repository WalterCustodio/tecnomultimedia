class Vfx {

  PImage ataqueAgua, ataqueFuego, ataquePlanta, pjEntrenando, pjEntrenando2, grass;

  float tam, x, y, radio, angulo, distancia, d;

  float beginX, beginY, endX, endY;

  float vel, pct;

  String pk;

  int n_oponente;

  int posX;

  int posY;

  int vPj = 2;


  Vfx () {



    ataqueAgua = loadImage("agua.png");

    ataqueFuego = loadImage("fuego.png");

    ataquePlanta = loadImage("planta.png");


    posX= -20;

    x = beginX;
    y = beginY;

    vel = 0.01;
    pct = 0.000;

    tam = 20;

    imageMode(CENTER);

    ///
    //
    //
  }

  void ataquePj(String pk_) {

    beginX = 250;
    beginY = 260;

    endX = 391;
    endY = 179;


    pk = pk_;

    if (pct < 1.0) {

      x = beginX + ((endX - beginX)* pct);
      y = beginY + ((endY - beginY)* pct);

      pct += vel;
    }

    if (pct >= 1) {
      x = beginX;
      y = beginY;
      vel = 0.01;
      pct = 0.0;
    }


    for (int i = 0; i < 5; i++) {

      d = 20;
      pushMatrix();

      translate(x, y);

      angulo = random(TWO_PI);

      rotate(angulo);
      if (pk.equals("agua")) {
        image(ataqueAgua, d, d, tam, tam );
      } else if (pk.equals("fuego")) {
        image(ataqueFuego, d, d, tam, tam );
      } else if (pk.equals("planta")) {
        image(ataquePlanta, d, d, tam, tam );
      }
      popMatrix();
    }
  }
  void ataqueRival(int n_oponente_) {

    n_oponente = n_oponente_;

    beginX = 391;
    beginY = 179;

    endX = 250;
    endY = 260;



    if (pct < 1.0) {

      x = beginX + ((endX - beginX)* pct);
      y = beginY + ((endY - beginY)* pct);

      pct += vel;
    }

    if (pct >= 1) {
      x = beginX;
      y = beginY;
      vel = 0.01;
      pct = 0.0;
    }


    for (int i = 0; i < 5; i++) {

      d = 20;
      pushMatrix();

      translate(x, y);

      angulo = random(TWO_PI);

      rotate(angulo);
      if (n_oponente== 0) {
        image(ataqueAgua, d, d, tam, tam );
      } else if (n_oponente==1) {
        image(ataqueFuego, d, d, tam, tam );
      } else if (n_oponente == 2) {
        image(ataquePlanta, d, d, tam, tam );
      }
      popMatrix();
    }
  }
  void entrenando() {

    String sentido = "d";

    pjEntrenando= loadImage("pj_entrenando.png");
    pjEntrenando2= loadImage("pj_entrenando2.png");
    
    grass = loadImage("grass.png");


    if (sentido.equals("d")) {
      image(pjEntrenando, posX, 450);
      posX= posX +3;
    } 
    if (sentido.equals("i")) {

      image(pjEntrenando2, posX, 450);
      posX = posX-3;
    }
    if (posX>=width+10){
    
    sentido = "i";
  }
  if (posX<= -5){
  
  sentido = "d";
  }
image(grass, 300, 480);
  }
}
