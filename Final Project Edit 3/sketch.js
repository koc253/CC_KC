//Player 1: Choose W,S, or D. Player 2: Choose I,J,K. Space to find out who won! 0 to restart.
// When function is Choose, make it so when three seconds pass it goes to function Shoot. number 0 when pressed
// will make function choose play gagin.

// choice = 0 (skip turn)
// choice = 1 (reload)
// choice = 2 (shoot)
// choice = 3 (duck)
var Skip = 0;
var Rel = 1;
var Sht = 2;
var Dck = 3;
var menuFont;
var strum;

var countDown = false;

var currentTime = 0;
var saveTime = 0;
var timer = 3;
var gifTimer = 3000;

var stageSelect = 0;

var p1Choice = 0;
var p2Choice = 0;
var redChords = 0;
var blueChords = 0;


//Image Varubles
var Inst;

var redG;
var redAmp;
var redGAttack;
var redGDuck;
var redGLose;
var redGTune;

var blueG;
var blueAmp;
var blueGAttack;
var blueGDuck;
var blueGLose;
var blueGTune;

function preload(){
  menuFont = loadFont('libraries/BroshK.ttf');
}

function setup() {
  createCanvas(1000, 600);
  Inst = loadImage('images/Instructions.jpg');
  strum = loadSound('sound/strum.mp3');
  
  redG = loadGif('images/Red-Guitarist.gif');
  redAmp = loadImage('images/Red-Amp.gif');
  redGAttack = loadGif('images/Red-Guitarist-Attack.gif');
  redGDuck = loadGif('images/Red-Guitarist-Duck.gif');
  redGLose = loadGif('images/Red-Guitarist-Lose.gif');
  redGTune = loadGif('images/Red-Guitarist-Tuning.gif');
  
  blueG = loadGif('images/Blue-Guitarist.gif');
  blueAmp = loadImage('images/Blue-Amp.gif');
  blueGAttack = loadGif('images/Blue-Guitarist-Attack.gif');
  blueGDuck = loadGif('images/Blue-Guitarist-Duck.gif');
  blueGLose = loadGif('images/Blue-Guitarist-Lose.gif');
  blueGTune = loadGif('images/Blue-Guitarist-Tuning.gif');

  MainMenu();
  
   
}

function draw() {
  //console.log("Player 1:" + p1Choice);
  //console.log("Player 2:" + p2Choice);
  console.log ("ct: " + currentTime);
  console.log ("st: " + saveTime);
  console.log ("Red Tune: " + redChords);
  console.log ("Blue Tune: " + blueChords);
  console.log("SS: " + stageSelect);

//count down is a boolean, john would write left and right sides as booleans. 
 if(countDown){
   if(currentTime - saveTime > 3000){
  console.log("Shoot");
  saveTime = currentTime;
  shoot();
  countDown=false;
  }
 }
  currentTime = millis();

  if(stageSelect == 2){
     //Stage
     background(200);
     fill(0);
     rect(0, 500, width, 500);
  //Player 1
  image(redG, 25, 100, 320, 400);
  //Player 2
  image(blueG, 650, 100, 320, 400);
  //Amps
  image(redAmp, 190, 200, 300, 300);
  image(blueAmp, 500, 200, 300, 300);
  }
  
  if(stageSelect == 3){
     //Stage
     background(200);
     fill(0);
     rect(0, 500, width, 500);
  //Player1
  image(redG, 25, 100, 320, 400);
  //Player2
  image(blueGLose, 650, 100, 320, 400);
  //Amps
  image(redAmp, 190, 200, 300, 300);
  image(blueAmp, 500, 200, 300, 300);
  }
  
  if(stageSelect == 4){
     //Stage
     background(200);
     fill(0);
     rect(0, 500, width, 500);
  //Player1
  image(redGLose, 25, 100, 320, 400);
  //Player2
  image(blueG, 650, 100, 320, 400);
  //Amps
  image(redAmp, 190, 200, 300, 300);
  image(blueAmp, 500, 200, 300, 300);
  }
  
  if(stageSelect == 5){
     //Stage
     background(200);
     fill(0);
     rect(0, 500, width, 500);
  //Player 1
  image(redGLose, 25, 100, 320, 400);
  //Player 2
  image(blueGLose, 650, 100, 320, 400);
  //Amps
  image(redAmp, 190, 200, 300, 300);
  image(blueAmp, 500, 200, 300, 300);
  }
  
  if(stageSelect == 6){
     //Stage
     background(200);
     fill(0);
     rect(0, 500, width, 500);
  //Player 1
  image(redG, 25, 100, 320, 400);
  //Player 2
  image(blueG, 650, 100, 320, 400);
    //Amps
  image(redAmp, 190, 200, 300, 300);
  image(blueAmp, 500, 200, 300, 300);
  }
  
  if(stageSelect == 8){
     //Stage
     background(200);
     fill(0);
     rect(0, 500, width, 500);
     //Player 1
     image(blueGTune, 25, 100, 320, 400);
  }
  
  
}

function MainMenu(){
  stageSelect = 1;
  
  background(200);
  fill('#ED225D');
  textFont(menuFont);
  textSize(150);
  text('GUITAR BATTLE', 140, 141);
  
  fill('#ED225D');
  textFont(menuFont);
  textSize(120);
  text('PLAY', 405, 265);
  
  fill('#ED225D');
  textFont(menuFont);
  textSize(90);
  text('INSTRUCTIONS', 299, 355);

  fill('#ED225D');
  textFont(menuFont);
  textSize(90);
  text('OPTIONS', 385, 450);

  fill('#ED225D');
  textFont(menuFont);
  textSize(69);
  text('EXIT', 450, 525);
  
}



function choose(){
  stageSelect = 2;
  gifTimer = currentTime;
}
    
 //Check if Red/Blue Chords are 0

function P1Win(){
  stageSelect = 3;
}

function P2Win(){
  stageSelect = 4;
}

function noWin(){
  stageSelect = 5;
}

function noDie(){
  stageSelect = 6;
}

function rRel(){
  stageSelect = 7;
}

function bRel(){
  stageSelect = 8;
}

function rbRel(){
  stageSelect = 9;
}

function rShoot(){
  stageSelect = 10;
}

function bShoot(){
  stageSelect = 11;
}

function rDuck(){
  stageSelect = 12;
}

function bDuck(){
  stageSelect = 13;
}

function rbDuck(){
  stageSelect = 14;
}


// choice = 0 (skip turn)
// choice = 1 (reload)
// choice = 2 (shoot)
// choice = 3 (duck)

function Instr(){
  stageSelect = 0;
  image(Inst,0,0);
  text("Menu", 440,570);
}

function shoot(){
  
  if ((p1Choice == Skip) && (p2Choice == Skip)){
    noDie();
  }
  if ((p1Choice == Skip) && (p2Choice == Rel)){
    bRel();
  }
  if ((p1Choice == Skip) && (p2Choice == Sht) && (blueChords > 0)){
    P2Win();
  } else {noDie();}
  
  if ((p1Choice == Skip) && (p2Choice == Dck)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Skip)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Rel)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Sht) && (blueChords > 0)){
    P2Win();
  } else {noDie();}
  
  if ((p1Choice == Rel) && (p2Choice == Dck)){
    noDie();
  }
  if ((p1Choice == Sht) && (p2Choice == Skip)){
    P1win();
  }
  if ((p1Choice == Sht) && (p2Choice == Rel)){
    P1Win();
  }
  if ((p1Choice == Sht) && (p2Choice == Sht)){
    noWin();
  }
  if ((p1Choice == Sht) && (p2Choice == Dck)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Skip)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Rel)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Sht)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Dck)){
    noDie();
  }
  
 if (redChords < 0){
   redChords = 0;
 }
 if (blueChords < 0){   
   blueChords = 0;
 }
 if (redChords > 6){
   redChords = 6;
 }
 if (blueChords > 6){   
   blueChords = 6;
 }
}
  
 //if (redChords>0){
 //}
 //if (blueChords>0){
 //}
 //if (redChords=0){
 //}
 //if (blueChords=0){
 //}
 

function keyTyped(){

// Player 1 choice
   if (key=='w'){
     p1Choice = 1;
     redChords = redChords + 1;
     
     
   }
   if (key=='d'){
     p1Choice = 2;
     redChords = redChords - 1;

   }
   if (key=='s'){
     p1Choice = 3;
     strum.play();
   }
   
// Player 2 choice
   if (key=='i'){
     p2Choice = 1;
     blueChords = blueChords + 1;
     
   }
    if (key=='j'){
     p2Choice = 2;
     blueChords = blueChords - 1;

   }
    if (key=='k'){
     p2Choice = 3;
     strum.play();
   }
   
//shoot!
    if (key==' '){
      shoot();
      
    }
    if (key== '0'){
      countDown = true;
      p1Choice = 0;
      p2Choice = 0;
      saveTime = currentTime;
      //stageSelect = 2;
      choose();
    }
    
}

function mousePressed() {
  if (stageSelect == 1 && mouseX>405 && mouseX<600 && mouseY>205 && mouseY<265){
    choose();
  }
  if (stageSelect == 1 && mouseX>285 && mouseX<709 && mouseY>300 && mouseY<350){
    Instr();
  }
  if (stageSelect == 1 && mouseX>380 && mouseX<630 && mouseY>404 && mouseY<445){
    choose();
  }
  if (stageSelect == 1 && mouseX>446 && mouseX<540 && mouseY>480 && mouseY<530){
    //exit();
  }
  if (stageSelect == 0 && mouseX>446 && mouseX<540 && mouseY>500 && mouseY<550){
    MainMenu();
  }
}

