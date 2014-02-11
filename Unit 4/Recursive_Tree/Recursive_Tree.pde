float randomLength;

void setup() {
  size (1100, 700);

  translate(width/2, height);
  strokeWeight(5);
  rotate(radians(-90));
  drawTree(7);
}


void drawTree(int depth) {

  if (depth > 0) {

    stroke(70, 30, 30);
    strokeWeight(2);
    line(0, 0, 50, 0);
    translate(50, 0);

    //left
    pushMatrix(); 
    rotate(radians(-20));
    line(mouseX, mouseY, mouseX+50, mouseY);
    translate(50, 0);
    drawTree(depth-1);
    popMatrix();

    //right
    pushMatrix(); 
    rotate(radians(20));
    line(0, 0, 50, 0);
    translate(50, 0);
    drawTree(depth-1);
    popMatrix();
    
    //right
    randomLength= random(20,60);
    pushMatrix(); 
    rotate(radians(random(-30,30)));
    line(0, 0, randomLength, 0);
    translate(randomLength, 0);
    drawTree(depth-1);
    popMatrix();
  }
}

