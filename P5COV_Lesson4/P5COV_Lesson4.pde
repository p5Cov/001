// p5Cov processing coventry workshop 001
// lesson 4
// Dec 12th 2014
// ashleyjamesbrown

int shapeSize=60;
int red=0;
int green=200;
int blue=0;
int alpha=90;

float radius = 72.0;
int deg = 12;
int circleDeg = 360;

//a little bit of maths to go from polar (real world) to cartesian(2d)
//maths makes digital/generative art very pretty


void setup(){
  size(800,600);
  background(0);

}

void draw(){
 
  //create many circles using maths !
  for (int i=0; i<circleDeg; i+=deg) {
  // noStroke();
   fill(red,green,blue,alpha);
   
   float angle = radians(i);
   float x = (width/2) + (cos(angle) * radius) ;
   float y = (height/2) + (sin(angle) * radius) ;
   
   ellipse(x,y,shapeSize,shapeSize);
  }

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
  shapeSize=20; 
 }
 else
 if (key=='2') {
  shapeSize=50; 
 }
 else
 if (key=='3') {
  shapeSize=100; 
 }
 
 
}
