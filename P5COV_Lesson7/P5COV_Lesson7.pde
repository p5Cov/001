// p5Cov processing coventry workshop 001
// lesson 7
// Dec 12th 2014
// ashleyjamesbrown

int red=0;
int green=200;
int blue=0;
int alpha=1;

int gridScale=80;
int cols=10;
int rows=7;

//float rot =0;

float [] colours; //basic array t store numbers


// arrays - a list of variables

void setup() {
  size(800, 600);
  background(0);

  //decalre colour array - must be done to set the size of the array
  colours = new float[100]; //so 0 - 99 for reference

  generateColour();
  drawGrid();
}



void draw() {
  // background(0);
  // drawGrid();
}



void generateColour() {
  for (int i = 0; i < 100; i++) {
    colours[i] = i*3; // gives from 0 - 200
   // colours[i]= random(0, 255);
  }
}


void drawGrid() {

  int counter=0; // to cycle through our array one at a time

  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      //position of the start of the rectangle is to take each position in the column and row and then mutiply it by the size of the rectangle
      int x = i*gridScale;
      int y = j*gridScale;

      fill(colours[counter+j]);
      noStroke();

      //  pushMatrix();
      //  translate(x,y);
      //  rotate(rot);
      //  rect(0,0,gridScale-mouseX,gridScale-mouseY);
      rect(x, y, gridScale, gridScale); //in this we are drawing the square the exact size of the distance we are using so we get nice full boxes.
      //  popMatrix();
    }
    counter=counter+rows;
  }
}




void keyPressed() {

  if (key=='s') {
    saveFrame("P5CovImage-###.jpg");
  } else
    if (key==' ') {
    background(0);
  } else
    if (key=='1') {
    //  rot=random(0,90);
  }
}



void mousePressed() {
  //
  generateColour();
  drawGrid();
}

