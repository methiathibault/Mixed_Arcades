   //-----------------------------------//                                
   //            LIBRAIRIE              //
   //-----------------------------------//

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;

  // ---------------------------------//
  //            VARIABLES             //
  //----------------------------------//
  
int phase = 1;      //Variables pour passer d'un menu à l'autre

  //------------------------------------------//
  //                                          //
  //            PROGRAMME PRINCIPAL           //
  //                                          //
  //------------------------------------------//
  
void setup() {          //Paramétrer la fenêtre
  minim = new Minim(this);
  size(1200, 800);          //Taille de la fenêtre
  frameRate(30);          //Nombre d'image par seconde

  }

void draw() {
  if (phase == 1) {      //Menu Principal                                      
    afficher(); 
    gif();
    texte();
  } 
  if (phase == 2) {     //Sélection des jeux
    afficher();         //afficher les images
    texte();
    forme();            //afficher les formes (rectangles et triangle)
  }
  if (phase == 3) {     //Blitz Shoot
    aim();              // afficher carré blanc n'importe où
    forme();            // afficher le triangle blanc pour revenir au menu d'avant
    temps();            // afficher le timer
    texte();
  }
  if (phase == 4) {    //Pictionary
    forme();
  }
}


void stop() {
  minim.stop();
  super.stop();
}
