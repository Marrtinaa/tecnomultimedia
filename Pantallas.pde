// ---------------- PANTALLA CREDITOS ----------------
void creditos() {
  image( credimg, width/2, height/2 );
  textFont( gameFont2 );
  texto( credits, tam/4, x, y-50 );
  boton( x-149, y+178, w+150, h, 200 );
  texto( playagain, tam/2, x, y+210 );
}
// ---------------- PANTALLA INICIO ----------------

void inicio() {

  // -------- fondo inicio --------

  imageMode(CENTER);
  image( images[imageIndex], width/2, height/2 );
  imageIndex = ( imageIndex+1 )%images.length;

  // -------- titulo / play / instrucciones  --------

  gameFont = loadFont( "gametipo.vlw" );
  gameFont2 = loadFont( "intipo.vlw" );

  boton(x-75, y+128, w, h, 200);
  texto( title, tam, x, y );
  texto( play, tam/2, x, y+160 );

  textFont( gameFont2 );
  texto( in, tam/6, x, y+250 );

  // -------- jiggly inicio (mov) --------

  jiggly.resize( 100, 100 );
  image( jiggly, jigglyx+jiggly.width, 150 );
  jigglyx = jigglyx + vel;

  if ( jigglyx >= + jiggly.width+425 ) {    
    jigglyx = 0;
  }
}

// ---------------- PANTALLA JUEGO ----------------

void jugando() {
  
  imageMode(CENTER);
  image( imagesfondo[imageIndex], width/2, height/2 );
  imageIndex = ( imageIndex+1 )%imagesfondo.length;
  jigglypuff();
  obst();
}

// -------- JIGGLY PERSONAJE + SALTO / POS --------

void jigglypuff() {

  pos();
  image(jiggly2, posX, posY + 10, g, g);
}

void jump () {
  if ( posY == height - g +10) {
    vel = -35;
  }
}
void pos() {

  posY += vel;
  vel += gravedad;

  if ( posY > height - g +10 ) {
    posY = height - g + 10;
  }
}

// -------- POKEBOLAS --------

void obst() {

  frameCount = pokeballX +=3;
  pokeballY = height - g +35;

  for ( int e = 800; e < 6000; e +=300) {
    image(obs, e-pokeballX*5, pokeballY, g-30, g-30);
    coli(e-pokeballX*5, pokeballY);
  }
}

// ---------------- PANTALLA GANAR ----------------

void ganar() {

  image( imagesganar[imageIndex], width/2, height/2 );
  imageIndex = ( imageIndex+1 )%imagesganar.length;

  textFont( gameFont );
  texto( win, tam, x, y*3);

  boton( x-149, y+178, w+150, h, 200 );
  texto( playagain, tam/2, x, y+210 );
  textFont( gameFont2 );
  texto( cred, tam/6, x, y+300 );
}
// ---------------- PANTALLA PERDER ----------------

void perder() {

  image( imagesperder[imageIndex], width/2, height/2 );
  imageIndex = ( imageIndex+1 )%imagesperder.length;

  textFont( gameFont2 );
  texto( lose, tam, x, y*2);
  texto( lose2, tam/5, x, y+110 );
  texto( cred, tam/6, x, y+300 );

  boton( x-149, y+178, w+150, h, 200 );
  texto( playagain, tam/2, x, y+210 );
}



void reiniciar() {

  estado = "inicio";
  frameCount = 0;
  vel = 6;
  frameRate(25);
}
