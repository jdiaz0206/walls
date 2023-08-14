////////////////////////////////////////////////////Keypressed//////////////////////////////////////////////////////////////////

void keyPressed() {
  if (juegoEstado == 'i' && key == 'p') {
    juegoEstado = 'p';
  } else if (juegoEstado == 'o' && key == 'r') {
    juegoEstado = 'i';
    pararJuego = true;
    x = 0.0;
    y = 0.0;
    puntaje = 0;
    Vy = 0.0;
    Vx = 0.0;
    Ax = 0.0;
    y_picos_derecha = 0;
    y_picos_izquierda = 0;
    respawnMoneda();
  }
switch (key) {
    case 'd':
      Vy = -4;
      Ay = 0.20;
      Vx = 4;
      Ax = -0.05;
      break;
    case 'a':
      Vy = -4;
      Ay = 0.20;
      Vx = -4;
      Ax = -0.05;
      break;
  }
}
