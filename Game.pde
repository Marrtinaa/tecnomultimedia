void Game() {

  if (estado.equals("inicio")) {
  }

  moveBg();
  jiggly.move();
  jiggly.show();
  moveObs();
}

void moveBg() {

  // ------------------- movimiento de fondo ------------------- 
  image( fondo, fondox, fondoy );
  image( fondo, fondox+fondo.width, fondoy ); // el segundo parametro me sirve para alargar la foto hasta el ancho de la pantalla
  fondox = fondox - vel;

  if ( fondox < -fondo.width ) {
    fondox = 0;  // en algún momento la imagen se va a terminar, así que este if me ayuda a restaurar a 0 la posición de la imagen
  }
}
