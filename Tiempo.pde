class Tiempo {
  int posXT, posYT, segundos, estado;


  Tiempo() {
    posXT    = 400;
    posYT    = 20;
    segundos = 900;
    estado   = 0;
  }
  void dibujar() {
    fill(255, 0, 0);
    textSize(20);
    text("Tiempo:", posXT, posYT);
    text(segundos, posXT+80, posYT);
  }
  void contadortiempo() { //Contador de tiempo 

    if (segundos!=0) {              //segundos si es distinto a 0 
      segundos=segundos-1;
    } else if (segundos==0) {
      juego.estadoJ=3;
    }
  }
}
