// click mouse to jump
//gameover pop up if hit the vine
//double click to activate the supermode when the energy is ready

import gifAnimation.*;
  float xpos=100;
  float ypos=500;
  float yspeed=20;
  boolean jump=false;
  int g = 1;
  PImage img;
  PImage img2;
  PImage bar;
  PImage bar2;
  boolean superjump = false;
  boolean superjumpMode = false;
  boolean top= false;
  float  count=0.1;
  boolean superjumpModeAct=false;
  float bar3=110;
  boolean gg=false;
  Gif running;
  vine [] Vine;
  int x=1;
  int opcacity = 100;
  Gif background;
void setup() {
  Vine=new vine[6];
  size(1600,700,P2D);
   background= new Gif(this, "ezgif.com-gif-maker.gif");
  running = new Gif(this, "running.gif");
  background.play();
  running.play();
  img2 = loadImage("favpng_sunlight-clip-art.png");
  img = loadImage("vine.png");
  bar=loadImage("bar.png");
  bar2=loadImage("318b608cbd26199f67970787f4a57881.png");
  for (int i = 1; i <= 3; i = i+1) {
    boolean direction;
    if (random(1)<0.5) 
        direction=true; 
      else direction=false;
    Vine[i] = new vine(1000+x,-20,direction);
    x +=300;}
}

void draw() {
  if(!gg){
  count=count+0.01;
  if (millis()-last>1000) count1=0;
  PImage bar1=bar.get(0,0,int(bar.width-bar3),bar.height);
  if(!superjumpMode){
    if(int(bar.width-bar3)>110){
    superjumpModeAct=true;
    } else {
      superjumpModeAct=false;
      bar3=bar3-0.1;
    }
  }
  
    if(superjumpMode && superjumpModeAct && int(bar.width-bar3)>1){
      bar3+=0.01;
  }
    if(superjumpMode && superjumpModeAct && int(bar.width-bar3)<=1){
      superjumpModeAct=false;
      superjumpMode=false;
    }
  println(int(bar.width-bar3));


    background(255);
    image(background,1,1,width,height);
    if (superjumpMode){
      display();
      if(top && superjump){
        ;
      } else {
    ;}
    }
  println(ypos);
    if(!superjumpMode){
     ;
    image(running,xpos,ypos);
      if (jump){
    yspeed-=g;
    ypos-=yspeed;}
}

    if(superjump){
      ypos-=yspeed;
      }
    if((ypos<10 || ypos>500) && (jump == true || superjump)){
      // println(ypos);
       yspeed=20;
      //println(jump == true || superjump);
      
      if (ypos<10){top=true;yspeed=-yspeed;}else{
        top= false;
 
      }
      opcacity=100;
      superjump=false;
      jump=false;
      
      
    }
    
    
    if (mousePressed == true && frameCount%30==1) {
        opcacity+=100;
       if(yspeed>1){
      yspeed+=1;
    }
}  
  for (int i = 1; i <= 3; i = i+1) {
    Vine[i].display();
    Vine[i].move();
    //print(Vine[i].ypos);
  }
  
  //image(bar,500,100);

  image(bar1,10,600);
  
  image(bar2,10,600);
  for (int i = 1; i <= 3; i = i+1) {
    println(Vine[i].ypos+img.height);
    if(!Vine[i].direction){
    if (xpos>Vine[i].xpos && 100<Vine[i].xpos+200 && Vine[i].ypos+img.height-100 < ypos && ypos <Vine[i].ypos+img.height){
     gg=true;
 }
    } else{
 if (xpos>Vine[i].xpos && 100<Vine[i].xpos+200 && Vine[i].ypos < ypos && ypos <Vine[i].ypos+200){
     gg=true;
 }}
 
 }
  } else{
    textSize(32);
    text("gg", 10, 30); 
  }
}
void mouseReleased() { 
      if(!superjumpMode){
      jump=true; 
      } else {
      superjump=true;}
}
int last;
int count1=0;
void  mousePressed() {
  if (mousePressed) {//if pressed once
    count1++;
    if (count1==1)
      last=millis();
    if (count1==2 && (millis()-last)<500 &&superjumpModeAct) {//if pressed twice
      superjumpMode=true;
      
      count1=0;
    } else if ((millis()-last)>1000)
      count1=0;
  }
}
