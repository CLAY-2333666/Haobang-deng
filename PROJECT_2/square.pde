 void tri(int w){
   
  //int w = 80;
  int xstart = constrain(mouseX-w/2,0,img.width); 
  int ystart = constrain(mouseY-w/2,0,img.height);
  int xend = constrain(mouseX + w/2,0,img.width);
  int yend = constrain(mouseY + w/2,0,img.height);
   for (int x = xstart; x < xend; x+=5 ) {
    for (int y = ystart; y < yend;  y+=5 ) {
      println(dist(x, y, mouseX, mouseY));
      if(dist(x, y, mouseX, mouseY)<w/2){
      int loc = x + y*img2.width;
      stroke(img2.pixels[loc]);
      fill(img2.pixels[loc]);
      square(x, y, 5);}
    }
  }
}
