void intro() {
  background(0);
  textAlign(CENTER,CENTER);
  textSize(18);
  text("Press space bar to start", width/2, height/2);
  text("Brick Breaker Game by Alex Elemele", width/2, ( height/2)- 100);
  if(key == ' '){
    mode +=1;
  }
}
