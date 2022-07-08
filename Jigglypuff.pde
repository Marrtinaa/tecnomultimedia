class Jigglypuff {
  
  int ground = 70;
  float posX = 50;
  float posY = height - ground;
  float gravedad = 1.5;
  int vel = 0;
  Jigglypuff() {
  }

  void jump() {
    if ( posY == height - ground) {
      vel = -25;
    }
  }

  void move() {

    posY += vel;
    vel += gravedad;

    if ( posY > height - ground) {
      posY = height - ground;
    } else if ( posY < 0 ) {
      posY = 0;
    }
  }


  void show() {

    rect(posX, posY, 50, 50);
  }
}
