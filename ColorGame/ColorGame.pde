int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;


//GIF IMPORT
PImage[] introgif;
int FrameNumber;
int f;


//FONT VARIABLES
PFont baby;
PFont kids;


//GAME TIMER VARIABLES
int tred, tgreen, tblue;
float rx, timerspeed;


//ARRAY VARIABLES
String[] word;
color[] colour;


//COLOUR VARIABLES
color red = #F50000;
color orange = #F59F00;
color yellow = #EDFF03;
color green = #03FF15;
color blue = #0503FF;
color pink = #FF03F3;
int w, cr;


//RANDOM VARIABLE
int IDK;


//SCORE VARIABLES
int score, highscore;


//TIME VARIABLE
int time;
int frametime;


void setup () {
  //PARAMETER SETUP
  size(800, 600);
  mode = INTRO;

  //INTRO LOAD CODE
  FrameNumber = 31;
  introgif  = new PImage[FrameNumber];
  int i = 0;
  f = 0;
  while (i < FrameNumber) {
    introgif[i] = loadImage("IntroGIF/frame_"+i+"_delay-0.04s.gif");
    i = i + 1;
  }

  //GAME TIMER INITIAL VALUES
  rx = 700;
  tred = tgreen = tblue = 0;
  timerspeed = 1.5;

  //FONT LOAD CODE
  baby = createFont("Baby Sparkle.ttf", 200);
  kids = createFont("KidsOnTheMoon.ttf", 200);

  //ARRAY
  word = new String[6];
  colour = new color[6];

  word[0] = "RED";
  colour[0] = red;
  word[1] = "ORANGE";
  colour[1] = orange;
  word[2] = "YELLOW";
  colour[2] = yellow;
  word[3] = "GREEN";
  colour[3] = green;
  word[4] = "BLUE";
  colour[4] = blue;
  word[5] = "PINK";
  colour[5] = pink;

  w = int (random(0, 6));
  cr = int (random(0, 6));

  //RANDOMIZER INITIAL
  IDK = 0;

  //SCORE INITIAL
  highscore = 0;
  score = 0;

  //TIME VARIABLE CUZ CRITERIA :/
  time  = 0;
  frametime = 0;
}

//MODE FRAMEWORK
void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("ERROR: Mode = " + mode);
  }
}
