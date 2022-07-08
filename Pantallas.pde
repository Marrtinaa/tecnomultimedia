void inicio() {

  textAlign(CENTER);
  gameFont = loadFont( "gametipo.vlw" );
  gameFont2 = loadFont( "intipo.vlw" );
  fondoGame.resize(800, 450);
  image( fondoGame, 0, 0 );

  textFont( gameFont );
  textSize( 50 );
  fill( 152, 100, 211 );
  text( title, width/2, 100);
  boton1();
  textFont( gameFont2 );
  textSize( 14 );
  fill( 121, 43, 211 );
  text( inst, width/2, 285);
}

void boton1() {

  smooth();
  strokeWeight(50);
  strokeJoin(ROUND);
  stroke(175, 135, 242);
  rect( x, y, w, h );
  textFont( gameFont );
  textSize( 30 );
  fill( 255 );
  text( play, width/2, 225);
}

void creditos() {

  textAlign(CENTER);
  gameFont = loadFont( "gametipo.vlw" );
  gameFont2 = loadFont( "intipo.vlw" );
  fondoCred.resize(800, 450);
  image( fondoCred, 0, 0 );
  textFont( gameFont );
  textSize( 26 );
  fill( 203, 68, 174 );
  text( cred, width/2, 150);
}
