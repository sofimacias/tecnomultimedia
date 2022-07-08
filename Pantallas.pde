//Pantalla de inicio
void Pantalla0(){
   background(0);
   image(cara, 300, 300, 75, 75);
   fill(255);
   textSize(20);
   text("Para empezar, elige una categoria", 300, 200);
   textSize(16);
   
   String[] categorias = { "MATEMATICAS", "HISTORIA", "TV", "GEOGRAFIA" };  //defino arreglos para cada tipo de datos
   int[] pantallas = { 6, 2, 14, 10 };
   Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
   
   for (int i = 0; i < 4; i++) {         //al ser todos los arreglos de tamaño igual 4 podemos recorrerlo utilizando el mismo indice
     botones[i].Agr_Tex(categorias[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
   }
}

//Pantalla de perdiste
void Pantalla1(){
  background(255, 0, 0);
  image(carasad, 300, 300, 75, 75);
  textSize(40);
  fill(255);
  text("Perdiste...", 300, 200);
  Bot_Per.Mostrar();
}

//Historia
//Primera pregunta
void Pantalla2(){
  background(0);
  textSize(20);
  fill(255);
  text("En que año fue la Revolución Francesa?", 300, 200);
  
  String[] opciones = { "1780", "1804", "1789", "1848" };
  Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
  int[] pantallas = { 1, 1, 3, 1 };
  
  for (int i = 0; i < 4; i++) {
     botones[i].Agr_Tex(opciones[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
   }
}
//Historia   Segunda pregunta
void Pantalla3(){
  background(0);

    fill(255);
    textSize(20);
    text("Cual fue el primer metal que el hombre empleó?", 300, 200);
    
    String[] opciones = { "PLATA", "TITANIO", "ORO", "COBRE" };
    Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
    int[] pantallas = { 1, 1, 1, 18 };
    
    for (int i = 0; i < 4; i++) {
       botones[i].Agr_Tex(opciones[i]);
       botones[i].Agr_Pan(pantallas[i]);
       botones[i].Mostrar();
     }
}

//Matematica
//Primera pregunta
void Pantalla6(){
  background(0);
  fill(255);
  textSize(20);
  text("6*9-(15/3)*0", 300, 200);
  
  String[] opciones = { "54", "3", "0", "49" };
  Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
  int[] pantallas = { 7, 1, 1, 1 };
  
  for (int i = 0; i < 4; i++) {
     botones[i].Agr_Tex(opciones[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
   }
}

//Matematica   segunda pregunta
void Pantalla7(){
  background(0);
  fill(255);
  textSize(20);
  text("Hay meses que tienen 30 dias y otros 31 dias. ", 300, 200);
  text("Cuantos meses tienen 28 dias?", 300,230);
  
  String[] opciones = { "1", "12", "2", "0" };
  Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
  int[] pantallas = { 1, 18, 1, 1 };
  
  for (int i = 0; i < 4; i++) {
     botones[i].Agr_Tex(opciones[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
   }
}

//Geografia
//primera pregunta
void Pantalla10(){
  background(0);
  fill(255);
  textSize(20);
  text("Cual es el rio mas largo del mundo?", 300, 200);
  
  String[] opciones = { "RIO AMARILLO", "NILO", "AMAZONAS", "YANGSTE" };
  Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
  int[] pantallas = { 1, 1, 11, 1 };
  
  for (int i = 0; i < 4; i++) {
     botones[i].Agr_Tex(opciones[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
   }
}

//Geografia   segunda pregunta
void Pantalla11(){
  background(0);
  fill(255);
  textSize(20);
  text("¿Cuál océano se encuentra en la", 300, 200);
  text("costa este de los Estados Unidos?", 300,230);
  
  String[] opciones = { "PACIFICO", "INDICO", "ESTE", "ATLANTICO" };
  Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
  int[] pantallas = { 1, 1, 1, 18 };
  
  for (int i = 0; i < 4; i++) {
     botones[i].Agr_Tex(opciones[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
  }
}

//TV
//primera pregunta
void Pantalla14(){
  background(0);
  fill(255);
  textSize(20);
  text("¿Que personaje de Friends se casa con Monica?", 300, 200);
  
  String[] opciones = { "JOEY", "ROSS", "RICHARD", "CHANDLER" };
  Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
  int[] pantallas = { 1, 1, 1, 15 };
  
  for (int i = 0; i < 4; i++) {
     botones[i].Agr_Tex(opciones[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
  }
}

//TV    Segunda pregunta
void Pantalla15(){
  background(0);
  fill(255);
  textSize(20);
  text("¿A que casa pertenece Harry Potter?", 300, 200);
  
  String[] opciones = { "Ravenclaw", "GRYFFINDOR", "SLYTHERIN", "HUFFLEPUFF" };
  Boton[] botones = { Bot_Roj, Bot_Azu, Bot_Ama, Bot_Ver };
  int[] pantallas = { 1, 18, 1, 1 };
  
  for (int i = 0; i < 4; i++) {
     botones[i].Agr_Tex(opciones[i]);
     botones[i].Agr_Pan(pantallas[i]);
     botones[i].Mostrar();
  }
}

//Pantalla de victoria
void Pantalla18(){
  background(0, 255, 0);
  image(cara, 300, 300, 75, 75);
  textSize(40);
  fill(255);
  text("GANASTE!!!", 300, 200);
  Bot_Per.Mostrar();
}
