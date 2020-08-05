void drawdeath(){
  drawThings(); 
  image( soul, px, sy, 50, 80);
  sy = sy - 3;
  if( sy <= 0){
    mode = gameover;
  }
}