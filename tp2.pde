PImage bg, wand;
PFont bold;
float wandX, wandY, bgX, rotateW, wandSpdX, wandSpdY, wandA, contador, seg;
float opacidad;
void setup() {

  size(400, 400);

  //cargas
  bg = loadImage("bg.png");
  wand = loadImage("wand.png"); 
  bold = loadFont("bold.vlw");
  contador=0;

  //variables 

  wandX = width/2;
  wandY= height/2;
  wandA= 2;
  wandSpdX= 1;
  wandSpdY= 1;
  seg = 60;
  contador = 0;

  bgX = 0;
  
  opacidad=0;
}


void draw() {

  //fondo

  image(bg, bgX, 0);

  //varita

  image(wand, wandX, wandY);
  tint(255, wandA);

  contador++;
  wandA ++;

  wandY = wandY - wandSpdY;
  wandX = wandX + wandSpdX;


  //movimiento varita

  if ((wandX ==300) && (wandY==100)) {
    wandSpdX = 0;
    wandSpdY = 0;
  }



  if ((contador >= 2 * seg)&& (contador <= 14 *seg)) {

    textFont(bold);
    textSize(20);
    text("Directed by", 270, 75);
  }

  if ((contador >= 3 * seg) && (contador < 14 * seg) ) {    

    text("Alfonso Cuaron", 230, 105);
  }

  if ((contador >= 6* seg)&&(contador < 14 * seg)) {


    wandX = 125;
    wandY = 250;
    wandA = 0;
    wandA ++;
  }
  if ((contador >= 4 * seg) && (contador < 14 * seg) ) {    

    text("Produced by", 50, 150);
  }

  if ((contador >= 6 * seg) && (contador < 14 * seg) ) {    

    text("David Heyman\nChris Columbus\nMark Radcliffe", 50, 200);
  }

  if ((contador >= 14 * seg) && (contador <= 25* seg)) {

    bgX = -400;
  }

  if ((contador >= 15 * seg) && (contador <= 28* seg)) {

    text("Music by", 50, 200);
  }
  if ((contador >= 16 * seg) && (contador <= 28* seg)) {

    text("John Williams", 50, 240);
  }

  if ((contador >= 20 * seg) && (contador <= 28* seg)) {

    wandX = 300;
    wandY = 150;

    text("Director of photography", 150, 100);
  }
  if ((contador >= 23 * seg) && (contador <= 28* seg)) {

    text("Michael Seresin", 190, 140);
  }

  //tercera página

  if ((contador >= 28 * seg) && (contador <= 38* seg)) {

    bgX = - 800;
  }
  if ((contador >= 28 * seg) && (contador <= 38* seg)) {

    wandX =250;
    wandY=250;
  }
  if ((contador >= 30 * seg) && (contador <= 40* seg)) {

    text("Credits By", 200, 200);
  }
  if ((contador >= 32 * seg) && (contador <= 40* seg)) {
    text("Walter Custodio", 200, 240);
  }
  if ((contador >= 35 * seg) && (contador <= 40* seg)) {

    wandX=100;
    wandY=100;
    text("Edited by", 50, 50);
  }
  if ((contador >= 35 * seg) && (contador <= 40* seg)) {
    text("Steven Weisberg", 50, 90);
  }
  if (contador >= 40*seg) {

    wandX=200;
    wandY=210;
    text("Mischief managed!", 105,200);
    
  
  }
}
void mousePressed() {

  contador = contador + 30;
}
