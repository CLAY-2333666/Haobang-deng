void  Laplacian(int w) {

  //int w = 80;
  int xstart = constrain(mouseX-w/2,0,img.width); 
  int ystart = constrain(mouseY-w/2,0,img.height);
  int xend = constrain(mouseX + w/2,0,img.width);
  int yend = constrain(mouseY + w/2,0,img.height);
  loadPixels();
  float[][] matrix = { { 0, -1, 0 } , 
                       { -1, 4, -1 } ,
                       { 0, -1, 0 } } ;
  for (int x = xstart; x < xend; x++ ) {
    for (int y = ystart; y < yend; y++ ) {
       int offset = 2;
       float r= 0.0;
       float g= 0.0;
       float b= 0.0;
        
     
      int loc = x + y*img.width;
      
      
      for (int i = 0; i < 3 ; i++ ) {
        for (int j = 0; j < 3; j++ ) {
         int xloc = x + i-offset;
         int yloc = y + j-offset;

         int loc1 = xloc + img.width*yloc;
         loc1 = constrain(loc1,0,img.pixels.length-1);
         color a = img2.pixels[loc1];
          float r1 = red(a); 
          float g1 = green(a); 
          float b1 = blue(a);
          r += r1 * matrix[i][j];
          g += g1 * matrix[i][j];
          b += b1 * matrix[i][j];
        }
      }
      pixels[loc]=color(r, g, b);
      //println(r,r1);
    }
  }
  updatePixels() ;
}
