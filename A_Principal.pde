class Juego {

  // ------LÓGICA DE ESTADOS

  String estado;
  String PK;

  int n_oponente;

  float resultadoHp, resultadoDef, resultadoAtk;

  float resultadoHp_R, resultadoDef_R, resultadoAtk_R;

  int memoria;

  int contador;

  float vidaInicial;

  float ataqueRival;

  String mensaje;

  int bonus;


  Texto texto;

  Boton start, start2, restart, elegirWater, elegirFire, elegirPlant, op1, op2;

  Boton ataque, reduc_def, reduc_atq, retirarse;

  Fondos[] bg = new Fondos[16];

  BarraVida barraDeVidaRival;
  BarraVida barraDeVidaPj;

  Oponente oponente;
  Oponente oponente2;

  Pj pj;
  Pj pj2;

  Vfx vfx_pj;
  Vfx vfx_rival;
  Vfx entrenamiento;


  Juego() {

    estado = "inicio";

    for (int i = 0; i < bg.length; i++) {
      bg[i] = new Fondos(i);
    }
    texto = new Texto();

    contador = 0;

    bonus = 0;



    start = new Boton("JUGAR", 300, 250, 220, 100);
    start2 = new Boton("CREDITOS", 300, 400, 190, 100);
    op1 = new Boton("DUELO", 300, 250, 220, 100);
    op2 = new Boton("ENTRENAR", 300, 400, 190, 100);
    restart = new Boton("REINICIAR", 300, 500, 220, 80);


    elegirWater = new Boton("water", 300, 120, 150, 150);
    elegirFire = new Boton("fire", 135, 310, 150, 150);
    elegirPlant = new Boton("plant", 445, 310, 150, 150);

    PK = "agua";

    n_oponente = 0;


    reduc_atq = new Boton("reducir ataque rival", 150, 530, 275, 60);
    reduc_def = new Boton("reducir defensa rival", 450, 450, 275, 60);
    retirarse = new Boton("retirarse", 450, 530, 275, 60);

    vfx_pj = new Vfx();
    entrenamiento = new Vfx();
    vfx_rival = new Vfx();


    //
  }


  void display() {


    //  necesito que estos objetos estén en el draw  //

    ataque = new Boton(("Ataque de "+PK), 150, 450, 275, 60);

    oponente2 = oponente;

    pj2 = pj;


    //-----INICIO 

    if (estado.equals("inicio")) {

      bg[0].display();
      start.jugar();
      start2.creditos();
    }
    if (estado.equals("pueblo")) {

      bg[1].display();
      texto.dialogo("¡No puedo creer que me quedé dormido!\n¡Tengo que ir al laboratorio del profesor ahora mismo!");
      texto.continuar();
    }
    if (estado.equals("laboratorio")) {

      bg[2].display();
      texto.dialogo("profesor, queda algún pokemón para mí?");
      texto.continuar();
    }
    if (estado.equals("laboratorio")) {

      bg[3].display();
      texto.dialogo("PROFESOR: llegaste muy tarde pero sí, me quedan estos 3");

      texto.continuar();
    }

    //-----ELEGIR PK

    else if (estado.equals("elegir")) {

      bg[3].display();

      elegirWater.pk();
      elegirFire.pk();
      elegirPlant.pk();

      texto.dialogo("Elegí a tu (not)pokemon");

      //
    }



    //-----ELEGISTE WATER

    else if (estado.equals("elegiste agua")) {

      bg[4].display();

      PK = "agua";

      pj = new Pj (PK, 30, 10, 20);

      texto.dialogo("Felicitaciones, elegiste a este PK ");

      barraDeVidaPj = new BarraVida(30);

      texto.continuar();

      //
    }
    //-----ELEGISTE FIRE

    else if (estado.equals("elegiste fuego")) {
      bg[5].display();

      PK = "fuego";

      pj = new Pj (PK, 20, 30, 10);

      texto.dialogo("Felicitaciones, elegiste a este PK "); //  

      barraDeVidaPj = new BarraVida(20);

      texto.continuar();
    }

    //-----ELEGISTE PLANT

    else if (estado.equals("elegiste planta")) {
      bg[6].display();


      texto.dialogo("Lo lamento, se llevaron el último de estos hace unas horas");

      texto.continuar();
    }

    //-----TU OPONENTE SERÁ

    else if (estado.equals("oponente")) {

      bg[7].display();

      texto.dialogo("GARY: Estuve entrenando todo el día y mi pokemon ya subió varios niveles.\nSi en algún momento el tuyo está a la altura te reto a un duelo");

      if (n_oponente==0) {

        oponente = new Oponente(n_oponente, 30, 10, 20);

        barraDeVidaRival = new BarraVida(30);
        oponente.displayG();
      }

      if (n_oponente==1) {

        oponente = new Oponente(n_oponente, 20, 30, 10);

        barraDeVidaRival = new BarraVida(20);
        oponente.displayG();
      }
      if  (n_oponente==2) {

        oponente = new Oponente(n_oponente, 10, 20, 30);

        barraDeVidaRival = new BarraVida(10);
        oponente.displayG();
      }

      texto.continuar();

      //
    } else if (estado.equals("montaña opciones")) {

      bg[8].display();

      op1.jugar();
      op2.creditos();



      //
    } else if (estado.equals("entrenar")) {

      bg[9].display();

      entrenamiento.entrenando();

      texto.continuar();
    } else if (estado.equals("felicitaciones")) {

      bg[10].display();

      texto.dialogo("felicitaciones, tu PK subió de nivel!");

      bonus = bonus +1;
      
      texto.continuar();
    }
    // INICIO PELEA


    else if (estado.equals("pelea opciones")) {

      bg[11].display();

      pj.display();

      texto.contenedor();

      oponente = new Oponente(n_oponente, oponente2.current_hp, oponente2.current_atk, oponente2.current_def);                         ///////////////check


      ataque.ataque();
      reduc_atq.ataque();
      reduc_def.ataque();
      retirarse.ataque();

      oponente.display();

      barraDeVidaRival.display(oponente2.current_hp, 320, 100);

      barraDeVidaPj.display(pj2.current_hp, 275, 295);
    }

    //-----TU ATAQUE HIZO...

    else if (estado.equals("tu ataque")) {


      bg[12].display();
      oponente.display();

      vfx_pj.ataquePj(PK);

      pj.display();


      texto.dialogo("tu ataque debilitó a tu rival");

      texto.continuar();

      if (memoria == 1) {

        resultadoHp = ((oponente.current_hp)-((pj.current_atk + bonus)/(oponente.current_def/4 ))) ;

        oponente = new Oponente(n_oponente, resultadoHp, oponente2.current_atk, oponente2.current_def);



        memoria = 0;
      }

      if (memoria == 2) {

        resultadoDef = ((oponente.current_def)/1.5);

        oponente = new Oponente(n_oponente, oponente2.current_hp, oponente2.current_atk, resultadoDef);



        memoria= 0;
      }

      if (memoria==3) {

        resultadoDef = ((oponente.current_atk)/1.5);

        oponente = new Oponente(n_oponente, oponente2.current_hp, resultadoAtk, oponente2.current_atk);

        memoria = 0;
      }

      barraDeVidaRival.display(oponente2.current_hp, 320, 100);

      barraDeVidaPj.display(pj2.current_hp, 275, 295);
    }

    //-----TU ENEMIGO HIZO...

    else if (estado.equals("tu enemigo hizo")) {

      bg[13].display();
      oponente.display();
      vfx_rival.ataqueRival(n_oponente);


      if (ataqueRival == 1) {

        resultadoHp_R = ((pj.current_hp+bonus)-((oponente.current_atk)/(pj.current_def/4 ))) ;

        pj = new Pj(PK, resultadoHp_R, pj2.current_atk+bonus, pj2.current_def+bonus);

        ataqueRival = 0;
      }
      if (ataqueRival == 2) {

        resultadoDef_R = ((pj.current_def)/1.5);

        pj = new Pj(PK, pj2.current_hp+bonus, pj2.current_atk+bonus, resultadoDef_R);

        ataqueRival = 0;
      }

      if (ataqueRival == 3) {

        resultadoAtk_R = ((pj.current_atk+bonus)/1.5);

        pj = new Pj(PK, pj2.current_hp+bonus, resultadoAtk_R, pj2.current_def+bonus);

        ataqueRival = 0;
      }

      pj.display();
      texto.continuar();

      barraDeVidaRival.display(oponente2.current_hp, 320, 100);

      barraDeVidaPj.display(pj2.current_hp, 275, 295);

      texto.dialogo("Tu enemigo te debilitó "+mensaje);
    } 

    //-----GANASTE

    else if (estado.equals("ganaste")) {
      bg[14].display();
      pj.display_pk();
      texto.dialogo("Siempre supe que ganaríamos");
    } 

    //-----PERDISTE

    else if (estado.equals("perdiste")) {
      bg[15].display();
      oponente.display_pk();
      texto.dialogo("Nunca tuviste chance de ganarme. Deberías entrenar más");
      texto.continuar();
    } else if (estado.equals("creditos")) {

      bg[16].display();

      fill(255, 0, 0);
      textSize(26);
      text("Creditos", 45, 75);
      textAlign(LEFT, CENTER);
      fill(0);
      textSize(16);
      text("Creado por Walter Custodio\n\nLegajo 81868/4\n\nPara la materia Tecno 1 - COM. 3", 100, 150);

      restart.jugar();
    }
  }


  void click() {                                                                                                                                                                //click

    if (estado.equals("inicio")) {
      if (start.mouseOver()) {
        cambiarEstado("pueblo");
      }
      //
      if (start2.mouseOver()) {
        cambiarEstado("creditos");
      }
    } 
    //
    else if (estado.equals("elegir")) {
      if ( elegirWater.mouseOver()) {
        cambiarEstado("elegiste agua");

        //
      }

      //
      else if ( elegirFire.mouseOver()) {
        cambiarEstado("elegiste fuego");

        //
      }
      //
      else if ( elegirPlant.mouseOver()) {
        cambiarEstado("elegiste planta");
        //
      }
    }
    //
    else if (estado.equals("montaña opciones")) {

      if (op1.mouseOver()) {

        cambiarEstado("pelea opciones");
      } else if (op2.mouseOver()) {
        cambiarEstado("entrenar");
      }
    }

    //
    else if (estado.equals("pelea opciones")) {
      if (ataque.mouseOver()) {

        memoria = 1;

        cambiarEstado("tu ataque");

        //
      } else if (reduc_def.mouseOver()) {

        memoria = 2;

        cambiarEstado("tu ataque");


        //
      } else if (reduc_atq.mouseOver()) {


        memoria = 3;

        cambiarEstado("tu ataque");

        //
      } else if (retirarse.mouseOver()) {

        cambiarEstado("creditos");
      }
    }
    //
    else if (estado.equals("creditos")) {
      if (restart.mouseOver()) {
        cambiarEstado("inicio");
      }
    }
  }


  void cambiarEstado( String nuevoEstado_  ) {
    estado = nuevoEstado_;
  }


  void teclado() {                                                                                                                                                 //teclado

    if  (estado.equals("pueblo")) {

      contador++;

      if (contador>2) {
        if  ( key == ' ' ) { 
          contador = 0;
          cambiarEstado("laboratorio");
        }
      }
    }

    if  (estado.equals("laboratorio")) {
      contador++;
      if (contador>2) {
        if  ( key == ' ' ) { 

          contador = 0;
          cambiarEstado("laboratorio2");
        }
      }
    }

    if (estado.equals("laboratorio2")) {
      contador++;
      if (contador > 3) {
        if  ( key == ' ' ) {
          cambiarEstado("elegir");
        }
      }
    }

    if (estado.equals("elegiste fuego")) {
      contador++;

      if (contador>2) {

        if  ( key == ' ' ) {

          contador = 0;

          n_oponente = int(random(0, 2));

          cambiarEstado("oponente");
        }
      }
    }

    if (estado.equals("elegiste agua")) {
      contador++;

      if (contador>2) {

        if  ( key == ' ' ) {

          contador = 0;

          n_oponente = int(random(0, 2));

          cambiarEstado("oponente");
        }
      }
    }
    if (estado.equals("elegiste planta")) {
      contador++;

      if (contador>2) {

        if  ( key == ' ' ) {

          contador = 0;

          n_oponente = int(random(0, 2));

          cambiarEstado("elegir");
        }
      }
    }
    if (estado.equals("oponente")) {

      contador++;

      if (contador>2) {
        if  ( key == ' ' ) {


          contador = 0;
          cambiarEstado("montaña opciones");
        }
      }
    }
    if (estado.equals("entrenar")) {

      contador++;

      if (contador > 3) {
        if  ( key == ' ' ) {
          contador = 0;
          cambiarEstado ("felicitaciones");
        }
      }
    }
    if (estado.equals("felicitaciones")) {
      contador++;
      if (contador > 3) {
        if  ( key == ' ' ) {
          contador = 0;
          cambiarEstado ("montaña opciones");
        }
      }
    }
    if (estado.equals("tu ataque")) {

      contador++;

      if (contador>1) {
        if  ( key == ' ' ) {
          if (oponente.perdio()) {

            cambiarEstado("ganaste");
            contador = 0;
          } else {

            cambiarEstado("tu enemigo hizo");
            contador = 0;
            ataqueRival =  int(random (1, 3));

            if (ataqueRival == 1) {
              mensaje = " ";
            } else if (ataqueRival == 2) {
              mensaje = "la defensa";
            } else if (ataqueRival == 3) {
              mensaje = "el ataque";
            }
          }
        }
      }
    } 
    if (estado.equals("tu enemigo hizo")) {
      contador++;
      if (contador>1) {
        if  ( key == ' ' ) {
          if (pj.perdio()) {

            cambiarEstado("perdiste");
            contador = 0;
          } else {

            cambiarEstado("pelea opciones");
            contador = 0;
          }
        }
      }
    }
    if (estado.equals("ganaste")) {
      contador++;
      if (contador>2) {
        if  ( key == ' ' ) {
          cambiarEstado("creditos");
          contador = 0;
        }
      }
    }
    if (estado.equals("perdiste")) {
      contador++;
      if (contador>2) {
        if  ( key == ' ' ) {
          cambiarEstado("creditos");
          contador = 0;
        }
      }
    }
  }
}
