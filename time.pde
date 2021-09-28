  // ---------------------------------//
  //            VARIABLES             //
  //----------------------------------//

int  time = 30;          //Valeur du temps de base (Pour les paramètres)
int time2 = time;        //Prends la valeur de time
int Tempstart = millis();

  //------------------------------------------//
  //             SOUS-PROGRAMME               //
  //------------------------------------------//

void temps() {
  forme();
  fill(0);
  stroke(0);
  rect(540, 0, 620, 60);
  fill(255);
  text (time2, 550, 50);


  if (score >= 1 && millis() > Tempstart + 1000 && time2 > 0 ) {          //Permet de faire le décompte
    time2 = time2-1;          //Enlève 1 seconde au timer
    Tempstart = millis();          //Remet Tempstart à sa valeur de départ
  }
}
