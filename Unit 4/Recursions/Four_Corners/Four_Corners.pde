void setup(){
  size(600,600);
  noFill();
  drawCircle1(height/2,height/2,height/2);
  drawCircle2(height/2,height/2,height/2);
  drawCircle3(height/2,height/2,height/2);
  drawCircle4(height/2,height/2,height/2);
}
void drawCircle1(float radius, float x, float y){
  //new ellipse- smaller
  ellipse(x+10, y+10, radius-20, radius-20);
  
  if (radius>20){
    //recurse
    drawCircle1(radius-20,x+10,y+10);
  }
}
void drawCircle2(float radius, float x, float y){
  //new ellipse- smaller
  ellipse(x+10, y-10, radius-20, radius-20);
  
  if (radius>20){
    //recurse
    drawCircle2(radius-20,x+10,y-10);
  }
}
void drawCircle3(float radius, float x, float y){
  //new ellipse- smaller
  ellipse(x-10, y-10, radius-20, radius-20);
  
  if (radius>20){
    //recurse
    drawCircle3(radius-20,x-10,y-10);
  }
}
void drawCircle4(float radius, float x, float y){
  //new ellipse- smaller
  ellipse(x-10, y+10, radius-20, radius-20);
  
  if (radius>20){
    //recurse
    drawCircle4(radius-20,x-10,y+10);
  }
}
