//click mouse to generate lion for feeding Du 
//Two du have randomly different behavior
import gifAnimation.*;
Gif myAnimation[]=new Gif[3];
Gif myAnimation1[]=new Gif[3];
du [] Du;
lion [] Lion;
boolean move=true;
boolean food=false;
PImage exclamation;
void setup() {
  size(1600,700);
  Du= new du[90];
  Lion= new lion[90];
  exclamation=loadImage("exclamation.png");
  myAnimation[0]=new Gif(this, "background.gif");
  myAnimation[0].play();
  for ( int i = 1; i <= 2; i++) {
    myAnimation[i] = new Gif(this, 1+ ".gif");
    myAnimation[i].play();
  }
  for ( int i = 1; i <= 2; i++) {
    myAnimation1[i] = new Gif(this, 2+ ".gif");
    myAnimation1[i].play();
  }
  for (int i = 1; i <= 2; i = i+1) {
    Du[i]=new du(i, 500, 0, random(1,5));
    //println("adwa");
  }
  if (mousePressed == true) {
    for (int i = 2; i <=2; i = i+1) {
      Lion[i]=new lion(i, mouseX, 0, 1);
    }
  }
  for (int i = 2; i <=2; i = i+1) {
    Lion[i]=new lion(i, mouseX, 0, 1);
  }
}

void mousePressed() {
  for (int i = 2; i <=2; i = i+1) {
    Lion[i]=new lion(i, mouseX, 0, 1);
  }
}
void draw() {
  background(255);
   //println(Du[i].xpos);
      
  image(myAnimation[0], 10, 10,1600,800);
  for ( int i = 1; i <=2 ; i = i+ 1) {
    

      if (Lion[2].xpos > Du[i].xpos && Lion[2].xpos<Du[i].xpos+myAnimation[1].width) {
      food=false;
      Lion[2].xpos=-11;
    }

      if(Du[i].turn==false && Lion[2].xpos<width && Lion[2].xpos >Du[i].xpos){
      Du[i].chase=true;
    } else if(Du[i].turn==true && Lion[2].xpos>1 && Lion[2].xpos <Du[i].xpos){
      Du[i].chase=true;
      println("111");    
    }
    else {
      Du[i].chase=false;
    }
    
  Du[i].move();
    Du[i].display();}
  if (mousePressed == true) {
    food=true;
  }
  if (food==true) {
      Lion[2].move();
      Lion[2].display();
    }
  }
