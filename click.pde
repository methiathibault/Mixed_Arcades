// ---------------------------------//
//            VARIABLES             //
//----------------------------------//

int score = 0;

//------------------------------------------//
//             SOUS-PROGRAMME               //
//------------------------------------------//

void mousePressed () {   


  if (phase == 1) {
    if (mouseX>=100 && mouseY<=460 && mouseX<=325 && mouseY>=400 && mouseButton == LEFT) {          //Bouton Quitter                                                                     
        exit();
      }
    if (mouseX>=100 && mouseY<=250 && mouseX<=260 && mouseY >=200 && mouseButton == LEFT) {          //Bouton Jouer
        phase = 2;                                                                                      
        interface_1 = loadImage("interface_1.png");
        image(interface_1, 0, 0);
      }
  } else if (phase==2) {
    if (mouseX>= 200 && mouseY>= 180 && mouseX<= 420 && mouseY <= 460 && mouseButton == LEFT) {          //Bouton Blitz Shoot
      phase = 3 ;
      background(0);
    }
  } else if (phase==3) {
    if (dist(mouseX, mouseY, posx, posy) < 35 && time2 >= 0) {          //Permet de positionner les carrés aléatoirement et d'ajouter au score+1 lorsqu'on click dessus
      background(0);
      posx = random(0, 1180);
      posy = random(150, 730);
      score = score + 1;
      textFont(Impact1989, 50);
      fill (255);
      text ("Score:", 1000, 780);
      text(score, 1135, 780);
    }
    if (mouseX>=400 && mouseX<=700 && mouseY>=450 && mouseY<=530 && time2 == 0 && mouseButton == LEFT) {          //Permet de faire fonctionner le bouton Try Again et de réinitialiser toutes les valeurs
      background(0);
      time2 = time;
      score = 0;
      textFont(Impact1989, 50);
      text ("Score:", 1000, 780);
      text(score, 1135, 780);
    }
  }
  if (mouseX >= 95 && mouseY <= 105 && mouseX <= 130 && mouseY >=65 && phase == 2 && mouseButton == LEFT) {          //Revenir au menu 1 quand nous sommes au menu 2(triangle)
    phase = 1;
  }

  if (mouseX >= 95 && mouseY <= 105 && mouseX <= 130 && mouseY >=65 && phase>= 2 && mouseButton == LEFT) {            //Revenir au menu 2 quand nous sommes sur les jeux(triangle)
    phase = 2;
  }


  if (phase == 2) {          //Réinitialise les valeurs quand nous sommes dans le menu 2
    score = 0;
    time2 = time ;
  }
}
