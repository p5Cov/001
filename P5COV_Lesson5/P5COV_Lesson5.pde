// p5Cov processing coventry workshop 001
// lesson 5
// Dec 12th 2014
// ashleyjamesbrown

//moving code into a function so we can call it repeatedly

int shapeSize=60;
int red=0;
int green=200;
int blue=0;
int alpha=90;

float radius = 72.0;
int deg = 12;
int circleDeg = 360;


void setup(){
  size(800,600);
  background(0);
}



void draw(){

}



void createShapes(){
  
  red=int(random(0,255));
  green=int(random(0,255));
  blue=int(random(0,255));
  alpha=int(random(0,255));
  
  shapeSize=int(random(10,160));
  
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

 
}



void mousePressed(){
 createShapes(); 
}
