  // ---------------------------------//
  //            VARIABLES             //
  //----------------------------------//

PImage interface_1;     //Impoter une image
PImage Pistolet;        //Importer une image
PImage Crayon;          //Importer une image

  //------------------------------------------//
  //             SOUS-PROGRAMME               //
  //------------------------------------------//

void afficher() {
  interface_1 = loadImage("interface_1.png");      //Charger l'image                              
  image(interface_1, 0, 0);                        // Coordonnée de l'image
  
  if (phase == 2) {
    Pistolet = loadImage("Pistolet.png");          //Charger l'image
    image(Pistolet, 230, 180);
  }
}
