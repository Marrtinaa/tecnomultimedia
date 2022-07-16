void setup() {

  size( 800, 450 );
  frameRate( 22 );

  credimg = loadImage( "cred.png" );
  jiggly = loadImage( "jiggly-jump.png" );
  jiggly2 = loadImage( "jiggly.png" );
  fondo = loadImage( "fondo.jpg" );
  obs = loadImage( "obst.png" );

  text = title = "JIGGLYRUN";
  text = play = "PLAY";
  text = playagain = "PLAY AGAIN";
  text = in = " \n INSTRUCCIONES \n \n Apretar la BARRA ESPACIADORA para saltar. \n Debes esquivar las pokebolas saltando \n para  que jigglypuff no sea atrapado y asi poder ganar. \n De lo contrario GAME OVER \n \n ¡MUCHA SUERTE! :) \n ";
  text = win = "YOU WIN!";
  text = lose = "GAME OVER";
  text = lose2 = "¡oh no! ¡haz perdido, jigglypuff fue atrapado! :( \n \n ¿Deseas jugar una nueva partida? \n";
  text = credits = " \n Tecnologia Multimedial 1 - Comision 2 \n \n Profesor: Matias Jauregui Lorda \n \n Alumnas: \n \n Camila Ayelen Ferreyra Navarro 88162/5 \n \n Martina Lihuen Ferrer 85058/3 \n";
  text = cred = " Para ver los creditos apretar la letra ' c ' ";

  tam = 60;
  x = width/2;
  y = height/2-150;
  w = 140;
  h = 40;
  vel = 6;

  estado = "inicio";
  tiempo = 0;


  for ( int i = 0; i < images.length; i++) {
    images[i] = loadImage( "frame_" + i + ".jpg" );
  }

  for ( int i = 0; i < imagesganar.length; i++) {
    imagesganar[i] = loadImage( "win_" + i + ".jpg" );
  }
  for ( int i = 0; i < imagesperder.length; i++) {
    imagesperder[i] = loadImage( "go_" + i + ".jpg" );
  }
  for ( int i = 0; i < imagesfondo.length; i++) {
    imagesfondo[i] = loadImage( "fondo_" + i + ".jpg" );
  }
}

void draw() {
  Game();
}

void keyPressed() {

  if ( key == ' ' ) {
    jump();
  }
  if ( key == 'c' ) {
    estado = "creditos";
  }
}
