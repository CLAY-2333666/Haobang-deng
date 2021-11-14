void sketch(){
img.filter(GRAY);
  //img2.filter(GRAY);
  loadPixels();
  img.loadPixels();
  for (int x = 0; x < img.width; x++ ) {
    for (int y = 0; y < img.height; y++ ) {
      int loc = x + y*img.width;
      color a = img.pixels[loc];
      float r1 = red(a); 
      float g1 = green(a); 
      float b1 = blue(a);
      r1 = 255-r1;
      g1 = 255-g1;
      b1 = 255-b1;
      pixels[loc]=color(r1, g1, b1);
      
}
 ;
  }
  filter(BLUR,3);
  updatePixels();
  
  for (int x = 0; x < img.width; x++ ) {
    for (int y = 0; y < img.height; y++ ) {
      int loc = x + y*img.width;
      color a = pixels[loc];
      color b = img.pixels[loc];
      float r1 = red(a); 
      float g1 = green(a); 
      float b1 = blue(a);
      float r2 = red(b); 
      float g2 = green(b); 
      float b2 = blue(b);
      float r = r1+(r1*r2)/(255-r2);
      float g = g1+(g1*g2)/(255-g2);
      float b3 = b1+(b1*b2)/(255-b2);
      
      pixels[loc]=color(r,g,b3);
    }
  }
  updatePixels() ;
}
