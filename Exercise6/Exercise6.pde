//https://processing.org/examples/edgedetection.html
import processing.video.*;
float[][] kernel = {{ -1, -1, -1}, 
                    { -1,  9, -1}, 
                    { -1, -1, -1}};
Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  cam.loadPixels();
  // Create an opaque image of the same size as the original
  PImage edgecam = createImage(cam.width, cam.height, RGB);
  // Loop through every pixel in the image.
  for (int y = 1; y < cam.height-1; y++) { // Skip top and bottom edges
    for (int x = 1; x < cam.width-1; x++) { // Skip left and right edges
      float sum = 0; // Kernel sum for this pixel
      for (int ky = -1; ky <= 1; ky++) {
        for (int kx = -1; kx <= 1; kx++) {
          // Calculate the adjacent pixel for this kernel point
          int pos = (y + ky)*cam.width + (x + kx);
          // Image is grayscale, red/green/blue are identical
          float val = red(cam.pixels[pos]);
          // Multiply adjacent pixels based on the kernel values
          sum += kernel[ky+1][kx+1] * val;
        }
      }
      // For this pixel in the new image, set the gray value
      // based on the sum from the kernel
      edgecam.pixels[y*cam.width + x] = color(sum, sum, sum);
    }
  }
  // State that there are changes to edgecam.pixels[]
  edgecam.updatePixels();
  image(edgecam, 0, 0);
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
}
