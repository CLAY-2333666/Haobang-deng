PShader shade;
PGraphics pg;
PShape L;

void setup() {
  size(640, 480, P2D);
  shade = loadShader("brcosa.glsl");
  pg = createGraphics(640, 480, P2D);
  
  pg.beginDraw();
  for (int y=0; y<height; y+=50) {
    int l;
    if (y%4==0) {
      l=50;
    } else {
      l=0;
    }
    for (int x=l; x<width; x+=100) {
      pg.beginShape();
      pg.vertex(x-50, y);
      pg.vertex(x, y-50);
      pg.vertex(x+50, y);
      pg.vertex(x, y+50);
      pg.endShape(CLOSE);
    }
  }
  pg.endDraw();
  
}

void draw() {
  shade.set("brightness", 1.0);
  shade.set("contrast", map(mouseX, 0, width, -5, 5));
  shade.set("saturation", map(mouseY, 0, height, -5, 5));
  shader(shade);
  image(pg, 0, 0);
}
