class Cronopio {
  int posXJ, posYJ, tam, X, Y;
  PImage imgCronopio;

//Constructor
  Cronopio() {
    imgCronopio = loadImage("huevo_004.png");

    posXJ = width; 
    posYJ = height; 
    tam   = 25;

    X=posXJ/2;
    Y=posYJ-tam;
  }
//funciones 
  void dibujar() {
    image( imgCronopio, X, Y, tam, tam);
  }
  void SeMueve() {
    if (keyCode==LEFT) {
      X=X-25;
    } else if (keyCode==RIGHT) {
      X=X+25;
    }
    if (keyCode==UP) {
      Y=Y-25;
    } else if (keyCode==DOWN) {
      Y=Y+25;
    }
  }
  void limites() {
    if (X==(0)) {
      X=X+tam;
    }
    if (X==775) {
      X=X-tam;
    }
    if (Y==(0)) {
      Y=Y+25;
    }
    if (Y==(575)) {
      Y=Y-25;
    }
  }
}
