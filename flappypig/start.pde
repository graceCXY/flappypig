void drawStart(){
  drawThings();

    if(seconds <= 60){
      textSize(72);
      fill(0);
      text("3", 400, 280);
      image(pig2, 320, 400, 50,50);
      image(pig2, 400,400, 50,50);
      image(pig2, 480, 400, 50,50);
      seconds++;

    } else if( seconds > 60 && seconds <= 120){
      textSize(72);
      fill(0);
      text("2", 400, 280);
      image(pig2, 320, 400, 50,50);
      image(pig2, 400,400, 50,50);
      seconds++;
    } else if( seconds > 120 && seconds<= 180){
      textSize(72);
      fill(0);
      text("1", 400, 280);
      image(pig2, 320, 400, 50,50);
      seconds++;
    } else if( seconds > 180){
      mode = playing;
      seconds =0;
    }
    
  
}
  