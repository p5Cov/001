// p5Cov processing coventry workshop 001
// lesson 3
// Dec 12th 2014
// ashleyjamesbrown

int shapeSize=20;
int red=0;
int green=200;
int blue=0;
int alpha=90;

void setup(){
  size(800,600);
  background(0);

}

void draw(){
  //draw coloured circles
 noStroke();
 fill(red,green,blue,alpha);
 ellipse(mouseX,mouseY,shapeSize,shapeSize);
  

}

void keyPressed(){
  
 if (key=='s'){
 saveFrame("P5CovImage-###.jpg");
 }
 else
 if (key==' '){
  background(0); 
 }
 else
 if (key=='r'){
  red=int(random(0,255));
  green=int(random(0,255));
  blue=int(random(0,255));
  alpha=int(random(0,255));
 }
 else
 if (key=='1') {
  shapeSize=10; 
 }
 
}
