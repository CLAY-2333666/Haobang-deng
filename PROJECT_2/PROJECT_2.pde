PImage img ;
PImage img2;
PShader blur;
int matrix= 70;
//int matrix1= constrain(matrix,1,80);
void setup() {
  
  size(200,200,P3D);
  
  img = loadImage( "4b1cb1e6a92501df96fce722ecbb8138--landscape-oil-paintings-landscape-art.png" );
  img2 = loadImage( "4b1cb1e6a92501df96fce722ecbb8138--landscape-oil-paintings-landscape-art.png" );
  //surface.setSize(img.width, img.height);
  sketch();
  //Laplacian();
}

void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
  Laplacian(matrix);} else if(mousePressed && (mouseButton == RIGHT)){
    sketch();
  }else{
  tri(matrix);}
  
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(e==1){
    matrix+=5;
  } else{
    matrix-=5;
  }
}
