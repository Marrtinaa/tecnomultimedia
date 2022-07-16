int jigglyx, jigglyy, vel, tiempo, fondox, fondoy;
int maxImg = 12, imageIndex = 0, g = 80, maxImg2 = 32, maxImg3 = 11;
String text, title, play, playagain, tam2, in, win, lose, lose2, credits, cred;
String estado;

PImage [] images = new PImage [maxImg];
PImage [] imagesganar = new PImage [maxImg2];
PImage [] imagesperder = new PImage [maxImg3];
PImage [] imagesfondo = new PImage [maxImg];
PImage jiggly, fondo, jiggly2, obs, credimg;
PFont gameFont, gameFont2;

float tam, x, y, w, h;
float posX = 50, posY = height -g, gravedad = 5, frameCount = 0, pokeballX, pokeballY;

// ---------------- funciones ----------------

void texto( String text, float tam, float x, float y ) {
  fill ( 255 );
  textAlign( CENTER );
  textSize( tam );
  text( text, x, y);
}

void coli(float pokex, float pokey) {

  if ( dist( pokex, pokey, posX, posY + 10 ) < 30 ) {
    estado= "perder";
  }
}

void boton( float x, float y, float w, float h, int r ) {
  fill( 255, 50);
  rect( x, y, w, h, r);
  textFont( gameFont );
}
