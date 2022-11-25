Juego juego; //llamar a la clase con su constructor
void setup() {
  size(800, 600);
  juego = new Juego(); //objeto 
}
void draw() {
  juego.dibujar(); //La funcion que llama al evento
}
void keyPressed() {
  juego.teclaPresionada();
}
