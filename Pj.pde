class Pj {


  PImage pj_back, fire_back, water_back, plant_back;

  PImage fire, water, plant;

  String pk_pj;

  float current_hp;
  float current_atk;
  float current_def;

  int pk_posX;
  int pk_posY;



  Pj(String pk_pj_) {

    pj_back = loadImage("pj_back.gif");
    water_back = loadImage("water_back.gif");
    fire_back = loadImage("fire_back.gif");
    plant_back = loadImage("plant_back.gif");


    pk_pj = pk_pj_;
    pk_posX = 225;
    pk_posY= 275;



    if (pk_pj.equals("agua")) {

      current_hp  = 30; 
      current_atk = 10;
      current_def = 20;
    }
    if (pk_pj.equals("fuego")) {

      current_hp  = 20; 
      current_atk = 30;
      current_def = 10;
    }
    if (pk_pj.equals("planta")) {

      current_hp  = 10; 
      current_atk = 20;
      current_def = 30;
    }
  }

  Pj (String pk_pj_, float hp_, float atk_, float def_) {

    pj_back = loadImage("pj_back.gif");
    water_back = loadImage("water_back.gif");
    fire_back = loadImage("fire_back.gif");
    plant_back = loadImage("plant_back.gif");

    pk_pj = pk_pj_;
    pk_posX = 225;
    pk_posY= 275;

    current_hp = hp_;
    current_atk = atk_;
    current_def = def_;
  }


  boolean perdio () {

    if (current_hp <= 0) {
      return true;
    } else {
      return false;
    }
  }

  void display() {



    if (pk_pj.equals("agua")) {

      image(water_back, pk_posX, pk_posY, 110, 110);
    }   
    if (pk_pj.equals("fuego")) {

      image(fire_back, pk_posX, pk_posY, 110, 125);
    }   
    if (pk_pj.equals("planta")) {

      image(plant_back, pk_posX, pk_posY, 110, 110);
    }
    image(pj_back, 130, 300, 100, 150);
  }

  void display_pk() {


    water= loadImage("pk_water.png");
    fire= loadImage("pk_fire.png");
    plant= loadImage("pk_plant.png");

    pk_posX = 275;
    pk_posY= 310;

    if (pk_pj.equals("agua")) {

      image(water, pk_posX, pk_posY, 110, 110);
    }   
    if (pk_pj.equals("fuego")) {

      image(fire, pk_posX, pk_posY, 110, 125);
    }   
    if (pk_pj.equals("planta")) {

      image(plant, pk_posX, pk_posY, 110, 110);
    }
  }
}
