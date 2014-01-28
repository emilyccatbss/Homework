void setup(){
size(300,300);
picture();
colorMode(HSB,360,100,100,100);
}

void picture(){
float x= random(0,200);
float w= random (0,200);
float y= random(0,200);
float h= random (0,200);
float fraction= random(2,8);
fill(0,90,80);
rect(x,y,w,h);
fill(90,90,80);
rect(x+w,y,w/fraction,h);
fill(180,90,80);
rect(x,y+h,w,h/fraction);
fill(270,90,80);
rect(x+w,y+h,w/fraction,h/fraction);

}


