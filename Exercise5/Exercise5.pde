//https://forum.processing.org/one/topic/how-can-i-detect-sound-with-my-mic-in-my-computer.html
import ddf.minim.*;
float ypos;
float heighty;
Minim minim;
AudioInput in;
color white;
boolean jump;
void setup()
{
  size(512, 200, P2D);
  white = color(255);
  colorMode(HSB,100);
  minim = new Minim(this);
  minim.debugOn();
  
  // get a line in from Minim, default bit depth is 16
  in = minim.getLineIn(Minim.STEREO, 512);
  background(0);
}

void draw()
{
   
  background(0);

  if(!jump){
  for(int i = 1; i < in.bufferSize() - 1; i++)
  {
    if(in.left.get(i)>in.left.get(i-1)) heighty = in.left.get(i)*700;
  }}
  jump=true;
  println(heighty);
  if(ypos>heighty && jump){
  ypos--; } else{
    ypos=0;
    jump=false;
  }
  circle(56, ypos+height, 55);
}


void stop()
{

  in.close();
  minim.stop();
  super.stop();
}
