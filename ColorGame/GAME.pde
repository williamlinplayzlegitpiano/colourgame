void game() {
  //TRUE OR FALSE BOXES
  rectMode(CORNERS);
  fill(0);
  rect(0, 0, 400, 600);
  fill(255);
  rect(400, 0, 800, 600);

  //TRUE OR FALSE TEXT
  textFont(baby);
  textAlign(CENTER);
  textSize(80);
  fill(255);
  text("TRUE", 200, 120);
  fill(0);
  text("FALSE", 600, 120);

  //PAUSE BUTTON
  if (dist(mouseX, mouseY, 740, 60) < 35) {
    fill(90);
    stroke(90);
    circle(740, 60, 80);
  } else {
    fill(0);
    circle(740, 60, 70);
  }

  //PAUSE TEXT
  textSize(20);
  text("PAUSE", 740, 120);
  stroke(255);
  strokeWeight(8);
  line(725, 45, 725, 75);
  line(755, 45, 755, 75);

  //TIMER BAR
  //COLOUR CHANGER
  if (rx <= 225) {
    tred = 255;
    tgreen = tblue = 0;
  } else if (rx <= 375) {
    tred = tgreen = 255;
    tblue = 0;
  } else if (rx <= 500) {
    tgreen = 255;
    tred = tblue = 0;
  } else {
    tred = tgreen = tblue = 100;
  }

  fill(tred, tgreen, tblue);
  noStroke();
  rect(100, 510, rx, 540);

  ellipseMode(CENTER);
  fill(tred, tgreen, tblue);
  ellipse(100, 525, 30, 30);
  ellipse(rx, 525, 30, 30);

  textFont(kids);
  textAlign(CENTER);
  fill(colour[cr]);
  textSize(100);
  text(word[w], 400, 300);


  if (rx <= 100) {
    mode = GAMEOVER;
  } else {
    rx = rx - timerspeed;
  }

  //50/50 RANDOMIZER
  IDK = IDK + 1;

  //SCORE BOX
  rectMode(CORNERS);
  fill(0);
  noStroke();
  rect(670, 550, 800, 600);

  //SCORE TEXT
  textAlign(CENTER);
  fill(255);
  textFont(kids);
  textSize(30);
  text("SCORE: " + score, 735, 575);

  //TIMER BOX
  rectMode(CORNERS);
  fill(255);
  noStroke();
  rect(0, 0, 150, 50);

  //TIMER TEXT
  textAlign(CENTER);
  fill(0);
  textFont(kids);
  textSize(30);

  //TIMER INCREASE CODE
  frametime++;

  if (frametime % 60 == 0 ) {
    time++;
  } else {
  }

  if (time < 10 && time != 0) {
    text("TIMER: 0" + time + "s", 70, 25);
  } else {
    text("TIMER: " + time + "s", 70, 25);
  }
}



void gameClicks() {

  if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 600) {
    //TRUE OR FALSE CONDITION
    if (w == cr) {
      rx = 700;
      score++;
      time  = 0;
      frametime = 0;
      tred = tgreen = tblue = 0;
      if (timerspeed <= 15) {
        timerspeed = timerspeed + 0.3;
      } else {
        timerspeed = 15;
      }
      if (IDK%2 != 0) {
        w = int (random(0, 6));
        cr = int (random(0, 6));
      } else {
        w = int (random(0, 6));
        cr = w;
      }
    } else {
      mode = GAMEOVER;
    }
  }
  //PAUSE BUTTON HERE SO THAT IF YOU PRESS THE BUTTON U WONT ACCIDENTALLY TRIGGER THE "FALSE" OPTION
  if (dist(mouseX, mouseY, 740, 60) < 35) {
    mode = PAUSE;
  } else {
    if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
      if (w != cr) {
        rx = 700;
        score++;
        time  = 0;
        frametime = 0;
        tred = tgreen = tblue = 0;
        if (timerspeed <= 15) {
          timerspeed = timerspeed + 0.3;
        } else {
          timerspeed = 15;
        }
        if (IDK%2 != 0) {
          w = int (random(0, 6));
          cr = int (random(0, 6));
        } else {
          w = int (random(0, 6));
          cr = w;
        }
      } else {
        mode = GAMEOVER;
      }
    }
  }
}
