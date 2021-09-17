void setup() {
  size(800, 600);
  background(255);
}
void draw() {
  stroke(random(0,255), random(0,255), random(0,255));
  if (mousePressed == true) {
    line(pmouseX, pmouseY, mouseX, mouseY);
      point(random(mouseX-20,mouseX+20), random(mouseY-20,mouseY+20));
  strokeWeight(5);
  
  }
}
