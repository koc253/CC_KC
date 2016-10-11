//Kayhan Celik, KC. Interactive Routine 

import ddf.minim.*;

Minim minim;
AudioPlayer clothes;
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
PImage dadspeech;
PImage dadspeech2;
PImage dadspeech3;
PImage momspeech;
PImage door;
PImage dadspeech4;

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
int scene = 1;



void setup() {
  size(900, 600);



  dorm1 = loadImage("dorm1.jpg");
  dorm1.resize(300, 200);
  image(dorm1, 0, 150);
}





void draw() {
 
  
  font1 = loadFont( "18thCentury-48.vlw");
  font2 = loadFont( "BerlinSansFB-Bold-48.vlw");
  font3 = loadFont( "Candles-48.vlw");
  font4 = loadFont( "ChaparralPro-Bold-48.vlw");
  if (scene == 1) {
   background(0);
    textFont(font1, 100);
    fill(255);
    textAlign(CENTER);
    text("   Click! Choose a room.", 410, 100);


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
  
  if(scene == 1 && mouseX<300 && mouseX>0 && mouseY>150 && mouseY<350){
    fill(255);
    rect(0, 130,320,240);
    dorm1 = loadImage("dorm1.jpg");
    dorm1.resize(300, 200);
    image(dorm1, 0, 150);
  }
  
  
  if(scene == 1 && mouseX<600 && mouseX>300 && mouseY>390 && mouseY<590){
    fill(255);
    rect(280, 370,340,240);
    dorm2 = loadImage("dorm2.jpg");
    dorm2.resize(300, 200);
    image(dorm2, 300, 390);
  
}

  if(scene == 1 && mouseX<900 && mouseX>600 && mouseY>150 && mouseY<350){
    fill(255);
    rect(580, 130,340,240);
    dorm3 = loadImage("dorm3.jpg");
    dorm3.resize(300, 200);
    image(dorm3, 600, 150);
  
}
   
  
  if (scene == 2){
     background(0);
    dorm1 = loadImage("dorm1.jpg");
    dorm1.resize(900, 600);
    image(dorm1, 0, 0);
    
    
    backpack = loadImage("backpack.png");
    backpack.resize(120, 100);
    image(backpack, XRandom, YRandom);
    
    textFont(font2, 60);
    fill(#458BA0);
    textAlign(CENTER);
    text("   You're late! Find your bag! ", 430, 50);
  }
  
  if (scene == 3){
     background(0);
    dorm2 = loadImage("dorm2.jpg");
    dorm2.resize(900, 600);
    image(dorm2, 0, 0);
    
    backpack = loadImage("backpack.png");
    backpack.resize(120, 100);
    image(backpack, XRandom, YRandom);
    
    textFont(font2, 60);
    fill(#458BA0);
    textAlign(CENTER);
    text("   You're late! Find your bag! ", 430, 50);
  }
  
  
  if (scene == 4){
     background(0);
    dorm3 = loadImage("dorm3.jpg");
    dorm3.resize(900, 600);
    image(dorm3, 0, 0);
    
    backpack = loadImage("backpack.png");
    backpack.resize(120, 100);
    image(backpack, XRandom, YRandom);
    
    textFont(font2, 60);
    fill(#458BA0);
    textAlign(CENTER);
    text("   You're late! Find your bag! ", 430, 50);
  }
  
  if (scene == 5){
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
    

    

}
    
 if (scene == 6){
  
    background(255);
    
    mom = loadImage("mom.jpg");
    mom.resize(800, 600);
    image(mom, 200, 0);
    
    momspeech = loadImage("momspeech.png");
    momspeech.resize(400, 200);
    image(momspeech, 120, 10);
    
    textFont(font1, 40);
    fill(#0B4DA0);
    textAlign(CENTER);
    text("     a) ''Bye, Mom. ''  ",140, 480);
    
    textFont(font3, 40);
    fill(#930014);
    textAlign(CENTER);
    text("     b) ''  Whatever MOM, Ugh!   ''  ", 300, 570);
    
    textFont(font4, 30);
    fill(0);
    textAlign(CENTER);
    text("                     Click on your response:   ", 100, 400);
  }


//badresponse to mom leads to
 if (scene == 8){
  
    background(255);
    
    dad = loadImage("dad.png");
    dad.resize(950, 750);
    image(dad, -300, 100);
    
    dadspeech = loadImage("dadspeech.png");
    dadspeech.resize(650, 150);
    image(dadspeech, 40, 10);
    
    textFont(font1, 40);
    fill(#0B4DA0);
    textAlign(CENTER);
    text("     a) ''Okay, I'm sorry. ''  ",500, 300);
    
    textFont(font3, 30);
    fill(#930014);
    textAlign(CENTER);
    text("                    b) '' Shut up Larry you're not even my dad! ''  ", 500, 400);
    
    textFont(font4, 30);
    fill(0);
    textAlign(CENTER);
    text("                                     Click on your response:   ", 360, 200);
  }


//goodresponse to mom leads to
 if (scene == 7){
  
    background(255);
    
    dad = loadImage("dad.png");
    dad.resize(950, 750);
    image(dad, -300, 100);
    
    dadspeech2 = loadImage("dadspeech2.png");
    dadspeech2.resize(650, 150);
    image(dadspeech2, 40, 10);
    
    textFont(font1, 40);
    fill(#0B4DA0);
    textAlign(CENTER);
    text("     a) ''Thanks. ''  ",500, 300);
    
    textFont(font3, 30);
    fill(#930014);
    textAlign(CENTER);
    text("        b) ''L8r bro. ''  ", 500, 400);
    
    textFont(font4, 30);
    fill(0);
    textAlign(CENTER);
    text("                                     Click on your response:   ", 360, 200);
  }
  
  
  if (scene == 9){
   
    background(255);
    
    dad = loadImage("dad.png");
    dad.resize(2000, 1990);
    image(dad, -900, 100);
    
    dadspeech4 = loadImage("dadspeech4.png");
    dadspeech4.resize(850, 350);
    image(dadspeech4, 40, 60); 
    
    textFont(font1, 60);
    fill(#0B4DA0);
    textAlign(CENTER);
    text("   a)  '' Okay... ''   ",600, 400);
    

    
    
  }
  
    // good ending and start over screen
    
    
  if (scene == 10){
    background(255);
    
    door = loadImage("door.png");
    door.resize(225, 450);
    image(door, 300, 50);
 
   
    textFont(font4, 30);
    fill(0);
    textAlign(CENTER);
    text("  YAY! You made it to the outdoors!   ", 440, 30);
    
    
    textFont(font4, 30);
    fill(0);
    textAlign(CENTER);
    text("                 Wanna start over?   ", 360, 560);

  
    
  }

}


void mousePressed() {

  if (scene == 1 && (mouseX>0 && mouseX<300) && (mouseY>150 && mouseY<350)) {
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
  } else if (scene == 5 && (mouseX>folderx && mouseX<folderlength) && (mouseY>foldery && mouseY<folderwidth)) {
    check = loadImage("check.png");
    check.resize(80, 80);
    image(check, folderx, foldery);

    minim = new Minim(this);
    clothes = minim.loadFile("clothes.mp3");
    clothes.play();
     } 
     
   

 else if (scene == 5 && (mouseX>800 && mouseX<900) && (mouseY>500 && mouseY<600)) {
    scene = 6;
     }
     
  else if (scene == 6 && (mouseX>30 && mouseX<250) && (mouseY>410 && mouseY<490)) {
    scene = 7;
}
   else if (scene == 6 && (mouseX>10 && mouseX<570 && (mouseY>530 && mouseY<585))) {
    scene = 8;
   }
  else if (scene == 7 && (mouseX>430 && mouseX<600 && (mouseY>270 && mouseY<310))) {
    scene =10;
  } else if (scene == 8 && (mouseX>400 && mouseX<600 && (mouseY>250 && mouseY<320))) {
    scene = 10;
  }
   else if (scene == 7 && (mouseX>430 && mouseX<600 && (mouseY>380 && mouseY<415))) {
    scene = 10;
  } else if (scene == 8 && (mouseX>220 & mouseX<600 && (mouseY>335 && mouseY<400))) {
    scene = 9;
  }
   else if (scene == 9 && (mouseX>455 & mouseX<790 && (mouseY>350 && mouseY<400))) {
    scene = 1;
  }
  else if (scene == 10 && (mouseX>400 && mouseX<550) && (mouseY>500 && mouseY<600)) {
    scene = 1;
  }
}