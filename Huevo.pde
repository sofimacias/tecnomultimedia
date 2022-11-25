class Huevo {
  PImage huevito;
  int posXH, posYH, tam;

  Huevo(PImage p_huevito, int px, int py) { //parametros que espera el constructor
    huevito=p_huevito;
    posXH=px;
    posYH=py;
    tam=35;
  } 
  void dibujar() {
    image(huevito, posXH, posYH, tam, tam);
  }
}
