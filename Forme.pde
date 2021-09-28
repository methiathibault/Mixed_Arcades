  //------------------------------------------//
  //             SOUS-PROGRAMME               //
  //------------------------------------------//

void forme() {
  noStroke();
  fill(0);
  triangle(95, 85, 130, 65, 130, 105);
  fill(255);
  triangle(100, 85, 127, 70, 127, 100);
  if (mouseX >= 95 && mouseY <= 105 && mouseX <= 130 && mouseY >=65) {          //Inversé les couleurs du triangle lorsque la souris est dessus
    noStroke();
    fill(255);
    triangle(95, 85, 130, 65, 130, 105);
    fill(0);
    triangle(100, 85, 127, 70, 127, 100);
  }
  if (phase == 2) {
    noFill();
    strokeWeight(10);
    stroke(0);
    rect(200, 180, 220, 280);
    strokeWeight(5);
    stroke(255);
    rect(200, 180, 220, 280);
    if (mouseX>= 200 && mouseY>= 180 && mouseX<= 420 && mouseY <= 460 && phase==2) {          //Inversé les couleurs du rectangle lorsque la souris est dessus
      noFill();
      strokeWeight(10);
      stroke(0);
      rect(200, 180, 220, 280);
      strokeWeight(5);
      stroke(255, 0, 0);
      rect(200, 180, 220, 280);
    }
  }
}
