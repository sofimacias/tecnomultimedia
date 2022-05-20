//TP 1 "Animando con código".
//Pelicula: Kill Bill
//Macías Sofía legajo 81747/5
PImage imag1;
PFont titulo;
int KillBill;
float text1;
float text2;
float text3;
float text4;
boolean mov1;
boolean mov2;
boolean mov3;
boolean mov4;

void setup () {

  size (800, 600); 
  imag1 = loadImage ("killbill1.jpg");
  KillBill= 0;
  titulo = loadFont ("Impact-200.vlw");
  textFont(titulo, 200);
  text1= -250;
  text2= -250 ;
  text3= -250;
  text4= -250;
  mov1 = true;
  mov2 = true;
  mov3 = true;
  mov4 = true;
}

void draw () {
  ejecutar();
  println(frameCount);
}

void ejecutar() {
  // PANTALLA 1 ---->  TITULO "KILL BILL"
  background(imag1);
  fill (0);
  textSize (150);
  textAlign (CENTER);
  text ("KILL BILL", 400, 450);

  if (frameCount >= 100) {
    // PANTALLA 2 -----> TEXTO 1 DIRECTOR
    background(255, 197, 37);
    fill (0, 0, 0);
    textSize (75);
    textAlign (CENTER);
    text ("Escrita y Dirigida \n por \n QUENTIN TARANTINO", 400, text1);
    text1= text1 +0.5; // Esta condicion hace que, el texto que viene rapido, se arrelentice cuando llegue a la mitad de la pantalla, y luego siga rapido.
    if (mov1 == true) { 
      text1= text1 +3;
    }
    if (frameCount>225  && frameCount<=365) {
      mov1 = false;
    } else {
      mov1 = true;
    }
    //PANTALLA 3 ----> TEXTO 2 PERSONAJES PRINCIPALES

    if (text1 >= 600) {
      fill (0, 0, 0);
      textSize (35);
      textAlign (CENTER);
      text ("PERSONAJES PRINCIPALES\n\n The Bride UMA THRUMAN\n O-Ren Ishii LUCY LIU\n Elle Driver VIVICA A. FOX\n Bill DAVID CARRADINE\n Budd MICHAEL MADSEN\n Sofie Fatale JULIE DREYFUS\n Gogo Yubari CHIAKI KURIYAMA\n Hattori Hanzo SONNY CHIBA", 400, text2);
      text2=text2 +0.5; // Esta condicion hace que, el texto que viene rapido, se arrelentice cuando llegue a la mitad de la pantalla, y luego siga rapido.
      if (mov2 == true) { 
        text2= text2 +3;
      }
      if (frameCount>550  && frameCount<=665) {
        mov2 = false;
      } else {
        mov2 = true;
      }
    }

    //PANTALLA 4 -----> TEXTO 3 PERSONAJES SECUNDARIOS
    if (text2 >= 560) {
      fill (0, 0, 0);
      textSize (35);
      textAlign (CENTER);
      text ("PERSONAJES SECUNDARIOS\n\n Johnny Mo GORDON LIU\n Earl McGraw MICHAEL PARKS\n Buck MICHAEL BOWER\n Boss Tanaka JUN KUNIMURA\n Propietor YUKI KAZAMATSURI\n Edgar McGraw JAMES PARKS\n Trucker JONATHAN LOUGHRAN", 400, text3);
      text3=text3 +0.5; // Esta condicion hace que, el texto que viene rapido, se arrelentice cuando llegue a la mitad de la pantalla, y luego siga rapido.
      if (mov3 == true) { 
        text3= text3 +3;
      }
      if (frameCount>880  && frameCount<=1000) {
        mov3 = false;
      } else {
        mov3 = true;
      }
    }

    //PANTALLA 5 -----> TEXTO 4 PRODUCCION MUSICAL
    if (text3 >= 540) {
      fill (0, 0, 0);
      textSize (55);
      textAlign (CENTER);
      text ("Produccion musical\n por\n\n RZA", 400, text4);
      text4=text4 +0.5; // Esta condicion hace que, el texto que viene rapido, se arrelentice cuando llegue a la mitad de la pantalla, y luego siga rapido.
      if (mov4 == true) { 
        text4= text4 +3;
      }
      if (frameCount>1280 && frameCount<=1400) {
        mov4 = false;
      } else {
        mov4 = true;
      }
    }
  }
} 
