/* //<>//
link video: https://youtu.be/uXvcTqTA-G0
 
 FACULTAD DE ARTES - UNIVERSIDAD NACIONAL DE LA PLATA.
 TECNOLOGÍA MULTIMEDIA 1 - COMISIÓN 3
 ALUMNO: WALTER CUSTODIO - LEGAJO 81868/4.
 
 */

Juego juego;


void setup() {

  size (600, 600);
  juego = new Juego();
  frameRate(24);
}

void draw() {
  juego.display();

}
void mousePressed() {
  juego.click();
}

void keyPressed() {

  juego.teclado();
}
