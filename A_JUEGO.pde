class Juego {

  //------IMAGENES

  PImage pantalla0, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantalla11, pantalla12, pantalla13, pantalla14, pantalla15, pantalla16;
  PImage pj1, pj2;
  PImage pk_w, pk_f, pk_p;

  // ------LÓGICA DE ESTADOS

  String estado;
  int tamX = 600;
  int tamY = 600;
  int posX = width/2;
  int posY = height/2;

  Texto texto; 
  Boton boton1, boton2, boton3, ataque1;


  Juego() {

    estado= "inicio";
    texto = new Texto();

    boton1 = new Boton("", 300, 220, 150, 150);
    boton2 = new Boton("", 135, 410, 150, 150);
    boton3 = new Boton("", 445, 410, 150, 150);
    ataque1 = new Boton("aver", 150, 350, 275, 60);




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

    //------PERSONAJES

    pj1 = loadImage("pj1.png");
    pj2 = loadImage("pj2.png");
    pk_w = loadImage("pk_w.png");
    pk_f = loadImage("pk_f.png");
    pk_p = loadImage("pk_p.png");
  }


  void display() {


    //-----INICIO 

    if (estado.equals("inicio")) {
      imageMode(CENTER);    
      image(pantalla0, posX, posY, tamX, tamY );

      texto.dialogo("hola");
      ataque1.ataque();
    } 

    //-----ELEGIR PK

    else if (estado.equals("elegir")) {
      image(pantalla1, posX, posY, tamX, tamY );
      boton1.pk();
      boton2.pk();
      boton3.pk();
    } 

    //-----ELEGISTE WATER

    else if (estado.equals("elegiste agua")) {
      image(pantalla2, posX, posY, tamX, tamY );
    } 
    //-----ELEGISTE FIRE

    else if (estado.equals("elegiste fuego")) {
      image(pantalla3, posX, posY, tamX, tamY );
    } 

    //-----ELEGISTE PLANT

    else if (estado.equals("elegiste planta")) {
      image(pantalla4, posX, posY, tamX, tamY );
    } 

    //-----TU OPONENTE SERÁ

    else if (estado.equals("oponente")) {
      image(pantalla5, posX, posY, tamX, tamY );
    } 

    //-----INICIO PELEA / QUÉ HACER

    else if (estado.equals("pelea opciones")) {
      image(pantalla6, posX, posY, tamX, tamY );
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
    }
  }
}
