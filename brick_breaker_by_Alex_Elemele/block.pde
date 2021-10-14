class Block {
  float x, y, w, h, numBlocks;
  boolean status;
  int contact;

  Block() {
    x = 0;
    numBlocks = 8;
    y = 0;
    w = width / numBlocks;
    h = 20;
    contact = 0;
  }
  Block(int row, int col, int theNumBlocks) {

    numBlocks = theNumBlocks;
    h = 20;
    w = width / numBlocks;
    x = w * col;
    y = h * row;
    status = true;
  }
  void show() {
    fill(255, 255, 0);
    if (status) {
      rect(x, y, w, h);
    }
  }


  void checkBall(Ball myBall) {
    if (status) {
    //for removing Bottom of Brick
      if (myBall.xPos > x && myBall.xPos < x+w && myBall.yPos < (y+h+myBall.d/2) && myBall.yPos > y+h) {
        myBall.vy *= -1;
        status = false;
      // for removing Top of brick
      if (myBall.xPos > x && myBall.xPos < x+w && myBall.yPos > y - myBall.d/2 && myBall.yPos < y){
      myBall.vy *= -1;
      status = false;
      //left side
      if(myBall.xPos > x - myBall.d/2 && myBall.xPos < x && myBall.yPos < y+h && myBall.yPos > y){
        myBall.vx *= -1;
        status = false;
        //right side
      if(myBall.xPos < x+w && myBall.xPos > (x+w+myBall.d/2)&& myBall.yPos < y+h && myBall.yPos > y){
        myBall.vy *=-1;
        status = false;
      //}
      //}
      
      
      
      }
      
      
      }
      }
      }
      }
    
    }
      
    }
  
