void display(){
    if(!top){
      image(running,xpos,ypos);}
      else{
      pushMatrix();
      scale(1, -1);
      image(running,xpos,-(ypos+running.height));
      //image(img2,xpos,-(ypos+running.height),200,200);  
      popMatrix();}
      tint(255, opcacity);
    image(img2,xpos,ypos,200,200);
    tint(255, 500);

      }
      
