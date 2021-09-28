  // ---------------------------------//
  //            VARIABLES             //
  //----------------------------------//

PFont Impact1989;       //Importer police d'écriture

  //------------------------------------------//
  //             SOUS-PROGRAMME               //
  //------------------------------------------//

void texte() {
  if (phase < 3) {
    Impact1989 =  createFont ("Impact1989.ttf", 30);                              //Créer la police afin de l'utiliser
    textFont (Impact1989, 70);                                                    //Choisir la police d'écriture
    fill(0);                                                                     //Choisir la couleur noir
    text("MIXED ARCADES", width/2 - textWidth("MIXED ARCADES")/2-5, 120);        //Écrire le texte "MIXED ARCADES"
    fill(255);                                                                   //Choisir la couleur blanche
    text("MIXED ARCADES", width/2 - textWidth("MIXED ARCADES")/2, 120);          //Écrire le texte "MIXED ARCADES" mais décalé du 1er
  }
  if (phase == 1) {
    fill(0);                                                                     //Choisir la couleur noir
    text("JOUER", 95, 250);                                                       //Écrire le texte "JOUER"
    fill(255);                                                                   //Choisir la couleur blanche
    text("JOUER", 100, 250);                                                      //Écrire le texte "JOUER" mais décaler du 1er
    if (mouseX>=100 && mouseY<=250 && mouseX<=260 && mouseY >=200) {             //Permet d'intervertir les couleurs lorsque la souris est sur le mot "JOUER"
      fill(255);
      text("JOUER", 95, 250);
      fill(0);
      text("JOUER", 100, 250);
    }
    fill(0);
    text("QUITTER", 95, 450);
    fill(255);
    text("QUITTER", 100, 450);
    if (mouseX>=100 && mouseY<=460 && mouseX<=325 && mouseY >=400) {              //Permet d'intervertir les couleurs lorsque la souris est sur le mot "QUITTER"
      fill(255);
      text("QUITTER", 95, 450);
      fill(0);
      text("QUITTER", 100, 450);
    }
  } else if (phase==2) {
    textFont (Impact1989, 50);
    fill(0);
    text("Blitz shoot", 200, 510);
    fill(255);
    text("Blitz shoot", 205, 510);
    if (mouseX>= 200 && mouseY>= 180 && mouseX<= 420 && mouseY <= 460) {          //Permet d'intervertir les couleurs lorsque la souris est dans le rectangle au desssus "Blitz Shoot"
      fill(255);
      text("Blitz shoot", 200, 510);
      fill(0);
      text("Blitz shoot", 205, 510);
    }
  } else if (phase == 3) {
    if (time2 == 0) {
      textFont(Impact1989, 80);
      text("Game over", width/2 - textWidth("Game over")/2, 350);          //Mets le texte au milieu de l'écran
      textFont(Impact1989, 50);
      text("Score : " + score, width/2 - textWidth("Score : " + score)/2, 400);          //Mets le texte au milieu de l'écran
      textFont(Impact1989, 70);
      text("Try Again", width/2 - textWidth("Try Again")/2, 530);          //Mets le texte au milieu de l'écran
    }
  }
}
