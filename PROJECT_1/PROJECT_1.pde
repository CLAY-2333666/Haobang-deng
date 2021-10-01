import gifAnimation.*;
Gif myAnimation[]=new Gif[3];
Gif myAnimation1[]=new Gif[3];
rocket [] Rocket;
lion [] Lion;
boolean move=true;
boolean food=false;
PImage exclamation;
void setup() {
  size(1600,700);
  Rocket= new rocket[90];
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
    Rocket[i]=new rocket(i, 500, 0, random(1,5));
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
   //println(Rocket[i].xpos);
      
  image(myAnimation[0], 10, 10,1600,700);
  for ( int i = 1; i <=2 ; i = i+ 1) {
    

      if (Lion[2].xpos > Rocket[i].xpos && Lion[2].xpos<Rocket[i].xpos+myAnimation[1].width) {
      food=false;
      Lion[2].xpos=-11;
    }

      if(Rocket[i].turn==false && Lion[2].xpos<width && Lion[2].xpos >Rocket[i].xpos){
      Rocket[i].chase=true;
    } else if(Rocket[i].turn==true && Lion[2].xpos>1 && Lion[2].xpos <Rocket[i].xpos){
      Rocket[i].chase=true;
      println("111");    
    }
    else {
      Rocket[i].chase=false;
    }
    
  Rocket[i].move();
    Rocket[i].display();}
  if (mousePressed == true) {
    food=true;
  }
  if (food==true) {
      Lion[2].move();
      Lion[2].display();
    }
  }
