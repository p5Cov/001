// p5Cov processing coventry workshop 001
// lesson 9
// Dec 12th 2014
// ashleyjamesbrown

//using sound as a variable and also detecting sound freq

import ddf.minim.*;
import ddf.minim.analysis.*;

Minim mySound;
AudioInput in;

BeatDetect beat;
BeatListener bl;

float kickSize, snareSize, hatSize;
float kickSizeTarget, snareSizeTarget, hatSizeTarget;

int shapeSize=20;
int red=0;
int green=200;
int blue=0;
int alpha=90;




void setup() {
  size(800, 600);
  background(0);

  //define the sound object
  mySound = new Minim(this);

  // use the getLineIn method of the Minim object to get an AudioInput
  in = mySound.getLineIn(Minim.STEREO, 512);
  beat = new BeatDetect(in.bufferSize(), in.sampleRate());
  beat.setSensitivity(300);  
  kickSize = snareSize = hatSize = 0.0;
  // make a new beat listener, so that we won't miss any buffers for the analysis
  bl = new BeatListener(beat, in);
}

void draw() {
  fill(0, 30);
  rect(0, 0, width, height);


  //draw coloured circles
  noStroke();
  fill(red, green, blue, alpha);
  shapeSize=int(in.mix.level()*2000);
  ellipse(width/2, 100, shapeSize, shapeSize);

  checkBeat();

  fill(255, 0, 255, kickSizeTarget);
  ellipse(width*0.25, 500, 2*kickSize, 2*kickSize);

  fill(0, 255, 255, snareSizeTarget);
  ellipse(width/2, 500, 2*snareSize, 2*snareSize);

  fill(255, 255, 25, hatSizeTarget);
  ellipse(width*0.75, 500, 2*hatSize, 2*hatSize);
}





void checkBeat() {

  if ( beat.isKick() ) kickSizeTarget = 255.0;
  if ( beat.isSnare() ) snareSizeTarget = 255.0;
  if ( beat.isHat() ) hatSizeTarget = 255.0;

  if ( !beat.isKick() ) kickSizeTarget = 0.0;
  if ( !beat.isSnare() ) snareSizeTarget = 0.0;
  if ( !beat.isHat() ) hatSizeTarget = 0.0;

  kickSize += (kickSizeTarget-kickSize)*0.1;
  snareSize += (snareSizeTarget-snareSize)*0.1;
  hatSize += (hatSizeTarget-hatSize)*0.1;
}


void keyPressed() {

  if (key=='s') {
    saveFrame("P5CovImage-###.jpg");
  } else
    if (key==' ') {
    background(0);
  } 
}

