
//MOUSE MOVEMENT will randomize the color of the filling
//CLICKING will change the color of the background
//The window is divided into four sections 




float r = 255;
float g = 255 ; 
float b = 255;
int i = 0;
int o = 0;
int value = 255;

void setup() {
  size(700, 700);

}


void draw() {

  background(r,g,b);

for (int i = 0; i<width; i = i+50){
  for (int o = 0; o<height; o = o+50){
  strokeWeight(random(0,15));
    fill(value);
    ellipse(o+25,i+25,25,25);
if (mouseX>350 && mouseY>350){
  rect(350,350,350,350);
}
if (mouseX>350 && mouseY<350){
  rect(350,0,350,350);
}
if (mouseX<350 && mouseY>350){
  rect(0,350,350,350);
}
if (mouseX<350 && mouseY<350){
  rect(0,0,350,350);
}
  }
}

}
void mousePressed(){
 if (mousePressed) {
 r = random (0,255);
  b = random (0,255);
   g = random (0,255);
}    
}
 void mouseMoved(){
  value = value - 250;
  if (value>255){
    value = 0;
  }
 
 }
 

   
   
//  float x = 0;
 // while (x<width){
//   float y = 0;
  // while (y<height-25){
   //  strokeWeight(random(0,15));
  //   fill(r,g,b);
    // ellipse(x+25,y+25,25,25);
  //    y = y + 50;}
     
   //  x = x + 50; }
    

 