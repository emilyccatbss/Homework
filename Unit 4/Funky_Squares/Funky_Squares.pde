  float randomWidth= random(200,500);
  float randomHeight= random(200,500);
void setup() {
  size(600, 600);
  picture();
  colorMode(HSB, 360, 100, 100, 100);
}

void picture() {
  stroke(3);
  rect(0, 0, randomWidth, randomHeight);
  rect(randomWidth, 0, width-randomWidth, randomHeight);
  rect(0, randomHeight, randomWidth,height-randomHeight );
  rect(randomWidth, randomHeight, width-randomWidth, height-randomHeight);

  if (randomWidth>80){
    randomHeight= randomHeight/1.2;
    randomWidth= randomWidth/1.2;
    picture();
  }
}

