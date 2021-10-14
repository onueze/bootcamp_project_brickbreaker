void playing(){
  background(0);
  myBall.show();
  myBall.act();
  mypaddle.show();
  mypaddle.act();
  //allbricks.show();
 for (int i = 0; i<blocks.length;i++){
    for (int j = 0; j<blocks[0].length;j++){  
      blocks[i][j].show();
      blocks[i][j].checkBall(myBall);
      
    }
}
}
