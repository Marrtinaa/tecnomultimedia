Jigglypuff jiggly;
ArrayList <Columna> columnas = new ArrayList<Columna>();
PImage fondo;

void setup() {
  size( 800, 450);

  fondo = loadImage("fondo.jpg");
  
  jiggly = new Jigglypuff();
  columnas.add( new Columna());
}

void draw() {
  background(fondo);
  
  for( int i = 0; i < columnas.size(); i++){
    columnas.get(i).move();
  }
    for( int i = 0; i < columnas.size(); i++){
    columnas.get(i).show();
  }
  jiggly.show();
  jiggly.move();
 
  
}

// ------------------- salto del personaje -------------------
void keyPressed() {

  if ( key == ' ' ) {
    jiggly.jump();
  }
}
