class Escenario {
  int posXE, posYE, tamE;
PImage imgescenario;

  Escenario() {
   imgescenario = loadImage("fondo.jpg");
    posXE=width;
    posYE=height;
    tamE=5;
  }
  void dibujar () { 
    image(imgescenario, posXE-posXE, posYE-posYE);
   //background(6, 153, 3);  
   fill(32, 110, 53);
    //marco del juego
    rect( (posXE), (posYE), tamE, posYE) ;
    rect( (posXE), (posYE-25), posXE, tamE)    ;           
    rect( (posXE-25), (posYE), tamE, posYE) ;
    rect( (posXE), (posYE-posYE), posXE, tamE );
  }
}
