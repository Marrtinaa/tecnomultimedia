 void inicio() {
    gameFont = loadFont( "gametipo.vlw" );
    image(fondoGame, 400, 200);
    textFont( gameFont );
    textSize( 25 );
    fill( 0 );
    text( title, width/2, height/2 );
  }
