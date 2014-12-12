//copy and paste this TAB into your code


//import lib
import codeanticode.syphon.*;
//declare object
SyphonServer server;


//methods
void setupSyphon() {
  // Create syhpon server to send frames out.
  String sketchName = "Processing Syphon Test";
  server = new SyphonServer(this, sketchName);
}

void sendSyphon() {
  server.sendScreen();
}


//remember to add the following to your main code
// 
// 
//void setup() {
//  size(800, 600, OPENGL); //must declare either OPENGL, P3D, P2D etc for it to work
//  setupSyphon(); //call our function
//}

//void draw() {
//
//
//  //final line in the draw
//  sendSyphon(); //call our function
//}


