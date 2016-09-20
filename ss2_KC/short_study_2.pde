//BS Paint  by Kayhan ''KC'' Celik

//INSTRUCTIONS: 
//Pressing 1 will choose the Ellipse tool
//Pressing 2 will choose the line-drawing tool
//Pressing 3 will choose the triangle tool
//Pressing 4 will choose the square tool
  
int white = 255;

void setup() { 
  size(800, 800);
  background(white);
}

void draw() {
}

//NO SEMI COLONS GOD DAMNIT

void keyPressed() {
  if (key == '0')
  {
    background(white);
  }
  

}


void mousePressed() { 

  if ( key == '4' )
  {
    strokeWeight(5);
    stroke(0);
    rectMode(CENTER);
    rect(mouseX, mouseY, 100, 100);
  }

   if (key == '1' )
  {
    strokeWeight(5);
    stroke(0);
    ellipse(mouseX, mouseY, 200, 200 );
  }
  if (key == '3' )
  {
    strokeWeight(5);
    stroke(0);
    triangle(mouseX-80, mouseY+50, mouseX+80, mouseY-10, mouseX, mouseY-70 );
  }
}

void mouseDragged() {
  if (key == '2' )
  
  {  stroke(0);
  strokeWeight(5);
    line(mouseX, mouseY, pmouseX, pmouseY);
  
  }
}
