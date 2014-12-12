// p5Cov processing coventry workshop 001
// lesson 9
// Dec 12th 2014
// ashleyjamesbrown

//using sound volume as a variable for drawing

import ddf.minim.*;


Minim mySound;
AudioInput in;



int shapeSize=20;
int red=0;
int green=200;
int blue=0;
int alpha=90;

void setup(){
  size(800,600);
  background(0);
  
  //define the sound object
  mySound = new Minim(this);
  
  // use the getLineIn method of the Minim object to get an AudioInput
  in = mySound.getLineIn();

}

void draw(){
  //draw coloured circles
 noStroke();
 fill(red,green,blue,alpha);
 
 shapeSize=int(in.mix.level()*2000);
 ellipse(mouseX,mouseY,shapeSize,shapeSize);


}

void generateColour(){
  
  red=int(random(0,255));
  green=int(random(0,255));
  blue=int(random(0,255));
  alpha=int(random(0,255));

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
  generateColour();
//
}
