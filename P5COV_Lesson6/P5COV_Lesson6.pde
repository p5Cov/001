// p5Cov processing coventry workshop 001
// lesson 6
// Dec 12th 2014
// ashleyjamesbrown


//grid based drawing

int red=0;
int green=200;
int blue=0;
int alpha=90;

int gridScale=80;
int cols=10;
int rows=7;

void setup(){
  size(800,600);
  background(0);
}



void draw(){
  drawGrid();
}

void drawGrid(){
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      //position of the start of the rectangle is to take each position in the column and row and then mutiply it by the size of the rectangle
      int x = i*gridScale;
      int y = j*gridScale;
      
      fill(red,green,blue);
      stroke(0);
      pushMatrix();
      translate(x,y);
      rotate(mouseY);
      rect(0,0,mouseX,mouseY);
     // rect(x,y,gridScale,gridScale); //in this we are drawing the square the exact size of the distance we are using so we get nice full boxes.
      popMatrix();
    }
  }
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
  drawGrid();
//
}
