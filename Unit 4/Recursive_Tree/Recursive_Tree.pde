float randomLength;

void setup() {
  size (1100, 700);

  colorMode(HSB,360,100,100,100);
  translate(width/2, height);
  strokeWeight(5);
  rotate(radians(-90));
  drawTree(7,8);
  
  frameRate(10);
}

void draw() {
  fill(0,0,100,80);
  rect(0,0,width,height);
  
  translate(width/2, height);
  strokeWeight(5);
  rotate(radians(-90));  
  drawTree(7,8);
  
}
void drawTree(int depth, float weight) {

  if (depth > 0) {

    stroke(0, 45, 37);
    strokeWeight(weight);
    line(0, 0, 50, 0);
    translate(50, 0);

    //right
    randomLength= random(20,60);
    strokeWeight(weight);
    pushMatrix(); 
    rotate(radians(random(-60,60)));
    line(0, 0, randomLength, 0);
    translate(randomLength, 0);
    drawTree(depth-1, weight-1);
    popMatrix();

    //right
    randomLength= noise(20,60);
    strokeWeight(weight);
    pushMatrix(); 
    rotate(radians(noise(-60,60)));
    line(0, 0, randomLength, 0);
    translate(randomLength, 0);
    drawTree(depth-1, weight-1);
    popMatrix();
    
    //right
    randomLength= noise(20,60);
    strokeWeight(weight);
    pushMatrix(); 
    rotate(radians(noise(-60,60)));
    line(0, 0, randomLength, 0);
    translate(randomLength, 0);
    drawTree(depth-1, weight-1);
    popMatrix();
  }
}

