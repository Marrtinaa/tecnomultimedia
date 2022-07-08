class Obstaculo {

  int r, x, y;
  float speed;
  Obstaculo() {
    r = 70;
    x = width;
    y = height - 35 - r;
    speed = 6.5;
  }

  void move() {
    x -= speed;
  }

  void show() {

    image(obim, x, y, r, r);
  }
}

void moveObs() {

  // ------------------- movimiento de tronquitos -------------------

  for ( int i = 0; i < obstaculos.size(); i++) {
    obstaculos.get(i).move();
  }
  for ( int i = 0; i < obstaculos.size(); i++) {
    obstaculos.get(i).show();
  }

  // ------------------- nuevas columnas en un random -------------------

  if ( random(1.5) < 0.009) {
    obstaculos.add( new Obstaculo());
  }
}
