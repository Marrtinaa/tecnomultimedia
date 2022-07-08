class Jigglypuff {
  
  int g = 80;
  float posX = 50;
  float posY = height - g;
  float gravedad = 1.1;
  int vel = 0;
  Jigglypuff() {
  }

  void jump() {
    if ( posY == height - g ) {
      vel = -30;
    }
  }

  void move() {

    posY += vel;
    vel += gravedad;

    if ( posY > height - g) {
      posY = height - g;
    } else if ( posY < 0 ) {
      posY = 0;
    }
  }


  void show() {

    image(jigglyImg, posX, posY - 10, g, g);
  }
}
