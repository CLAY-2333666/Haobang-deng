class du {
  int i;
  float xpos;
  float ypos;
  float xspeed;
  boolean turn=false;
  boolean chase = false;
  boolean move=true;
  du(int tempi, float tempXpos, float tempYpos, float tempXspeed) {
    i=tempi;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display() {
    stroke(0);
    if (frameCount%100==1 && Du[i].chase==false) {
    if (random(1)<0.5) 
      move=true;
    else move=false;
    }
    if ( frameCount >1  && frameCount % 100 == 1 && chase == false) {
      if (random(1)<0.5) 
        turn=true; 
      else turn=false;
    }
    if (move==false && Du[i].chase==false) {
      Du[i].xspeed=0;
    };
    if (turn ==true) {
      pushMatrix();
      scale(-1, 1); 
      image(myAnimation[i], -xpos-myAnimation[i].width, myAnimation[i].height);

      popMatrix();
    }
    if (chase==false&&move==true) {
      xspeed = 1;
    }
    if (turn==false) {
      image(myAnimation[i], xpos, myAnimation[i].height);
    }
  }
  void move() {
    if (turn ==true) {
      xpos = xpos - xspeed;
    }
    if (turn ==false) {
      xpos = xpos + xspeed;
    }
    if (chase) {
      image(exclamation, myAnimation[i].width+xpos, myAnimation[i].height, 50, 50);
      xspeed=6;
    }
    if (xpos == width-50 || xpos == 0) {
      xpos = 0;
    }
  }
}
