class Juego {

  //------IMAGENES

  PImage pantalla0, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantalla11, pantalla12, pantalla13, pantalla14, pantalla15, pantalla16;
  PImage pj1, pj2;


  // ------LÓGICA DE ESTADOS

  String estado;
  String PK;
  int tamX = 600;
  int tamY = 600;
  int posX = width/2;
  int posY = height/2;



  Texto texto; 
  Boton start, start2, botonWater, botonFire, botonPlant;
  Boton ataque1, ataque2, ataque3, retirarse;


  Juego() {

    estado= "inicio";

    texto = new Texto();

    start = new Boton("JUGAR", 300, 250, 220, 100);
    start2= new Boton("CREDITOS", 300, 400, 190, 100);

    botonWater = new Boton("water", 300, 120, 150, 150);
    botonFire = new Boton("fire", 135, 310, 150, 150);
    botonPlant = new Boton("plant", 445, 310, 150, 150);

    ataque1 = new Boton("aver", 150, 450, 275, 60);
    ataque2 = new Boton("aver", 450, 450, 275, 60);
    ataque3 = new Boton("aver", 150, 530, 275, 60);
    retirarse = new Boton("aver", 450, 530, 275, 60);


    PK = "nada";



    //------FONDOS     
    pantalla0 = loadImage("estado0.png");
    pantalla1 = loadImage("estado1.png");  
    pantalla2 = loadImage("estado2.png");
    pantalla3 = loadImage("estado3.png");
    pantalla4 = loadImage("estado4.png");
    pantalla5 = loadImage("estado5.png");
    pantalla6 = loadImage("estado6.png");
    pantalla7 = loadImage("estado7.png");
    pantalla8 = loadImage("estado8.png");
    pantalla9 = loadImage("estado9.png");
    pantalla10 = loadImage("estado10.png");
    pantalla11 = loadImage("estado11.png");
    pantalla12 = loadImage("estado12.png");
    pantalla16 = loadImage("estado16.png");

    //------PERSONAJES

    pj1 = loadImage("pj1.png");
    pj2 = loadImage("pj2.png");
  }


  void display() {


    //-----INICIO 

    if (estado.equals("inicio")) {
      imageMode(CENTER);    
      image(pantalla0, posX, posY, tamX, tamY );

      start.jugar();
      start2.creditos();
    } 

    //-----ELEGIR PK

    else if (estado.equals("elegir")) {
      image(pantalla1, posX, posY, tamX, tamY );

      botonWater.pk();
      botonFire.pk();
      botonPlant.pk();
    } 

    //-----ELEGISTE WATER

    else if (estado.equals("elegiste agua")) {
      image(pantalla2, posX, posY, tamX, tamY );

      texto.dialogo("Felicitaciones, elegiste a este ");
      texto.continuar();
    } 
    //-----ELEGISTE FIRE

    else if (estado.equals("elegiste fuego")) {
      image(pantalla3, posX, posY, tamX, tamY );
      texto.dialogo("Felicitaciones, elegiste a este "); //          TO DO
      texto.continuar();
    } 

    //-----ELEGISTE PLANT

    else if (estado.equals("elegiste planta")) {
      image(pantalla4, posX, posY, tamX, tamY );
      texto.dialogo("Felicitaciones, elegiste a este");
      texto.continuar();
    } 

    //-----TU OPONENTE SERÁ

    else if (estado.equals("oponente")) {
      image(pantalla5, posX, posY, tamX, tamY );
    } 

    //-----INICIO PELEA / QUÉ HACER

    else if (estado.equals("pelea opciones")) {
      image(pantalla6, posX, posY, tamX, tamY );

      ataque1.ataque();
      ataque2.ataque();
      ataque3.ataque();
      retirarse.ataque();
    }

    //-----TU ATAQUE HIZO...

    else if (estado.equals("tu ataque")) {
      image(pantalla7, posX, posY, tamX, tamY );
    } 

    //-----TU ENEMIGO HIZO...

    else if (estado.equals("tu enemigo hizo")) {
      image(pantalla8, posX, posY, tamX, tamY );
    } 

    //-----GANASTE

    else if (estado.equals("ganaste")) {
      image(pantalla9, posX, posY, tamX, tamY );
    } 

    //-----PERDISTE

    else if (estado.equals("perdiste")) {
      image(pantalla10, posX, posY, tamX, tamY );
    } else if (estado.equals("creditos")) {
      image(pantalla16, width/2, height/2, tamX, tamY );

      fill(255, 0, 0);
      textSize(26);
      text("Creditos", 45, 75);
      textAlign(LEFT, CENTER);
      fill(0);
      textSize(16);
      text("Creado por Walter Custodio\n\nLegajo 81868/4\n\nPara la materia Tecno 1 - COM. 3", 30, 50);
    }
  }


  void click() {
    if (estado.equals("inicio")) {
      if (start.mouseOver()) {
        cambiarEstado("elegir");
      }
      if (start2.mouseOver()) {
        cambiarEstado("creditos");
      }
    } else if (estado.equals("elegir")) {
      if ( botonWater.mouseOver()) {
        cambiarEstado("elegiste agua");
        PK = "agua";
      }
      if ( botonFire.mouseOver()) {
        cambiarEstado("elegiste fuego");
        PK = "fuego";
      }
      if ( botonPlant.mouseOver()) {
        cambiarEstado("elegiste planta");
        PK = "planta";
      }
    }
  }
  void cambiarEstado( String nuevoEstado_  ) {
    estado = nuevoEstado_;
  }

  void teclado() {
    if (estado.equals("elegiste fuego")| estado.equals("elegiste agua")) {
      if  ( key == ' ' ) {
        cambiarEstado("oponente");
      }
    }
  }
}
