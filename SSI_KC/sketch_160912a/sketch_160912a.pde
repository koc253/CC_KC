//Triforce, by Kayhan ''KC'' Celik
size(1080, 720);

background(47, 103,18);
stroke (0, 0, 0);
strokeWeight (20);
rect(200, 100, 680, 520);

fill(224,224,26);
stroke (0, 0, 0);
strokeWeight (33);
triangle(540, 160, 320, 520, 790, 520);

fill(255,255,255);
stroke (0, 0, 0);
strokeWeight (6);
triangle(445, 340, 640, 340, 540, 500);

fill(19,71,157);
arc(0, 0,300, 300, 0, HALF_PI);
ellipse(0,720,300,300);
ellipse(1080,720,300,300);
ellipse(1080,0,300,300);

stroke(211,0,0);
line(240, 0, 0, 240);
line(0, 480,240 ,720);
line(840, 0, 1080, 240);
line(1080,480,840, 720);