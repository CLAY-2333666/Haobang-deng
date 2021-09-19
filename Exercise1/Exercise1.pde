int i = 0;
void setup() {
  size(800, 600);
  background(255);
}
void draw() {
  square(30, 20, 55);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  if (mousePressed && (mouseButton == LEFT)) {
    line(pmouseX, pmouseY, mouseX, mouseY);
    point(random(mouseX-20, mouseX+20), random(mouseY-20, mouseY+20));
    strokeWeight(5);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    background(255);
    i = 0;
  }
  if (mouseX>30 && mouseX<30+55 && mouseY>20 && mouseY<10+55) {
    text(i, random(0, i), i);
    textSize(32);
    fill(0, 102, 153, 204);
    println("dawdada");
    i++;
  }
}
