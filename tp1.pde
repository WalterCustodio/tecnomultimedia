float c;

void setup() {
  size(400, 400);
  c=200;
}

void draw() {


  background(175);

  //circulo fondo//

  strokeWeight(4);
  fill(254, 253, 233);
  circle(c, c, 360);
  strokeWeight(1);
  //triangulos//

  //  amarillo  //

  fill(248, 223, 100);
  triangle(269, 55, 130, 55, c, c);

  //  naranja  //

  fill(253, 153, 36);
  triangle(357, 164, 269, 55, c, c);

  //  rojo  //

  fill(243, 70, 70);
  triangle(324, 300, 357, 164, c, c);

  //  Rosa  //

  fill(217, 141, 205);
  triangle(200, 360, 324, 300, c, c);

  //  Violeta  //

  fill(118, 84, 168);
  triangle(75, 300, 200, 360, c, c);

  //  Azul  //

  fill(24, 112, 159);
  triangle(45, 165, 75, 300, c, c);

  //  Verde  //

  fill(88, 174, 107);
  triangle(130, 55, 45, 165, c, c);

  //  circulo centro  //
  
  strokeWeight(2);
  fill(254, 253, 233);
  circle(c, c, 100);
}
