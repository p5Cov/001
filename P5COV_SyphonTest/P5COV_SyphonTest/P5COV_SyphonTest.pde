
void setup() {
  size(800, 600, OPENGL); //must declare either OPENGL, P3D, P2D etc for it to work
  setupSyphon(); //call our function
}

void draw() {
  //test code to demo
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(random(0,width),random(0,height),20,20);

  //final line in the draw
  sendSyphon(); //call our function
}

