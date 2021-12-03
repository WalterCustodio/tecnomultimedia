class Oponente {


  PImage img_rival, img_rival_pk_0, img_rival_pk_1, img_rival_pk_2;

  int n_rival;

  float current_hp;
  float current_atk;
  float current_def;

  String pk_rival;

  int pk_posX;
  int pk_posY;


  Oponente (int n_rival_) {


    n_rival = n_rival_;


    if (n_rival_ == 0) {


      pk_rival = "agua";


      current_hp = 30;
      current_atk = 10;
      current_def = 20;

      //
    }
    if (n_rival_ == 1) {


      pk_rival = "fuego";

      current_hp = 20;
      current_atk = 30;
      current_def = 10;

      //
    }
    if (n_rival_ == 2) {


      pk_rival = "planta";

      current_hp = 10;
      current_atk = 20;
      current_def = 30;
    }
  }

  Oponente (int n_rival_, float hp_, float atk_, float def_) {

    n_rival = n_rival_;

    current_hp = hp_;
    current_atk = atk_;
    current_def = def_;
  }

  void display() {

    img_rival = loadImage("rival.png");
    img_rival_pk_0 = loadImage("pk_rival_0.png");
    img_rival_pk_1 = loadImage("pk_rival_1.png");
    img_rival_pk_2 = loadImage("pk_rival_2.png");

    pk_posX = 390;
    pk_posY= 180;



    image(img_rival, 450, 135, 100, 150);

    if (n_rival==0) {

      image(img_rival_pk_0, pk_posX, pk_posY, 85, 85);
    }   
    if (n_rival==1) {

      image(img_rival_pk_1, pk_posX, pk_posY, 85, 85);
    }   
    if (n_rival==2) {

      image(img_rival_pk_2, pk_posX, pk_posY, 85, 85);
    }
  }

  void displayG() {

    img_rival = loadImage("rival.png");
    img_rival_pk_0 = loadImage("pk_rival_0.png");
    img_rival_pk_1 = loadImage("pk_rival_1.png");
    img_rival_pk_2 = loadImage("pk_rival_2.png");

    pk_posX = 215;
    pk_posY= 320;


    image(img_rival, 350, 250, 200, 300);

    if (n_rival==0) {

      image(img_rival_pk_0, pk_posX, pk_posY, 150, 150);
    }
    if (n_rival==1) {

      image(img_rival_pk_1, pk_posX, pk_posY, 120, 150);
    }
    if (n_rival==2) {

      image(img_rival_pk_2, pk_posX, pk_posY, 120, 150);
    }
  }

  void display_pk() {


    pk_posX = 275;
    pk_posY= 310;

    if (n_rival==0) {

      image(img_rival_pk_0, pk_posX, pk_posY, 110, 110);
    }   
    if (n_rival==1) {

      image(img_rival_pk_1, pk_posX, pk_posY, 110, 125);
    }   
    if (n_rival==2) {

      image(img_rival_pk_2, pk_posX, pk_posY, 110, 110);
    }
  }

  boolean perdio () {

    if (current_hp <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
