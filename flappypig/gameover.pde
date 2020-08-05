void drawGameOver() {
  background(245,82,230);
  image(cryingPig, 200, 300, 200, 300);
  
  // score count
  textSize(72); 
  textAlign(CENTER, CENTER);
  fill(255,255,255);
  text("Your Score: " + count, 540,200);
  
  if (count > bestscore){
    bestscore = count; 
  }
  
  //best score
  textSize(72); 
  textAlign(CENTER, CENTER);
  fill(255,255,255);
  text("Best Score: " + bestscore, 540,300);
  
   //TITLE
  textSize(84);
  textAlign(CENTER, CENTER);
  fill(255,255,255);
  text("You died HAHAHA" , 400, 500);
  
  //Click to start
  textSize(36);
  textAlign(CENTER, CENTER);
  fill(255,255,255);
  text("Try again?", 400, 600);
}