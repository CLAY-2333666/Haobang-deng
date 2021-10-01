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
    image(myAnimation1[i], xpos, myAnimation[i].height, 50,50);
  }
  void move() {
    println(width);
    if (xpos > Rocket[1].xpos && xpos<Rocket[1].xpos+myAnimation[1].width) {
      food=false;
    }

    //println(Rocket[1].xpos+myAnimation[1].width);
    xpos = xpos - xspeed;
  }
  
}
