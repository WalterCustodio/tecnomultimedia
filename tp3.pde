// link al video:
//https://www.youtube.com/watch?v=QKWjXBg99kc&ab_channel=walterdm 
//


float angle, bg, spd;
boolean enc = true;



void setup() {
  surface.setResizable(true);

  size(600, 600); 

  noStroke();

  colorMode(HSB, 360, 100, 100);
  bg= 0;
  spd= 1.5;
  // blendMode(REPLACE);
}


void draw() {



  if (!enc) {

    background(0);
  } else {
    background(bg, 60, bg/3);

    bg+= spd;
    if ((bg == 360) || (bg == 0)) {
      spd *= -1;
    }
    float x = width;
    float d =150;

    int num =150;


    float c1 = map(mouseX, 0, width, 0, 360);
    float c2 = map(mouseY, 0, height, 30, 100);

    //prueba
    // translate(mouseX, mouseY);

    translate(width/2, height/2);

    for (float a=0; a<360; a+=45) { 
      rotate(radians(a));
      pushMatrix();
      for (int i=0; i<num; i++) {

        scale(0.95);
        rotate(radians(angle)); 

        pushStyle();
        fill(c1, 50, c2);
        ellipse(x, 0, d, d);
      }
      popStyle();
      popMatrix();

      //segunda linea

      pushMatrix();

      for (int i=0; i<num; i++) {

        scale(0.95);
        rotate(-radians(angle)); 

        pushStyle();
        fill(c1*0.5, c2, 75, c2);



        ellipse(x, 0, d, d);
        //  ellipse(x, 0, d*3, d*3);
      }
      popMatrix();
      popStyle();
    }

    // tercera linea

    angle+=0.05;

    int anillos= 40;

    for (float i= 1; i < anillos; i++) {


      if ( i % 2 == 0.0 ) {
        pushStyle();

        noFill();

        float w = map(i, 1, 40, 60, 0);

        blendMode( SCREEN  );
        float h = height/30;
        strokeWeight(w*0.1);
        stroke(61, 100, 100, w);

        float dd = i*h;

        circle(0, 0, dd);


        // float s = map (mouseX, 0, width, 0.5, 1);

        popStyle();
      } else {
        pushStyle();

        noFill();

        float w = map(i, 1, 40, 60, 0);

        blendMode( DIFFERENCE );
        float h = height/30;
        strokeWeight(w*0.1);
        stroke(200, 100, 100, 75);

        float dd = i*h;

        circle(0, 0, dd);


        float s = map (mouseX, 0, width, 0.5, 1);

        popStyle();
      }
    }
  }
}
void mousePressed() {

  enc = !enc;
}
