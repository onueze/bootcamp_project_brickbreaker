void lose(){
  if(myBall.yPos > height - myBall.d/2){
    textAlign(CENTER,CENTER);
    text("YOU LOST",width/2, height/2);
  }
}
