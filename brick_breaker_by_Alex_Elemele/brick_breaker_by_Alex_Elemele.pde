final int intro = 1;
final int playing = 2;
final int pause = 3;
final int win = 4;
final int lose = 5;
int mode;

Ball myBall;
paddle mypaddle;
//bricks allbricks;
Block[][] blocks;

void setup() {
  size(600, 600);

  //for(int mode=intro;mode<lose;mode++){
  //print(mode);
  //}
  myBall = new Ball();
  mypaddle = new paddle();
  //allbricks = new bricks();
  blocks = new Block[4][4];
  for (int i = 0; i<blocks.length; i++) {
    for (int j = 0; j<blocks[0].length; j++) {
      blocks[i][j] = new Block(j, i, blocks.length);
    }
  }
}
  void draw(){
    intro();
    if (key == ' '){
      playing();
      lose();
      
    }
//void draw() {
//  for (int mode=1; mode<lose; mode++) {
//    if (mode == intro) {
//      intro();
//    }
//      else if (mode == playing) {
//      playing();
//      if (blocks.length == 0)
//      {
//        win();
//        mode += 2;
//      }
//    } else if (mode == pause) {
//      pause();
//      mode += 1;
//    } else if (mode == win) {
//      win();
//    } else if (mode == lose) {
//      lose();
//    } else {
//      println("ERROR");
//    }
//  }
}
