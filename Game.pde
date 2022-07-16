void Game() {
  if ( (mouseX > x-149) && (mouseX < x-149 + w+150) && (mouseY > y+178) && (mouseY< y+178 + h) && mousePressed) {
    estado = "reiniciar";
  }
  if (estado.equals("reiniciar")) {
    reiniciar();
  }
  if (estado.equals("creditos")) {
    creditos();
  }
  if (estado.equals("inicio")) {
    inicio();
  }
  if ( (mouseX > x-75) && (mouseX < x-75 + w) && (mouseY > y+128) && (mouseY< y+128 + h) && mousePressed) {
    estado = "jugando";
  }
  if (estado.equals("jugando")) {
    jugando();
    tiempo++;
    println( tiempo );
    println( tiempo / 60 );
    if ( tiempo == 5*60) {
      estado = "ganar";
    }
  }
  if (estado.equals("perder")) {
    perder();
  }
  if (estado.equals("ganar")) {
    ganar();
  }
}
