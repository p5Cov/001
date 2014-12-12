// p5Cov processing coventry workshop 001
// lesson 2
// Dec 12th 2014
// ashleyjamesbrown

// iteration using conditionals part 1

void setup(){
  size(800,600);
  background(0);
  noLoop(); //either put the code into setup, or keyPressed or use noLoop if in the draw to stop it repeating
}

void draw(){
  //create many circles
  for (int i=0; i<600; i++) {
    noStroke();
    fill(random(0,255),random(0,255),random(0,255),90);
    ellipse(random(0,width),i+10,50,50);
   }
 
  

}

void keyPressed(){
 saveFrame("P5CovImage-###.jpg"); 
}
