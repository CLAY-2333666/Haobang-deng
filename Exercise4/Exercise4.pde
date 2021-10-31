PGraphics buffer;
PShape lines;
char m = key;
void setup() {
  size(400, 400, P3D);
  smooth(8);
}
void draw()

{
  buffer = createGraphics(400, 400);
  char m = key;
  println(m);
  buffer.beginDraw();
  buffer.background(0);
  buffer.textSize(270);
  buffer.text(key, 110, 270);
  buffer.endDraw();
  background(100);
  for (int y = 0; y < buffer.height; y += 30) {
    
    noStroke();
    
    for (int x = 0; x < buffer.width; x += 1) {
      
      if (x < buffer.width - 1) {
       
        
        
        float currentPixelBrightness = brightness(buffer.get(x, y));
        if (currentPixelBrightness!=0) {
          rect(x, y, 30, 30);
          x+=30;
          
        }
      }
    }
  }
}
