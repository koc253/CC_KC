//Kayhan Celik, KC. Interactive Routine 

import ddf.minim.*;

Minim minim;
AudioPlayer clothes;
AudioPlayer doors;
boolean showbook1 = false;
PImage wooden;
PImage dorm1;
PImage dorm2;
PImage dorm3;
PImage backpack;
PImage background;
PImage book1;
PImage book2;
PImage folder;
PImage penc;
PImage notepad;
PImage teddy;
PImage check;
PImage done;
PImage cross;
PImage speechbubble;
PImage mom;
PImage dad;
PImage wrap;
PImage taco;
PImage dadspeech3;
PImage momspeech;
PImage door;
PImage dadspeech4;
PImage familyroom;
PImage tacosspeech;
PImage sandwichspeech;
PImage wrapspeech;
PImage granite;
PImage PBJ;

PFont font1;
PFont font2;
PFont font3;
PFont font4;
float XRandom = random(0, 800);
float YRandom = random( 300, 400); 
float XBag = XRandom + 100;
float YBag = YRandom +100 ;

float randombook1x = random(0, 200);
float randombook1y = random(35, 200);
float book1length = randombook1x + 90;
float book1width = randombook1y + 90;

float teddyx = random(0, 222);
float teddyy = random(200, 400);
float teddylength = teddyx + 90;
float teddywidth = teddyy + 90;



float randombook2x = random(250, 410);
float randombook2y = random(220, 350);
float book2length = randombook2x + 90;
float book2width = randombook2y + 90;

float pencx = random(222, 444);
float pency = random(44, 200);
float penclength = pencx + 90;
float pencwidth = pency + 90;

float folderx = random(450, 666);
float foldery = random(44, 200);
float folderlength = folderx + 90;
float folderwidth = foldery + 90;

float notepadx = random(450, 696);
float notepady = random(250, 350);
float notepadlength = notepadx + 90;
float notepadwidth = notepady + 90;
int scene = 99;




void setup() {
  size(900, 600);
}





void draw() {


  font1 = loadFont( "Corbel-48.vlw");
  font2 = loadFont( "BerlinSansFB-Bold-48.vlw");
  font3 = loadFont( "Candles-48.vlw");
  font4 = loadFont( "ChaparralPro-Bold-48.vlw");









  if (scene == 1) {
    background(0);
    textFont(font1, 30);
    fill(255);
    textAlign(CENTER);
    text("  but before you do,", 450, 50);

    textFont(font1, 70);
    fill(255);
    textAlign(CENTER);
    text(" CHOOSE A ROOM ", 440, 113);


    dorm1 = loadImage("dorm1.jpg");
    dorm1.resize(300, 200);
    image(dorm1, 0, 150);

    dorm2 = loadImage("dorm2.jpg");
    dorm2.resize(300, 200);
    image(dorm2, 300, 390);

    dorm3 = loadImage("dorm3.jpg");
    dorm3.resize(300, 200);
    image(dorm3, 600, 150);
  }

  if (scene == 1 && mouseX<300 && mouseX>0 && mouseY>150 && mouseY<350) {
    fill(255);
    rect(0, 130, 320, 240);
    dorm1 = loadImage("dorm1.jpg");
    dorm1.resize(300, 200);
    image(dorm1, 0, 150);
  }


  if (scene == 1 && mouseX<600 && mouseX>300 && mouseY>390 && mouseY<590) {
    fill(255);
    rect(280, 370, 340, 240);
    dorm2 = loadImage("dorm2.jpg");
    dorm2.resize(300, 200);
    image(dorm2, 300, 390);
  }

  if (scene == 1 && mouseX<900 && mouseX>600 && mouseY>150 && mouseY<350) {
    fill(255);
    rect(580, 130, 340, 240);
    dorm3 = loadImage("dorm3.jpg");
    dorm3.resize(300, 200);
    image(dorm3, 600, 150);
  }


  if (scene == 2) {
    background(0);
    dorm1 = loadImage("dorm1.jpg");
    dorm1.resize(900, 600);
    image(dorm1, 0, 0);


    backpack = loadImage("backpack.png");
    backpack.resize(120, 100);
    image(backpack, XRandom, YRandom);


    fill(255);
    rect(0,0,900,70);


    textFont(font2, 59);
    fill(#458BA0);
    textAlign(CENTER);
    text("   You 're  late!  Find your bag! ", 429, 50);
  }

  if (scene == 3) {
    background(0);
    dorm2 = loadImage("dorm2.jpg");
    dorm2.resize(900, 600);
    image(dorm2, 0, 0);

    backpack = loadImage("backpack.png");
    backpack.resize(120, 100);
    image(backpack, XRandom, YRandom);
   
    fill(255);
    rect(0,0,900,70);
    
    
    textFont(font2, 60);
    fill(#458BA0);
    textAlign(CENTER);
    text("   You're late! Find your bag! ", 430, 50);
  }


  if (scene == 4) {
    background(0);
    dorm3 = loadImage("dorm3.jpg");
    dorm3.resize(900, 600);
    image(dorm3, 0, 0);

    backpack = loadImage("backpack.png");
    backpack.resize(120, 100);
    image(backpack, XRandom, YRandom);
    
    fill(255);
    rect(0,0,900,70);
    
    textFont(font2, 60);
    fill(#458BA0);
    textAlign(CENTER);
    text("   You're late! Find your bag! ", 430, 50);
  }

  if (scene == 5) {
    background(0);
    wooden = loadImage("wooden.jpg");
    wooden.resize(900, 600);
    image(wooden, 00, 0);

    textFont(font4, 30);
    fill(255);
    textAlign(CENTER);
    text(" What do you want to bring? Click the check mark when done.  ", 460, 27);

    backpack = loadImage("backpack.png");
    backpack.resize(600, 440);
    image(backpack, 180, 400);

    book1 = loadImage("book1.png");
    book1.resize(90, 90);
    image(book1, randombook1x, randombook1y);

    book2 = loadImage("book2.png");
    book2.resize(90, 90);
    image(book2, randombook2x, randombook2y);

    folder = loadImage("folder.png");
    folder.resize(90, 90);
    image(folder, folderx, foldery);

    penc = loadImage("penc.png");
    penc.resize(90, 90);
    image(penc, pencx, pency);

    notepad = loadImage("notepad.png");
    notepad.resize(90, 90);
    image(notepad, notepadx, notepady);

    teddy = loadImage("teddy.png");
    teddy.resize(90, 90);
    image(teddy, teddyx, teddyy);

    done = loadImage("done.png");
    done.resize(100, 100);
    image(done, 800, 500);
    
    textFont(font1, 20);
    fill(255);
    text(" Livingroom ", 840, 495);
    
  }

  if (scene == 6) {

    background(0);
    familyroom = loadImage("familyroom.jpg");
    familyroom.resize(900, 600);
    image(familyroom, 00, 0);


    momspeech = loadImage("momspeech.png");
    momspeech.resize(340, 120);
    image(momspeech, 100, 100);
    
    sandwichspeech = loadImage("sandwichspeech.png");
    sandwichspeech.resize(260, 120);
    image(sandwichspeech, 20, 450);
    
    wrapspeech = loadImage("wrapspeech.png");
    wrapspeech.resize(260, 120);
    image(wrapspeech, 290, 450);
    
    tacosspeech = loadImage("tacosspeech.png");
    tacosspeech.resize(260, 145);
    image(tacosspeech, 550, 450);
    
    
  }


  //wrap
  if (scene == 8) {

    background(0);
    granite = loadImage("granite.JPG");
    granite.resize(900, 600);
    image(granite, 00, 0);
    
    wrap = loadImage("wrap.png");
    wrap.resize(400, 300);
    image(wrap, 300, 100);

    backpack = loadImage("backpack.png");
    backpack.resize(600, 440);
    image(backpack, 180, 400);
  
  
    done = loadImage("done.png");
    done.resize(100, 100);
    image(done, 800, 500);
 
    textFont(font1, 20);
    fill(255);
    text(" Outside ", 840, 495);
 
 
    dadspeech4 = loadImage("dadspeech4.png");
    dadspeech4.resize(400, 200);
    image(dadspeech4, 00, 0);
 
 }


  //sandwich
  if (scene == 7) {

    background(0);
    granite = loadImage("granite.JPG");
    granite.resize(900, 600);
    image(granite, 00, 0);

    
    PBJ = loadImage("PBJ.png");
    PBJ.resize(300, 300);
    image(PBJ, 300, 100);

    backpack = loadImage("backpack.png");
    backpack.resize(600, 440);
    image(backpack, 180, 400);
  
  
    done = loadImage("done.png");
    done.resize(100, 100);
    image(done, 800, 500);
 
    textFont(font1, 20);
    fill(255);
    text(" Outside ", 840, 495);

    dadspeech4 = loadImage("dadspeech4.png");
    dadspeech4.resize(400, 200);
    image(dadspeech4, 00, 0);
 
 }


  if (scene == 9) {

    granite = loadImage("granite.JPG");
    granite.resize(900, 600);
    image(granite, 00, 0);

    
    taco = loadImage("taco.png");
    taco.resize(300, 300);
    image(taco, 300, 100);

    backpack = loadImage("backpack.png");
    backpack.resize(600, 440);
    image(backpack, 180, 400);
  
  
    done = loadImage("done.png");
    done.resize(100, 100);
    image(done, 800, 500);
 
    textFont(font1, 20);
    fill(255);
    text(" Outside ", 840, 495);
 
 
    dadspeech4 = loadImage("dadspeech4.png");
    dadspeech4.resize(400, 200);
    image(dadspeech4, 00, 0);
 
  }

  // good ending and start over screen


  if (scene == 10) {
    background(255);

    door = loadImage("frontdoor.jpg");
    door.resize(900, 600);
    image(door, 0, 0);


    textFont(font4, 30);
    fill(255);
    text("  You made it! Go ahead, step outside!  ", 440, 20);

  }
  
  
    if (scene == 11) {
    background(0);

 


    textFont(font4, 30);
    fill(255);
    text("  Oh- Oh no...  ", 440, 300);

  }
  
  if (scene == 12) {
    background(0);

 


    textFont(font4, 30);
    fill(255);
    text("  It was a dream!?  ", 440, 300);

  }
  
   if (scene == 13) {
    background(0);

 


    textFont(font4, 30);
    fill(255);
    text(" LEFT CLICK TO WAKE UP! ", 440, 300);

  }




  if (scene == 99) {

    background(0);
    textFont(font1, 80);
    fill(255);
    textAlign(CENTER);
    text(" LEFT CLICK TO WAKE UP ", 450, 500);


    textFont(font1, 80);
    fill(255);
    text(" MORNING SIMULATOR  ", 459, 100);


    textFont(font1, 40);
    String s = " Welcome to a simulation of a morning in the life of an average teenager. Your goal is to pack your (preferred) utencils, take your lunch of choice and leave your house. To begin the simulation, please left click on the screen. " ; 
    fill(255);
    text(s, 150, 190, 600, 200);
  }
}


void mousePressed() {
  if (scene == 99 && (mouseX > 0 && mouseX<900) && (mouseY>0 && mouseY<600)) {
    scene = 1;
  } else if (scene == 1 && (mouseX>0 && mouseX<300) && (mouseY>150 && mouseY<350)) {
    scene = 2;
  } else if ( scene == 1 && (mouseX>300 && mouseX<600) && (mouseY>370 && mouseY<570)) {
    scene = 3;
  } else if (scene == 1 && (mouseX>600 && mouseX<900) && (mouseY>150 && mouseY<350)) {
    scene = 4;
  } else if (scene == 2 && (mouseX>XRandom && mouseX<XBag) && (mouseY>YRandom && mouseY<YBag)) {
    scene = 5;
  } else if (scene == 3 && (mouseX>XRandom && mouseX<XBag) && (mouseY>YRandom && mouseY<YBag)) {
    scene = 5;
  } else if (scene == 4 && (mouseX>XRandom && mouseX<XBag) && (mouseY>YRandom && mouseY<YBag)) {
    scene = 5;
  } else if (scene == 5 && (mouseX>randombook1x && mouseX<book1length) && (mouseY>randombook1y && mouseY<book1width)) {
    check = loadImage("check.png");
    check.resize(80, 80);
    image(check, randombook1x, randombook1y);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  } else if (scene == 5 && (mouseX>randombook2x && mouseX<book2length) && (mouseY>randombook2y && mouseY<book2width)) {
    check = loadImage("check.png");
    check.resize(80, 80);
    image(check, randombook2x, randombook2y);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  } else if (scene == 5 && (mouseX>pencx && mouseX<penclength) && (mouseY>pency && mouseY<pencwidth)) {
    check = loadImage("check.png");
    check.resize(80, 80);
    image(check, pencx, pency);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  } else if (scene == 5 && (mouseX>teddyx && mouseX<teddylength) && (mouseY>teddyy && mouseY<teddywidth)) {
    check = loadImage("check.png");
    check.resize(80, 80);
    image(check, teddyx, teddyy);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  } else if (scene == 5 && (mouseX>notepadx && mouseX<notepadlength) && (mouseY>notepady && mouseY<notepadwidth)) {
    check = loadImage("check.png");
    check.resize(80, 80);
    image(check, notepadx, notepady);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  }
    else if (scene == 7 && (mouseX>300 && mouseX<600) && (mouseY>100 && mouseY<400)) {
    check = loadImage("check.png");
    check.resize(140, 140);
    image(check, 360, 164);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  }
  
  
    else if (scene == 8 && (mouseX>300 && mouseX<700) && (mouseY>100 && mouseY<400)) {
    check = loadImage("check.png");
    check.resize(140, 140);
    image(check, 400, 164);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  }
  
  
    
    else if (scene == 9 && (mouseX>300 && mouseX<650) && (mouseY>100 && mouseY<400)) {
    check = loadImage("check.png");
    check.resize(140, 140);
    image(check, 400, 164);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  }
    else if (scene == 5 && (mouseX>folderx && mouseX<folderlength) && (mouseY>foldery && mouseY<folderwidth)) {
    check = loadImage("check.png");
    check.resize(80, 80);
    image(check, folderx, foldery);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
  } else if (scene == 5 && (mouseX>800 && mouseX<900) && (mouseY>500 && mouseY<600)) {
    scene = 6;
  } else if (scene == 6 && (mouseX>20 && mouseX<280) && (mouseY>450 && mouseY<610)) {
    scene = 7;
  } else if (scene == 6 && (mouseX>290 && mouseX<550 && (mouseY>450 && mouseY<610))) {
    scene = 8;
  }  else if (scene == 6 && (mouseX>550 && mouseX<810 && (mouseY>450 && mouseY<610))) {
    scene = 9;
 
  }
  
  else if (scene == 7 && (mouseX>800 && mouseX<900) && (mouseY>500 && mouseY<600)) {
    scene = 10;
  } 
  
  else if (scene == 8 && (mouseX>800 && mouseX<900) && (mouseY>500 && mouseY<600)) {
    scene = 10;
  } 
  
  else if (scene == 9 && (mouseX>800 && mouseX<900) && (mouseY>500 && mouseY<600)) {
    scene = 10;
  } 
  
 else if (scene == 10 && (mouseX>400 && mouseX<700) && (mouseY>100 && mouseY<600)) {
    scene = 11;
    
    minim = new Minim(this);
    doors = minim.loadFile("doors.mp3");
    doors.play();
  }  else if (scene == 11 && (mouseX>0 && mouseX<900) && (mouseY>0 && mouseY<600)) {
    scene = 12;
  }   else if (scene == 12 && (mouseX>0 && mouseX<900) && (mouseY>0 && mouseY<600)) {
    scene = 13;
  }  else if (scene == 13 && (mouseX>0 && mouseX<900) && (mouseY>0 && mouseY<600)) {
    scene = 1;
  }
}