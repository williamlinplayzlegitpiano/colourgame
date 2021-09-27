void intro() {
  background(0);

  //GIF
  image(introgif[f], 70, 0, width/1.2, height);
  f = f + 1;
  if (f == FrameNumber) f = 0;

  //TITLE TEXT
  textAlign(CENTER, CENTER);
  fill(255, 0, 255);
  textFont(baby);
  textSize(100);
  text("Colour Game", 400, 155);

  //START BUTTON
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

  //START BUTTON TEXT
  fill(255, 0, 255, 230);
  textFont(kids);
  if (mouseX > 300 && mouseX < 500 && mouseY > 290 && mouseY < 390) {
    textSize(65);
  } else {
    textSize(60);
  }
  text("Play", 400, 335);

  //SCORE RESET
  score = 0;
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 290 && mouseY < 390) {
    mode = GAME;
    rx = 700;
  }
}
