class vine{
  int i;
  float xpos;
  float ypos;
  boolean direction;
  vine(float tempXpos, float tempYpos, boolean tempdirection) {
    xpos = tempXpos;
    ypos = tempYpos;
    direction = tempdirection;
  }
  void display() {
    
    stroke(0);
    //rectMode(CENTER);
    if(direction){
      image(img,xpos,ypos,200,200);
    } else{
        pushMatrix();
        scale(1, -1); 
        image(img,xpos,-(ypos+img.height+200),200,200);
        popMatrix();
     }
  }
  void move() {
    xpos-=6;
    if (xpos < 1) {
      xpos=1600+random(900,1000);
      ypos=random(-20,-10);
      if (random(1)<0.5) 
        direction=true; 
      else direction=false; 
    }
  }
}
