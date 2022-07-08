int fondox, fondoy, vel;
PImage fondo, fondoGame, fondoCred, jigglyImg, obim;
PFont gameFont, gameFont2; 
float x, y, w, h, x1, y1, w1, h1;
String title = " JIGGLYRUN ", estado = "inicio", play = "PLAY", cred = " \n Tecnologia Multimedial 1 - Comision 2 \n Profesor: Matias Jauregui Lorda \n Alumnos: \n Camila Ayelen Ferreyra Navarro 88162/5 \n Martina Lihuen Ferrer 85058/3 \n", inst = " \n INSTRUCCIONES \n \n Apretar ESPACIO para saltar. \n Debera esquivar los obstaculos saltando \n para poder ganar. \n De lo contrario GAME OVER \n" ;
ArrayList <Obstaculo> obstaculos = new ArrayList<Obstaculo>();
