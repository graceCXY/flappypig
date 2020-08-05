
void drawThings() {
  //sky 
  image(season, 400, 400, 800, 800);
  
  //ground
  fill(groundcolor);
  rect(0, 700, 800, 100);
  
  //obstacles on the ground
  fill(#762B27);
  rect(ax, ay, 30, 700 - ay);
  fill(treecolor);
  ellipse(ax + 15, ay, 120, 100);
  
  fill(#762B27);
  rect(bx, by, 30, 700 - by);
  fill(treecolor);
  ellipse(bx + 15, by, 120, 100);
  
  fill(#762B27);
  rect(cx, cy, 30, 700 - cy);
  fill(treecolor);
  ellipse(cx + 15, cy, 120, 100);
  
  
  // obstacles in the sky 

  image(cloud, ax+25, ay - 300 , 110, 80);
  image( cloud, bx+25, by - 300 , 110, 80);
  image(cloud, cx+25, cy - 300 , 110, 80);

  
  //pig 
  image( pig, px, py, 120, 100);
  
  //pause button
  image( pauseButton, 750, 50, 50, 50);

}

void moveThings() {
  //move obstacles
  ax = ax - 1;
  bx = bx - 1; 
  cx = cx - 1;

  if ( ax < -100){
    ax = 850;
    ay = random( 300,600);
    count++;
    
  }
    if ( bx < -100){
    bx = 850;
    by = random( 300,600);
    count++;
    
  }
    if ( cx < -100){
    cx = 850;
    cy = random( 300,600);
    count++;
    
  }

  // change season
  if (count%4 == 1){
    season = spring;
    treecolor = pink;
    groundcolor= lightgreen;
  } else if ( count%4 ==2){
    season = summer;
    treecolor = lightgreen;
    groundcolor = darkgreen;
  } else if ( count% 4 == 3){
    season = fall;
    treecolor = red;
    groundcolor = orange;
  } else if (count%4 == 0){
      season = winter;
      treecolor = darkgreen;
      groundcolor = white;
  }
  
  
  //pig

    if( keyPressed && key == ' '){
       pdy = -8;
     }

  py = py + pdy;
  
  //gravity 
  pdy = pdy + 0.8;
  
  //pause button
  //if( mode == playing && dist(750,50,mouseX, mouseY) <= 60 ){
  //  mode = paused;
  // }
  //  if(mode == paused && dist(750,50,mouseX,mouseY) >= 60){ 
  //  mode = playing;
  // }
  
  //display score
  textSize(32);
  fill(0);
  text("Score: "+count, 60, 20);
  
}



void checkCollisions() {
  if(dist(px, py, ax, ay) < 60 || dist(px,py, ax+25, ay-300) < 55 || py >= 700 || py < 30){
     sy = py;
     mode = death; 
  }
  if(dist(px, py, bx, by) < 60 || dist(px,py, bx+25, by-300) < 55 || py >= 700 || py < 30){
    sy = py;
    mode = death;
  }
  if(dist(px, py, cx, cy) < 60 || dist(px,py, cx+25, cy-300) < 55 || py >= 700 || py < 30){
    sy = py;
    mode = death;
  }
  if(px + 50 == ax && py> ay){
    sy = py;
    mode = death; 
  }
  if(px == bx && py > by){
    sy = py;
    mode = death; 
  }
  if(px == cx && py> cy){
    sy = py;
    mode = death; 
  }

}