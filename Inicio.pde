//nombre clase
class Inicio {
  //propiedades
  PImage imgInicio;
  int posX, posY ;



  //constructor
  Inicio() {
    imgInicio = loadImage("inicio1.jpg"); //imagen inicial 
    posX=width;
    posY=height;
  }
  //funciones o metodos
  void dibujar () { //pantalla de comienzo
    pushStyle();
    image(imgInicio, posX-posX, posY-posY);
    //background(6, 153, 3);
    fill(0);
    textSize(15);
    textAlign(CENTER,CENTER);
    text("Ayuda a la serpiente Delia a encontrar sus huevos que estan a punto de nacer \nPara ayudarla presiona la tecla enter para comenzar", posX/2, posY-400);
    popStyle();
  }
  void arranque() { //
    if (keyCode== ENTER) {
      background(176, 204, 219);  
      juego.estadoJ=0;
    }
  }
}
