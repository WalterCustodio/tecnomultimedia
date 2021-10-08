class AventuraGrafica {

  PFont type1;
  PFont type2;


  int tamX = 600;
  int tamY = 600;
  int contador = 0;
  int contador1 = 0;
  int pokemon = 0;
  float lvl = 0;
  int vPj = 1;
  float posYC;


  //  imagenes

  PImage pantalla0, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantalla11, pantalla12, pantalla13, pantalla14, pantalla15, pantalla16;
  PImage pj1, pj2, grass;
  PImage dialogo;
  PImage pokemones;

  //    animacion salida     //

  float lineW = 0.01;
  boolean salida = false;
  int estado = 0;
  int instancia = 1;



  AventuraGrafica() {

    dialogo = loadImage("dialogo.png");
    type1 = createFont("GemunuLibre-Medium.ttf", 20);
    type2= createFont("VDJ.ttf", 14);

    grass = loadImage("grass.png");
    pj1 = loadImage("pj1.png");
    pj2 = loadImage("pj2.png");
    pokemones = loadImage("pokemones.png");
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
    pantalla13 = loadImage("estado13.png");
    pantalla14 = loadImage("estado14.png");
    pantalla15 = loadImage("estado15.png");
    pantalla16 = loadImage("estado16.png");
    //

    imageMode(CENTER);


    //
  }

  void display() {

    // INICIO //

    if (estado == 0) {
      image(pantalla0, width/2, height/2, tamX, tamY );

      pushStyle();
      textFont(type2);
      fill(255, 0, 0);
      textSize(14);      
      textAlign(CENTER, CENTER);
      text("PRESIONÁ 'F' PARA IR A LOS CRÉDITOS", 300, 25);

      fill(255);
      text("PRESIONÁ LA BARRA ESPACIADORA PARA INICIAR", 300, 550);
      popStyle();


      salida();
    }

    //    PANTALLA 1    //

    else if (estado== 1) {

      image(pantalla1, width/2, height/2, tamX, tamY );
      texto("¡No puedo creer que me quedé dormido!\n¡Tengo que ir al laboratorio del profesor ahora mismo!");
      texto_barra("PRESIONÁ LA BARRA ESPACIADORA PARA CONTINUAR", 240);
      salida();
    }

    //    PANTALLA 2    //

    else if ((estado== 2)&&(instancia == 1)) {
      image(pantalla2, width/2, height/2, tamX, tamY );
      texto("profesor, queda algún pokemón para mí?");
    } else if ((estado == 2) && (instancia == 2)) {
      image(pantalla2, width/2, height/2, tamX, tamY );
      image(pokemones, width/2, height/2);

      texto("PROFESOR: llegaste muy tarde pero sí, me quedan estos 3");
      texto_abajo("Elegí un pokemon con las flechitas");
      salida();
    }

    //    pantalla 3    //

    else if (estado== 3) {
      image(pantalla3, width/2, height/2, tamX, tamY );
      texto("Lo lamento, se llevaron el último de estos hace unas horas");
      texto_barra ("Apretá la barra para volver a elegir", 200);
    }

    //     PANTALLA 4    //

    else if (estado== 4) {
      image(pantalla4, width/2, height/2, tamX, tamY );
      texto("Felicitaciones, acá tenés tu pokemon tipo agua");
      texto_barra("PRESIONÁ LA BARRA ESPACIADORA PARA CONTINUAR", 240);

      salida();
    }

    //    PANTALLA 5    //

    else if (estado== 5) {
      image(pantalla5, width/2, height/2, tamX, tamY );
      texto("Felicitaciones, acá tenés tu pokemon tipo planta");
      texto_barra("PRESIONÁ LA BARRA ESPACIADORA PARA CONTINUAR", 240);
      salida();
    }

    //    PANTALLA 6    //
    else if (estado== 6) {
      image(pantalla6, width/2, height/2, tamX, tamY );

      texto("perfecto, ahora que ya tengo mi pokemon puedo empezar a entrenar");
      texto_barra("PRESIONÁ LA BARRA ESPACIADORA PARA CONTINUAR", 240);

      salida();
    }
    //    PANTALLA 7    //

    else if (estado== 7) {
      image(pantalla7, width/2, height/2, tamX, tamY );
      texto("GARY: Estuve entrenando todo el día y mi pokemon ya subió varios niveles.\nSi en algún momento el tuyo está a la altura te reto a un duelo");
      salida();
    }

    //    PANTALLA 8    // 

    else if (estado== 8) {
      image(pantalla8, width/2, height/2, tamX, tamY );
      texto("GARY: Estuve entrenando todo el día y mi pokemon ya subió varios niveles.\nSi en algún momento el tuyo está a la altura te reto a un duelo");
      texto_barra("PRESIONÁ LA BARRA ESPACIADORA PARA IR A ENTRENAR", 240);
      salida();
    } 

    //     PANTALLA 9    //

    else if (estado== 9) {

      image(pantalla9, width/2, height/2, tamX, tamY );

      image(pj1, -20+vPj, 450, 100, 100);
      vPj++;


      image(grass, 300, 480);
      texto_barra("PRESIONÁ LA BARRA PARA VOLVER A ENTRENAR\n\nPRESIONÁ 'F' PARA IR AL DUELO CONTRA GARY", 240);


      salida();
    }

    //    PANTALLA 10    //

    else if (estado== 10) {
      image(pantalla9, width/2, height/2, tamX, tamY );

      image(pj1, -20+vPj, 450, 100, 100);
      vPj++;


      image(grass, 300, 480);
      texto_barra("PRESIONÁ 'F' PARA IR AL DUELO CONTRA GARY", 240);
      texto("¡Increible!\n¡Mi pokemon subió de nivel!");

      salida();
    }
    //    PANTALLA 11    //

    else if (estado== 11) {
      image(pantalla11, width/2, height/2, tamX, tamY );
      texto("GARY: No creo que tu pokemon esté a la altura\npero será divertido ganarte");
      salida();
    } 
    //    PANTALLA 12  "PELEA"  //

    else if (estado== 12) {
      image(pantalla12, width/2, height/2, tamX, tamY );

      texto_barra("PRESIONÁ LA BARRA ESPACIADORA PARA CONTINUAR", 240);

      salida();
    }

    //    GANAR     //

    else if (estado== 13) {
      image(pantalla13, width/2, height/2, tamX, tamY );
      texto("Gary: Tengo que entrenar más, debería haber ganado");
      texto_barra("PRESIONÁ LA BARRA ESPACIADORA PARA CONTINUAR", 240);
    }    

    //    PERDER    //

    else if (estado== 14) {
      image(pantalla14, width/2, height/2, tamX, tamY );

      texto("Gary: Te dije que no estabas a la altura!");
      texto_barra("PRESIONÁ 'F' PARA IR A LOS CREDITOS", 240);

      salida();
    }

    //    continuará    //

    else if (estado== 15) {
      image(pantalla15, width/2, height/2, tamX, tamY );

      texto("Lourdes:Te felicito! Lo has hecho muy bien, pero deberás entrenar\nmucho más para ganarme a mi");
      texto_barra("PRESIONÁ 'F' PARA IR A LOS CREDITOS", 240);

      salida();
    }

    //    creditos    //
    else if (estado== 16) {
      image(pantalla16, width/2, height/2, tamX, tamY );

      pushStyle();
      textFont(type2);
      fill(255, 0, 0);
      textSize(26);
      text("Creditos", 45, 75);
      textAlign(LEFT, CENTER);
      fill(0);
      textSize(16);
      text("Creado por Walter Custodio\n\nLegajo 81868/4\n\nPara la materia Tecno 1 - COM. 3", 30, posYC);
      posYC = posYC - 0.75;
      if (posYC <= 175) {
        posYC = 350;
      }

      popStyle();
      texto_abajo("Presionar barra espaciadora para reiniciar");
    }
  }



  //    INTERACCION    //


  void teclado() {

    if  ( estado == 0 ) { 
      if ( key == 'f' || key == 'F') {

        salida= true;
      } else if  ( key == ' ' ) {
        estado = 16;
      }
    }

    if (estado == 1) {
      if (( key == ' ')&& (contador1 >= 200)) {

        salida = true;
      }
    } else if ( estado == 2) {
      if (key == ' ') {
        instancia = 2;
      }
      if (key == CODED) {
        if (keyCode == UP) {
          salida = true;
        }
        if (keyCode==LEFT) {
          estado = 4;
          pokemon = 1;
        }
        if (keyCode == RIGHT) {
          estado= 5;
          pokemon = 2;
        }
      }
    } else if (estado == 3) {

      if (key == ' ') {
        estado = 2;
        instancia = 2;
      }
    } else if ( estado == 4 ) { 
      if ( key == ' ' ) {
        estado = 6;
      }
    } else if ( estado == 5 ) { 
      if ( key == ' ' ) {
        salida= true;
      }
    } else if ( estado == 6 ) { 
      if ( key == ' ' ) {
        if (pokemon == 1) {
          estado = 7;
        } else {
          estado = 8;
        }
      }
    } else if ( estado == 7 ) { 
      if ( key == ' ' ) {
        estado = 9;
      }
    } else if ( estado == 8 ) { 
      if ( key == ' ' ) {
        salida= true;
      }
    } else if ( estado == 9) { 
      if ( key == ' ' ) {
        lvl = lvl +2;
        salida= true;
      } else if ( key == 'f' || key == 'F') {
        estado = 11;
      }
    } else if ( estado == 10 ) { 
      if ( key == 'f' || key == 'F') {

        salida= true;
      }
    } else if ( estado == 11 ) { 
      if ( key == ' ' ) {
        salida= true;
      }
    } else if ( estado == 12 ) { 
      if ( key == ' ' ) {
        if (lvl >=1) {
          salida= true;
        } else {
          estado = 14;
        }
      }
    } else if ( estado == 13 ) { 
      if ( key == ' ' ) {
        estado = 15;
      }
    } else if ( estado == 14 ) { 
      if ( key == ' ' ) {
        salida= true;
      }
    } else if (estado == 14 || estado == 15) {
      if ( key == 'f' || key == 'F') {
        estado = 16;

        lvl = 0;
        vPj = 1;
      }
    } else if ( estado == 16 ) { 
      if ( key == 'f' || key == 'F') {

        estado = 0;
        lvl = 0;
        vPj = 1;
      }
    }
  }
  //    animacion siguiente pantalla    //

  void salida() {
    if (salida == true) {

      for (int y = 0; y <= height; y+=25) {
        for (int x = 0; x<= width; x+=25) {
          strokeWeight(lineW);
          line (x, y, x+10, y+ 10);
        }
      }
    }

    if (salida == true) {
      lineW = lineW+0.5;
    }
    if (lineW >= 25) {
      lineW = 0;
      salida= false;  
      contador = 0;
      contador1 = 0;
      estado = estado + 1;
      instancia = 1;
    }
  }

  void texto(String text_) {

    contador++;

    if (contador >=120) {
      pushStyle();

      textAlign(LEFT, CENTER);
      image(dialogo, 300, 500);
      textFont(type1);
      fill(50);
      text(text_, 60, 500);

      popStyle();
    }
  }


  void texto_barra(String text2_, int tiempo_) {

    contador1++;

    if (contador1>= tiempo_) {

      pushStyle();
      textFont(type2);
      fill(255, 0, 0);
      text(text2_, 45, 75);
      textAlign(CENTER, CENTER);
      popStyle();
    }
  }
  void texto_abajo(String text3_) {


    pushStyle();
    textFont(type2);
    fill(255, 0, 0);
    text(text3_, 100, 550);
    textAlign(CENTER, CENTER);
    popStyle();
  }
}
