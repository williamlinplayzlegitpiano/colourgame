void pause() {

  //Pause Background
  rectMode(CENTER);
  strokeWeight(5);
  fill(#868686);
  stroke(#5D5A5A);
  rect(400, 300, width-150, height-150);

  //Text
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(baby);
  textSize(120);
  text("PAUSE", 400, 125);

  //Map Variables
  float  ResumeDist = dist(mouseX, mouseY, 400, 300);
  float  ResumeDistMin = dist(400, 300, 440, 340);
  float  ResumeDistMax = dist(400, 300, 550, 450);
  float  ResumeGradient = map(ResumeDist, ResumeDistMin, ResumeDistMax, 0, 255);

  //Colour for Resume Circle
  fill(ResumeGradient);

  //Resume Enlargement (Circle)
  float ResumeHeight, ResumeWidth;

  if (dist (mouseX, mouseY, 400, 300) < 60) {
    ResumeHeight = 70;
    ResumeWidth = 70;
  } else {
    ResumeHeight = 60;
    ResumeWidth = 60;
  }

  //Circle
  ellipseMode(RADIUS);
  noStroke();
  ellipse(400, 300, ResumeHeight, ResumeWidth);

  //Colour for Resume Triangle
  fill(255-ResumeGradient);

  //Triangle
  strokeWeight(2);
  stroke(ResumeGradient);

  //Resume Enlargement (Triangle)
  if (dist (mouseX, mouseY, 400, 300) < 60) {
    triangle(375, 270, 375, 330, 435, 300);
  } else {
    triangle(380, 275, 380, 325, 430, 300);
  }
}



void pauseClicks() {
  if (dist (mouseX, mouseY, 400, 300) < 60) mode = GAME;
    
}
