class paddle {

  float xPos, yPos, d;

  paddle() {
    yPos = height+40;
    xPos = width/2;
    d = 160;
  }
    
    void show(){
      fill(0,0,255);
      ellipse(xPos,yPos,d,d);
      
    }
    
    void act(){
      xPos = mouseX;
    }
  }
