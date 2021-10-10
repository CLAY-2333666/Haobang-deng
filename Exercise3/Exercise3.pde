void setup() {
  size(500, 100);
}
float a=0;
float x=0;
float h=0;
void draw() {
  background(204);
  float s = second();  // Values from 0 - 59
  float m = minute();  // Values from 0 - 59
  float h = hour();    // Values from 0 - 23
  float factor =  (s/60)*width;


  fill(255,140,100);
  rect(0, 0, factor, 33);
  fill(255,245,135);
  rect(0, 33, m, 33);
  line(factor, 0, factor, 33);
  fill(255,102,90);
  rect(0, 66, h, 33);
  line(m, 33, m, 66);
  line(h, 66, h, 100);
  stroke(100, 70);
    for (int i=0; i<60; i++) {
    a= a+ width/60.0;
    line(a, 0, a, 33);
    println(height);
    for (int l=0; l<60; l++) {
      x= x+ width/60.0;
      line(x, 33, x, 66);
    }
    for (int k=0; k<24; k++) {
      h= h+ width/24;
      line(h, 66, h, 100);
    }
  } 
  a=0;
  x=0;
  h=0;
}
