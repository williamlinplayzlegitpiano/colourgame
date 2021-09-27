void gameover() {
  //HIGHSCORE CODE
  if (score > highscore) {
    highscore = score;
  }
  //SCORE TEXT
  background(0);
  fill(255, 0, 0);
  textAlign(CENTER);
  textFont(baby);
  textSize(80);
  text("GAME OVER!", 400, 150);
  textFont(kids);
  textSize(40);
  text("SCORE: " + score, 400, 200);
  text("HIGHSCORE: " + highscore, 400, 250);

  //PLAY AGAIN BUTTON
  rectMode(CENTER);
  strokeWeight(2);
  stroke(240, 0, 240);
  fill(255, 0, 255, 200);
  int x, y, w, h;
  x = 400;
  y = 340;
  if (mouseX > 300 && mouseX < 500 && mouseY > 290 && mouseY < 390) {
    w = 220;
    h = 110;
  } else {
    w = 200;
    h = 100;
  }
  rect(x, y, w, h);

  //PLAY AGAIN TEXT
  fill(255, 0, 255, 230);

  if (mouseX > 300 && mouseX < 500 && mouseY > 290 && mouseY < 390) {
    textSize(45);
  } else {
    textSize(40);
  }
  text("Play Again", 400, 345);
}


void gameoverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 290 && mouseY < 390) {
    mode = INTRO;
    //RESET CODE
    score = 0;
    IDK = 0;
    red = green = blue = 0;
    timerspeed = 1.5;
    time = 0;
    frametime = 0;
  }
}
