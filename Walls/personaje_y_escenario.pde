///////////////////////////////////////////////////////////Personaje////////////////////////////////////////////////////////

void cubito(float x, float y) {
  if (key == 'd') { //derecha
    Vx = 10;
    fill(170, 68, 101);
    rect(425 + x, 600 + y, 50, 50);
    fill(255, 166, 158);
    circle(445 + x, 615 + y, 15);
    circle(465 + x, 615 + y, 15);
    rect(435 + x, 630 + y, 30, 10);
  } else if (key == 'a') { //izquierda
    Vx = -10;
    fill(170, 68, 101);
    rect(425 + x, 600 + y, 50, 50);
    fill(255, 166, 158);
    circle(435 + x, 615 + y, 15);
    circle(455 + x, 615 + y, 15);
    rect(435 + x, 630 + y, 30, 10);
  } else { //quieto
    Vx = 0;
    fill(170, 68, 101);
    rect(425 + x, 600 + y, 50, 50);
    fill(255, 166, 158);
    circle(440 + x, 615 + y, 15);
    circle(460 + x, 615 + y, 15);
    rect(435 + x, 630 + y, 30, 10);
  }
  
    // Coloca las coordenadas del cubo
    xCubo = 425 + x;
    yCubo = 600 + y;
    wCubo = 50;
    hCubo = 50;
}

/////////////////////////////////////////////////////Fondo////////////////////////////////////////////////////////////

void fondo() {
   fill(123, 241, 168);
  rect(0, 0, 1000, 1000);
  fill(193, 251, 164);
  rect(0, 0, 75, 1000);
  rect(825, 0, 100, 1000);
}

/////////////////////////////////////////////////////Moneda////////////////////////////////////////////////////////////

void moneda() {
  fill(239, 184, 16);
  circle(monedaX, monedaY, 45);
  fill(168, 123, 5);
  circle(monedaX, monedaY, 30);
  fill(255, 255, 32);
  circle(monedaX-3, monedaY-4, 15);
}

/////////////////////////////////////////////////////Puntaje////////////////////////////////////////////////////////////

void puntajes() {
 fill(93, 219, 141);
  textSize(450);
  text(puntaje, 450, 400);
}

/////////////////////////////////////////////////////Picos////////////////////////////////////////////////////////////

void picos(float x) {
  fill(144, 241, 239);
  triangle(75 + x, 0, 125 + x, 0, 100 + x, 50);
  if (yCubo < 50) {
     juegoEstado = 'o';
    // pararJuego = false;  // Para el juego
   }
}

void picos_derecha(float y) {
   fill(144, 241, 239);
   triangle(75, 0 + y, 75, 50 + y, 125, 25 + y);
   // Colisión 
   float xp = 125;
   float yp = 25 + y;
   boolean choque = true;
   if (xp < xCubo) {
     choque = false;
   } else {
     if (yp < yCubo) {
       choque = false;
     } else {
       if (yp > yCubo + hCubo) {
         choque = false;
       } else {
         choque = true;
       }
     }
   }
   if (choque == true) {
     juegoEstado = 'o';
     //pararJuego = false;  // Para el juego
   }
}

void picos_izquierda(float y) {
  fill(144, 241, 239);
  triangle(825, 0 + y, 825, 50 + y, 775, 25 + y);
   // Colisión 
   float xp = 775;
   float yp = 25 + y;
   boolean choque = true;
   if (xCubo + wCubo < xp) {
     choque = false;
   } else {
     if (yp < yCubo) {
       choque = false;
     } else {
       if (yp > yCubo + hCubo) {
         choque = false;
       } else {
         choque = true;
       }
     }
   }
   if (choque == true) {
     juegoEstado = 'o';
    // pararJuego = false;  // Para el juego
   }
}

void picos_abajo(float x) {
  fill(144, 241, 239);
  triangle(75 + x, 1000, 125 + x, 1000, 100 + x, 950);
  if (yCubo > 900) {
     juegoEstado = 'o';
    // pararJuego = false;  // Para el juego
   }
}

/////////////////////////////////////////////////////respawnMoneda////////////////////////////////////////////////////////////

void respawnMoneda() {
  monedaX = random(150, width-150);
  monedaY = random(150, height - 150);
}
