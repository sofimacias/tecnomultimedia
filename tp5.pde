//TP#5 — Avanzando con POO
//Macias, Sofia
//Legajo 81747/5
//Comision 3
//Link: 

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
