//TP#3 - Juego interactivo libre
//Sofia Macias
//Legajo 81747/5
//Comision 3
//link video: https://youtu.be/aO3xa723S9A
int pantalla=0;
PImage cara;
PImage carasad;
PFont font;
Boton Bot_Roj;
Boton Bot_Ver;
Boton Bot_Azu;
Boton Bot_Ama;
Boton Bot_Per;
void setup(){
  size (600, 600);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  noStroke();
  cara= loadImage("carafeliz.png");
  carasad= loadImage("caratriste.png");
  font=loadFont("Consolas-32.vlw");
  textFont(font);
  
  //Inicializo cada uno de los objetos con su respectiva posicion y colores
  Bot_Roj = new Boton(75,300,#FF0011,#FFAFB4);
  Bot_Ver = new Boton(525,300,#1ABC06,#A9F0A0);
  Bot_Ama = new Boton(300,550,#FEFF03,#FFFFB4);
  Bot_Azu = new Boton(300,50,#55BCFF,#C1E7FF);
  Bot_Per = new Boton(300,500,#757590,#C7C7EA);
  Bot_Per.Agr_Tex("VOLVER A EMPEZAR");
  Bot_Per.Agr_Pan(0);
}

void draw(){
  if (pantalla==0){
    Pantalla0();
  }else if (pantalla==1){
    Pantalla1();
  }else if (pantalla==2){
    Pantalla2();
  }else if (pantalla==3){
    Pantalla3();
  }else if (pantalla==6){
    Pantalla6();
  }else if (pantalla==7){
    Pantalla7();
  }else if (pantalla==10){
    Pantalla10();
  }else if (pantalla==11){
    Pantalla11();
  }else if (pantalla==14){
    Pantalla14();
  }else if (pantalla==15){
    Pantalla15();
  }else if (pantalla==18){
    Pantalla18();
  }
}
//se llama la funcion 'Mouse_Encima' de la clase boton
void mouseMoved(){
  Bot_Roj.Mouse_Encima();
  Bot_Azu.Mouse_Encima();
  Bot_Ama.Mouse_Encima();
  Bot_Ver.Mouse_Encima();
  Bot_Per.Mouse_Encima();
}

//se llama la funcion 'Mouse_Clickea' de la clase boton
void mousePressed(){
  if (pantalla==18 || pantalla==1) {Bot_Per.Mouse_Clickea();
  }else{
  Bot_Roj.Mouse_Clickea();
  Bot_Azu.Mouse_Clickea();
  Bot_Ama.Mouse_Clickea();
  Bot_Ver.Mouse_Clickea();
  }
}
