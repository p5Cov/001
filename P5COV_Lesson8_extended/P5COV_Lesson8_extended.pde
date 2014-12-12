// p5Cov processing coventry workshop 001
// lesson 8
// Dec 12th 2014
// ashleyjamesbrown




PImage img,newImage;

void setup(){
  size(800,600);
  background(0);
  
  //loads the image from the data folder into the PImage variable
  img = loadImage("sea.jpg");

  img.loadPixels();
 
  // general call to load pixel data to the display - must be done before you can access the pixels[] and then call updatePixels() to display changes back to the screen - remeber image hasnt been overwritten - on;ly displayed changes
  loadPixels();
  
  //display the original image - of course once we draw to the screen this then gets overwritten
  //image(img,0,0);
  
}



void draw(){
  
  
      
  // color c = img.get(mouseX, mouseY); // pull the pixel from the array underneath the mouse and get the colour held in it
 //  fill(c);
  // rect(mouseX,mouseY,20,20);
  
// changePixelColour();
 
// makeNewImage();
  
}



void changePixelColour(){
  
  
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {
      
      int loc = x + y*img.width;
     
      float r,g,b;
      r = red (img.pixels[loc]);
      g = green (img.pixels[loc]);
      b = blue (img.pixels[loc]);
      //do soemthing to alter the colours
     
      // fill the pixel back with the colour
      color c = color(r, g, b);
      pixels[y*width + x] = c*2; // multiply c and you get saturation
     
      
    }
  }
  
 //update the pixels and show them 
 img.updatePixels();
 updatePixels();

  
}



void makeNewImage(){
  
  newImage = createImage(img.width,img.height,RGB);
  newImage.loadPixels();
 
   for (int n = 0; n <  newImage.pixels.length; n+=1) {
 //copy the pixels over in order intop the new Image
        newImage.pixels[n] = img.pixels[n];
   }

 //update the pixels   
 newImage.updatePixels();
//show the image
//image(newImage,0,0);
 
 int gridScale=10;
 
 for (int q=0; q<newImage.width; q++){
  for (int r=0; r<newImage.height; r++){
     
      color c = newImage.get(q,r);
      noStroke();
      fill(c*2); //saturates the colour if we double it
      
      int x = q*gridScale;
      int y = r*gridScale;
      
      x=x+int((random(0,10)));
      y=y+int((random(0,10)));
      //draw a rectangle at the pixel position filled with the pixel colour
      //lets try playing with its size
      rect(x,y,20,20);
  } 
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
//
 // makeNewImage();
}
