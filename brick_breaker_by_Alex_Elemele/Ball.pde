class Ball {
  float xPos,yPos, vx, vy, d;
  
  //construct
  Ball(){
    xPos = width/2;
    yPos = height/2;
    vx = 3;
    vy = 4;
    d = 20;
  }
  void show(){
    fill(255,0,0);
    ellipse(xPos,yPos,d,d);
  }
  void act(){
    xPos += vx;
    yPos += vy;
    if (xPos < d/2 || xPos > width - d/2){
      vx = -vx;
    }
    if (yPos < d/2 ){
      vy = -vy;
    }
    if (dist(xPos,yPos,mypaddle.xPos,mypaddle.yPos) < d/2 + mypaddle.d/2){
      vx = (xPos - mypaddle.xPos)* 0.1;
      vy = (yPos - mypaddle.yPos)*0.1;
    }
  }
}
    
