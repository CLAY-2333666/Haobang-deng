void update(){
for(int i=1;i<=65;i++){
if(inventory1.get("square["+i+"]")=="display" && millis()-inventory.get("square["+i+"]")<200){
  square[i].setFill(color((200)));
  //shape(square[i]);
}
  else{
    square[i].setFill(color(255));
    //println(i);
    if(v[i].y==0){
      square[i].setFill(color(2));}
    }
  
  shape(square[i]);
  if(i!=1){
    if(v[i-1].y==0){
    shape(square[i-1]);}
  }
  println(mouseY);
  if(v[i].x<mouseX &&mouseX<v[i].x+10&&mousePressed == true&& v[i].y<mouseY &&mouseY<v[i].y+v2[i].y){
    if(!mode){
      new MyNote(i*10.29, 0.2);
      inventory.set("square["+i+"]", millis());
        inventory1.set("square["+i+"]", "display");
    }else{
      inventory.set("square["+i+"]", millis());
        inventory1.set("square["+i+"]", "display");
     file[i].play();
     file[i].rewind();}}
}



}
