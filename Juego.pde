class Juego {
  int posX, posY, tam;
  int estadoJ=-1; //-1 pantalla previa,0 inicio, 1 pierde , 2 gana
  int estadoH0, estadoH1, estadoH2, estadoH3, estadoH4, estadoH5, estadoH6, estadoH7, estadoH8, estadoH9;//Estados para activar o no los materiales//
  PImage huevito;

  Inicio inicio;

  Cronopio cronopio;
  Escenario escenario;
  Huevo huevo, huevo1, huevo2, huevo3, huevo4, huevo5, huevo6, huevo7, huevo8, huevo9; //array
  Huevo [] Huevo = new Huevo [10];
  Tiempo tiempo;
  FinalC finalC;

  Juego() { 
    huevito = loadImage("huevos.png"); //cargamos la imagen dentro del constructor


    estadoH0=1; //dividimos en estados para que desaparezcan
    estadoH1=1;
    estadoH2=1;
    estadoH3=1;
    estadoH4=1;
    estadoH5=1;
    estadoH6=1;
    estadoH7=1;
    estadoH8=1; 
    estadoH9=1;

    inicio = new Inicio();
    cronopio= new Cronopio();
    escenario = new Escenario();
    for (int i=0; i<10; i++) { 
      Huevo[i]= new Huevo(huevito, width, height);
    }
    Huevo[0]=huevo =new Huevo(huevito, 100, 200);
    Huevo[1]=huevo1 = new Huevo(huevito, 50, 500);
    Huevo[2]=huevo2 = new Huevo(huevito, 400, 50);
    Huevo[3]=huevo3 = new Huevo(huevito, 200, 50);
    Huevo[4]=huevo4 = new Huevo(huevito, 400, 500);
    Huevo[5]=huevo5 = new Huevo(huevito, 200, 400);
    Huevo[6]=huevo6 = new Huevo(huevito, 650, 400);
    Huevo[7]=huevo7 = new Huevo(huevito, 600, 200);
    Huevo[8]=huevo8 = new Huevo(huevito, 600, 50 );
    Huevo[9]=huevo9 = new Huevo(huevito, 350, 300);
    tiempo= new Tiempo();
    finalC= new FinalC();
  }

  void dibujar() {

    if (estadoJ==-1) { //pantalla de inicio
      inicio.dibujar();
    }
    if (estadoJ==0) { //si el estado es 0 se ejecuta los eventos del juego
      escenario.dibujar();
      cronopio.dibujar();
      HuevosPorEstado();
      tiempo.dibujar();
      tiempo.contadortiempo();
    }
    if (estadoJ==2) { //ganaste
      finalC.Victoria();
    }
    if (estadoJ==3) { //perdiste
      finalC.TeQuemaste();
    }
  }
  void teclaPresionada() {//todas funciones de las teclas
    inicio.arranque ();
    cronopio.SeMueve();
    cronopio.limites();
    Ganar();
    reset();
  }
  void reset() {
     //Pone todo en forma de inicio
    if (juego.estadoJ==2||juego.estadoJ==3) {
      if (key=='r') {
        background(255);
        juego.estadoJ=-1;
        tiempo.estado=0; 
        tiempo.segundos=900;
        cronopio.X=400;
        cronopio.Y=550;  
        estadoH0=1;
        estadoH1=1;
        estadoH2=1;
        estadoH3=1;
        estadoH4=1;
        estadoH5=1;
        estadoH6=1;
        estadoH7=1;
        estadoH8=1;
        estadoH9=1;
      }
    }
  }


  void HuevosPorEstado() { //desaparecen los huevos
    //estado0
    if ((cronopio.X==100)&&(cronopio.Y==200)) {
      estadoH0=0;
    }
    if (estadoH0==1) { 
      huevo.dibujar();
    }//estado1
    if ((cronopio.X==50)&&(cronopio.Y==500)) {
      estadoH1=0;
    }
    if (estadoH1==1) { 
      huevo1.dibujar();
    }//estado2
    if ((cronopio.X==400)&&(cronopio.Y==50)) {
      estadoH2=0;
    }
    if (estadoH2==1) { 
      huevo2.dibujar();
    }//estado3
    if ((cronopio.X==200)&&(cronopio.Y==50)) {
      estadoH3=0;
    }
    if (estadoH3==1) { 
      huevo3.dibujar();
    }//estado4
    if ((cronopio.X==400)&&(cronopio.Y==500)) {
      estadoH4=0;
    }
    if (estadoH4==1) { 
      huevo4.dibujar();
    }//estado5
    if ((cronopio.X==200)&&(cronopio.Y==400)) {
      estadoH5=0;
    }
    if (estadoH5==1) { 
      huevo5.dibujar();
    }//estado6
    if ((cronopio.X==650)&&(cronopio.Y==400)) {
      estadoH6=0;
    }
    if (estadoH6==1) { 
      huevo6.dibujar();
    }//estado7
    if ((cronopio.X==600)&&(cronopio.Y==200)) {
      estadoH7=0;
    }
    if (estadoH7==1) { 
      huevo7.dibujar();
    }//estado8
    if ((cronopio.X==600)&&(cronopio.Y==50)) {
      estadoH8=0;
    }
    if (estadoH8==1) { 
      huevo8.dibujar();
    }//estado9
    if ((cronopio.X==350)&&(cronopio.Y==300)) {
      estadoH9=0;
    }
    if (estadoH9==1) { 
      huevo9.dibujar();
    }
  }
  void Ganar() {
    if ((estadoH0==0)&&(estadoH1==0)&&(estadoH2==0)&&(estadoH3==0)&&(estadoH4==0)&&(estadoH5==0)&&(estadoH6==0)&&(estadoH7==0)&&(estadoH8==0)&&(estadoH9==0)&&(tiempo.segundos>0)) {
      estadoJ=2;
    }
  }
}
