// ---------------------------------//
//            VARIABLES             //
//----------------------------------//

int compteur = 1 ;
PImage[] images = new PImage[29];       //Importer une image pour le GIF

//------------------------------------------//
//             SOUS-PROGRAMME               //
//------------------------------------------//


void gif() {
  for (int i=1; i<29; i++) {        //boucle pour faire bouger le invaders
    images[i] = loadImage("invaders_" + i + ".png");
  }  
  image( images[compteur], 700, 150);          //Coordonnées de la boucle de l'invaders
  compteur++;
  if (compteur >= 29) compteur = 1 ;           //Pour recommencer la boucle à son début
}
