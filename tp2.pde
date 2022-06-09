//TRABAJO PRACTICO Nº 2
// Link Video: https://youtu.be/zcDGi0V8ZWE
//Comision 3
//Macías, Sofía
//Legajo 81747/5

int cant = 10;
float tam;
int ubic;
boolean clicked = false;
void setup () {
  size (500, 500); 
  ubic = width/cant;
  tam= random (25, ubic);
}

void draw () {

  background (0);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      float distan = dist (mouseX, mouseY, x*ubic+ubic/2, y*ubic+ubic/2);
      tam= map (distan, 0, dist (0, 0, width, height), 35, ubic ); //mide la distancia de 0 a la diagonal mayor
      float tono = map (distan, 0, dist (0, 0, width, height), 350, 15 );

      if (clicked) {
        if ((x+y)%2 == 0) {
          fill (245, 200, 17, tono);
        } else {
          fill (77, 63, 3);
        }
      } else {
        if ((x+y)%2 == 0) {
          fill (77, 63, 3);
        } else {
          fill (245, 200, 17, tono);
        }
      }

      ellipse (x*ubic+ubic/2, y*ubic+ubic/2, tam, tam);
      fill (0);
      rect (0, 0, 500, 50);
      fill(255); 
      textSize(15);
      text("Haz click o presiona una tecla para invertir los colores", 10, 30);
    }
  }
}
void mouseClicked () {
  if (clicked) {
    clicked = false;
  } else {
    clicked = true;
  }
}

void keyPressed() {
  if (clicked) {
    clicked = false;
  } else {
    clicked = true;
  }
}
