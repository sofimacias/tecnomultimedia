class FinalC {
  int posXF, posYF;
PImage imgfinal, imgperder;

  FinalC() {
    posXF=width;
    posYF=height;
    imgfinal = loadImage("fin.jpg");
    imgperder= loadImage("perder1.jpg");
  }
  //Funcion para perder y para ganar
  void TeQuemaste() {
    pushStyle();
    image(imgperder,posXF-posXF,posYF-posYF);
    //background(220, 165, 5); 
    fill(0);
    textAlign(CENTER, CENTER);
    text("¡Se termino el tiempo!\nPresiona R para reintentarlo", posXF/2, posYF/2);
    popStyle();
  }
  void Victoria() {
    pushStyle();
   // background(243, 255, 0);
   image(imgfinal,posXF-posXF,posYF-posYF);
    fill(0);
    textAlign(CENTER, CENTER);
    text("¡Lograste cocinar el huevo!\nPresiona R para volver a jugar", posXF/2, posYF/2);
    popStyle();
  }
}
