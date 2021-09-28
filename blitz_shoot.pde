  // ---------------------------------//
  //            VARIABLES             //
  //----------------------------------//

float posx = random(0, 1200);
float posy = random(0, 800);

  //------------------------------------------//
  //             SOUS-PROGRAMME               //
  //------------------------------------------//

void aim() { 
  if (time2 > 0){
  noStroke();
  fill(255);
  rect(posx-25, posy-25, 50, 50);
  }
  else {
    fill(0);
    rect(posx-25, posy-25, 50, 50);
  }
}
