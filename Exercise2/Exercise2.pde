PImage img[]= new PImage[36];
PImage img1;
PImage img2;float ypos=4;
float ypos2=0;
int p=1;
int o=1;
int m=100;
int randomi;
rocket [] Rocket;
void setup() {
  size(497, 730);
  Rocket= new rocket[90];
  img1 = loadImage("1.png");
  img2 = loadImage("2.png");
  for ( int i = 1; i <= 8; i++) {
    img[i] = loadImage( i + ".gif" );
  }
    for (int i = 3; i <= 8; i = i+1) {
    Rocket[i]=new rocket(i, random(1,497), 0, random(1,2));
    //println("adwa");
  }
}
void draw() {
  background(255);
  p++;
  o++;
  if(ypos-730==0){
    ypos2=-730;
  }
  if(ypos2==0){
    ypos=0;
  }
  println(randomi);
  ypos2++;
  ypos=ypos+1;
  //println(ypos);
  image(img1, 0, ypos-730);
  image(img1, 0, ypos2);
  image(img2, 190, 400);
  if(frameCount % 400 == 1){
    lala();
    o=o+100;
  }
    for ( int i = randomi; i <= 8; i = i+ randomi) {
      Rocket[i].move();
      Rocket[i].display();
    }
  }


void lala() {
  randomi=int(random(3,8));
  for (int i = 1; i <= 8; i = i+ 1) {
    Rocket[i]=new rocket(i, random(1,497), -10, random(1,7));
    //println("adwa");
  }
}
class rocket {
  int i;
  float xpos;
  float ypos;
  float xspeed;
  rocket(int tempi, float tempXpos, float tempYpos, float tempXspeed) {
    i=tempi;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display() {
    stroke(0);
    rectMode(CENTER);
    image(img[i], xpos, ypos,50,50);
  }
  void move() {
    ypos = ypos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
