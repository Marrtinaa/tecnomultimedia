Jigglypuff jiggly;

void setup() {

  size( 800, 450);

  obim = loadImage( "obstaculo.png" );
  fondo = loadImage( "fondo.jpg" );
  fondoGame = loadImage( "fondo2.jpg" );
  fondoCred = loadImage( "fondo3.jpg" );
  jigglyImg = loadImage( "jiggly.png" );

  vel = 3;
  x = 310;
  y = 200;
  w = 180;
  h = 20;


  jiggly = new Jigglypuff();
  obstaculos.add( new Obstaculo() ); // agrego una nueva columna
}

void draw() {

  Game();
}

// ------------------- salto del personaje -------------------

void keyPressed() {

  if ( key == ' ' ) {
    jiggly.jump();
  }
}
