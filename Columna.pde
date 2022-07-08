class Columna {

  int r, x, y;
  float speed;
  Columna() {
    r = 130;
    x = width;
    y = height - 5 - r;
    speed = 3.5 ;
  }

  void move() {
    x -= speed;
  }

  void show() {

    image(colmImg, x, y, r, r);
  }
}
