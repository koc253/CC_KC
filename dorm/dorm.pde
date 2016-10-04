
PImage dorm1;
PImage dorm2;
PImage dorm3;
PImage backpack;
PImage background;
PFont font1;
PFont font2;
PFont font3;
float XRandom = random(0,width);

void setup(){
  size(900,600);
  background(0);
  font1 = loadFont( "EdwardianScriptITC-48.vlw");

 dorm1 = loadImage("dorm1.jpg");
    dorm1.resize(300,200);
    image(dorm1, 0,150);
    
 dorm2 = loadImage("dorm2.jpg");
    dorm2.resize(300,200);
    image(dorm2, 300,370);
    
 dorm3 = loadImage("dorm3.jpg");
    dorm3.resize(300,200);
    image(dorm3, 600,150);
    
textFont(font1, 100);
fill(255);
textAlign(CENTER);
text("Choose a dorm room", 430,100);

}


void draw(){
  
  
   
    
    

  
}

void mousePressed(){
  
 if((mouseX>0 && mouseX<300) && (mouseY>150 && mouseY<350)){
    dorm1 = loadImage("dorm1.jpg");
    dorm1.resize(900,600);
    image(dorm1, 0,0);
    
   font2 = loadFont( "FranklinGothic-Heavy-48.vlw");
    textFont(font2, 60);
    fill(20,149,211);
    textAlign(CENTER);
    text("You're late! Find your bag!", 430,100);
    
    backpack = loadImage("backpack.png");
    backpack.resize(120,120);
    image(backpack, XRandom,320);
     
      
 
       
    
    
    
    
    
    
    
    
    
 }
 else if((mouseX>300 && mouseX<600) && (mouseY>370 && mouseY<570)){
    dorm2 = loadImage("dorm2.jpg");
    dorm2.resize(900,600);
    image(dorm2, 0,0);
    
    
    font2 = loadFont( "FranklinGothic-Heavy-48.vlw");
    textFont(font2, 60);
    fill(20,149,211);
    textAlign(CENTER);
    text("You're late! Find your bag!", 430,100);
    
    
    
    
    
    backpack = loadImage("backpack.png");
    backpack.resize(120,120);
    image(backpack, 340,320);
    
    
    
 }
 
  else if((mouseX>600 && mouseX<900) && (mouseY>150 && mouseY<350)){
    dorm3 = loadImage("dorm3.jpg");
    dorm3.resize(900,600);
    image(dorm3, 0,0);
    
    
    font3 = loadFont( "FranklinGothic-Heavy-48.vlw");
    textFont(font3, 60);
    fill(20,149,211);
    textAlign(CENTER);
    text("You're late! Find your bag!!", 430,100);
    
    
    
    
     backpack = loadImage("backpack.png");
    backpack.resize(120,120);
    image(backpack, 490,320);
    
    
    
  }}