void draw() {
   if (pararJuego == true){
  background(255, 125, 20);
   

  switch (juegoEstado) {
    case 'i':
      dibujaInicio();
      break;
    case 'p':
      dibujaJugando();
      break;
    case 'o':
      dibujaGameOver();
      break;
  }
  
  //textSize (20);
  //fill(0);
  //text ("x:" +x+450 , 300,300);
  //text ("y:" +y+500 , 300,350);
  //text ("xmoneda:" + monedaX , 300,400);
  //text ("ymoneda:" + monedaY , 300,450);
}
}
