class Columna {

  int r, x, y;
  float speed;
  Columna() {
    r = 50;
    x = width;
    y = height - 20 - r;
    speed = 4;
  }

  void move() {
    x -= speed;
  }

  void show() {

    rect(x, y, r, r);
  }
}
