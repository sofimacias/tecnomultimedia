//Declaracion del objeto
class Boton {
  float Pos_X;
  float Pos_Y;
  float Tam_X;
  float Tam_Y;
  color Color1;
  color Color2;
  color Color;
  String Texto;
  int Pant;

  //Inicializacion de objeto
  Boton(float X, float Y, color col1, color col2) {
    Pos_X=X;
    Pos_Y=Y;
    Tam_X=100;
    Tam_Y=50;
    Color=col1;
    Color1=col1;
    Color2=col2;
    Texto="";  //lo modifico utilizando la funcion que se encuentra abajo
    Pant=1;    //lo modifico utilizando la funcion que se encuentra abajo
  }
  //Funciones propias de la clase objeto
  //Cambia el texto contenido dentro del objeto
  void Agr_Tex(String Text) {
    Texto=Text;
  }

  //Modifica el numero de la pantalla
  void Agr_Pan(int Pan) {
    Pant=Pan;
  }

  // Imprime los botones en pantalla
  void Mostrar() {
    fill(Color);
    rect(Pos_X, Pos_Y, Tam_X, Tam_Y);
    fill(0);
    textSize(16);
    text(Texto, Pos_X, Pos_Y);
  }

  //Cambia el color del boton cuando el mouse pasa por arriba
  void Mouse_Encima() {
    if ((mouseX>=Pos_X-Tam_X/2 && mouseX<=Pos_X+Tam_X/2)&&(mouseY>=Pos_Y-Tam_Y/2 && mouseY<=Pos_Y+Tam_Y/2)) {
      Color=Color2;
    } else {
      Color=Color1;
    }
  }

  //Te lleva a la pantalla indicada en la variable Pant
  void Mouse_Clickea() {
    if ((mouseX>=Pos_X-Tam_X/2 && mouseX<=Pos_X+Tam_X/2)&&(mouseY>=Pos_Y-Tam_Y/2 && mouseY<=Pos_Y+Tam_Y/2)) {
      pantalla=Pant;
    }
  }
}
