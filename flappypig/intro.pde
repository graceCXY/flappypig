void drawIntro() {
  image(backgroundPig, 400, 400, 800, 800);
  
  //TITLE
  textSize(72);
  textAlign(CENTER, CENTER);
  stroke(255,255,255);
  text("Flappy Pig" , 400, 400);
  
  //Click to start
  textSize(36);
  textAlign(CENTER, CENTER);
  stroke(255,255,255);
  text("Click To Start", 400, 500);
  
  //reset pig
  imageMode(CENTER);
  pig = loadImage("pig.png");
  backgroundPig = loadImage("background.png");
  px = 80;
  py = 350;
  
  pdy = 0;
  
  //reset obstacles
  //obstacles 
  ax = 500;
  bx = 800;
  cx = 1100;
  
  ay = random(400,600);
  by = random(400,600);
  cy = random(400,600);
  
  // soul 
  soul = loadImage("spirit.png");
  sy = 0;
  
  season = winter;
  treecolor = darkgreen;
  groundcolor = white;
  count = 0;
}