final int intro    = 1;
final int playing  = 2;
final int paused   = 3;
final int gameover = 4;
final int death = 5;
final int start = 6;
int mode; 

float ax,bx,cx;
float ay,by,cy;
float px,py,pdy;
float sy;

int count;
int seconds;
int bestscore = 0;

color treecolor, groundcolor;
color pink, lightgreen, darkgreen, red,orange, white;

PImage pig,backgroundPig, soul, cryingPig, pig2;

PImage cloud; 
PImage season;
PImage spring, summer, fall, winter;
PImage pauseButton;


void setup() {
  size(800, 800, FX2D);
  mode = intro;
  backgroundPig = loadImage("background.png");

 // start
   pig2 = loadImage("pig2.png");
   seconds = 0;
   
  //pig button 
  pauseButton = loadImage("pausebutton.png");
  
  //gameover screen
  cryingPig = loadImage("cryingpig.png");


  //obstacles
  cloud = loadImage("cloud3.png");
  
  //seasons background
  spring = loadImage("spring4.jpg");
  summer = loadImage("summer.jpg");
  fall = loadImage("autumn2.jpg");
  winter = loadImage("winter.jpg");
  
  //colors
  pink = #E597DE;
  lightgreen = #6BBC6A;
  darkgreen = #378326;
  red = #F03A30;
  orange = #EAAC47;
  white = #8CC9E0;
  
  treecolor = darkgreen;
  groundcolor = white;
  
  
  
}


void draw() {
  if (mode == intro) {
    drawIntro();
  } else if (mode == start){
    drawStart();
  } else if (mode == playing) {
    drawThings();
    moveThings();
    checkCollisions();
  } else if (mode == paused) {
    drawThings();
  } else if ( mode == death){
    drawdeath();
  } else if (mode == gameover) {
    drawGameOver();
  }
}

void mouseReleased() {
  if (mode == intro) {
    mode = start;
  } else if (mode == playing && dist(750,50,mouseX, mouseY) <= 60) {
    mode = paused;
  } else if (mode == paused && dist(750,50,mouseX, mouseY) <= 60) {
    mode = playing;
  } else if (mode == gameover) {
    mode = intro;
  }
}

//void keyPressed() {
//  println("?");
//   if (key == ' ') {
//     pdy = -10;
//  }
//}