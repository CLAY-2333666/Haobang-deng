class lion {
  int i;
  float xpos;
  float ypos;
  float xspeed;

  lion(int tempi, float tempXpos, float tempYpos, float tempXspeed) {
    i=tempi;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display() {
    image(myAnimation1[i], xpos, myAnimation[i].height+200, 50,50);
  }
  void move() {
    println(width);
    if (xpos > Du[1].xpos && xpos<Du[1].xpos+myAnimation[1].width) {
      food=false;
    }

    //println(Du[1].xpos+myAnimation[1].width);
    xpos = xpos - xspeed;
  }
  
}
