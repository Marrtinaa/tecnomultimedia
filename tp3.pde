Jigglypuff jiggly;
int fondox, fondoy, vel;
ArrayList <Columna> columnas = new ArrayList<Columna>();
PImage fondo, jigglyImg, colmImg;

void setup() {
  size( 800, 450);

  fondo = loadImage("fondo.jpg");
  jigglyImg = loadImage("jiggly.png");
  colmImg = loadImage("1.png");
  vel = 3;

  jiggly = new Jigglypuff();
  columnas.add( new Columna());
}

void draw() {

  image( fondo, fondox, fondoy );
  image( fondo, fondox+fondo.width, fondoy ); // el segundo parametro me sirve para alargar la foto hasta el ancho de la pantalla
  fondox = fondox - vel;

  if ( fondox < -fondo.width ) {
    fondox = 0;  // en algún momento la imagen se va a terminar, así que este if me ayuda a restaurar a 0 la posición de la imagen
  }
  jiggly.show();
  jiggly.move();  

  // ------------------- movimiento de columnas -------------------
  for ( int i = 0; i < columnas.size(); i++) {
    columnas.get(i).move();
  }
  for ( int i = 0; i < columnas.size(); i++) {
    columnas.get(i).show();
  }

  // ------------------- nuevas columnas -------------------
  if ( random(2) < 0.005 ) {
    columnas.add( new Columna());
  }
}

// ------------------- salto del personaje -------------------
void keyPressed() {

  if ( key == ' ' ) {
    jiggly.jump();
  }
}
