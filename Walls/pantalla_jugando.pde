//////////////////////////////////////////////////Jugando//////////////////////////////////////////////////////////////
void dibujaJugando() {
  fondo();
  puntajes();
  moneda();
  x = x + Vx;
  y = y + Vy;
 cubito(x, y); 

  Vy = Vy + Ay;
  Vx = Vx + Ax;
  
  //////////////////////////////////////////////Duplicado de picos/////////////////////////////////////////////////////

  y_picos_derecha = y_picos_derecha + Vy_picos_derecha;
  for (int i = 0; i < 100; i++) {
    picos_derecha(y_picos_derecha + i * 400);
  }

  y_picos_izquierda = y_picos_izquierda - Vy_picos_izquierda;
  for (int i = 0; i < 100; i++) {
    picos_izquierda(y_picos_izquierda + i * 400);
  }

  for (int x = 0; x < 15; x++) {
    picos(x * 50);
  }

  for (int x = 0; x < 15; x++) {
    picos_abajo(x * 50);
  }
  
  ///////////////////////////////////////////////////Moneda//////////////////////////////////////////////////////////////////

  if (dist(450 + x, 625 + y, monedaX, monedaY) < 2 * radioMoneda) {
     //pararJuego = false;
    puntaje++;
    respawnMoneda();
  }

 ////////////////////////////////////////////Limites///////////////////////////////////////////////////////////
  if (x < -350) { //izquierda
    x = -350;
    Vx = -1;
    Ax = 0;
  }
  if (x > 350) { //derecha
    x = 350;
    Vx = 1;
    Ax = 0;
  }
  }
