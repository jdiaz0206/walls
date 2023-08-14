///////////////////////////////////////////Set up/////////////////////////////////////////////////////////////
void setup() {
  size(900, 1000);
  textAlign(CENTER, CENTER);
  portada = loadImage("portada.jpg");
  Gameover = loadImage("gameOver.jpeg");
  Vy_picos_derecha = -2;
  Vy_picos_izquierda = 2;
  respawnMoneda();
}
