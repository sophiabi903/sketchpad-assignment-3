//Assignment 3

float slideY = 420;
float thick;
int clearcolA;
int clearcolB;
int clearcolC;
color pink=0;
color macaroni=100;
color flavescent=200;
color teal=230;
color sky=255;
color drawcolour=0;
float tx;
float ty;
color pinkln;
color macln;
color flavln;
color tealn;
color skyln;
color cc;
color cc2;
color erase;
color sliderfill;
PImage lemon;
PImage flower;
int tool=1; //does not affect changes in mouseReleased
color sb;
color sl;
float thickly;
int indicator=1;
void setup () {
  flower=loadImage("simpleflower.png");
  lemon=loadImage("orangle.png");
  size (600, 600);
  background (255,219,247);
    fill(255);
  stroke(0);
  strokeWeight(1);
  rect (90, 20, 490, 500);//canvas parameters: (90, 20) (580, 20) (90, 520) (580, 520)

}                          


void draw () {

  imageMode (CENTER);
  //draw line
  stroke (drawcolour);
  strokeWeight (thick);
if (mousePressed && tool==1) { line (mouseX, mouseY, pmouseX, pmouseY); }
if (mousePressed && mouseX>90 && mouseX<580 && mouseY>20 && mouseY<520 && tool==2) {image (flower, mouseX, mouseY, thickly, thickly); }
if (mousePressed &&  mouseX>90 && mouseX<580 && mouseY>20 && mouseY<520 && tool == 3) {image (lemon, mouseX, mouseY, thickly, thickly);}
  //walls
  strokeWeight(0);
  fill(255,219,247);
  stroke(255,219,247);
  rect (0, 0, 90, 600);
  rect(0,0,600,20);
  rect(0,520,600,80);
  rect (580, 0, 20, 600);
  stroke (0);
  strokeWeight(2);
  line (90, 20, 580, 20);
  line (90, 520, 580, 520);
  line (90, 20, 90, 520);
  line (580, 20, 580, 520);
  //clear button
 
  fill(clearcolA, clearcolB,clearcolC);
  rect (520, 545, 50, 30);
  fill (0);
  textAlign (CENTER, CENTER);
  text ("CLEAR", 545, 560);
  
  //thickness slider
  fill (sliderfill);
  rect (20, 320, 50, 200);
  stroke(0);
  line (45, 340, 45, 500);
  fill(255);
  ellipse (45, slideY, 25, 25);
  if (mouseX>20 && mouseX<70 && mouseY>320 && mouseY<520) {sliderfill=#DBBCF2;}
  else {sliderfill=#FFE5FF;}
  if (mouseX>20 && mouseX<70 && mouseY>320 && mouseY<520 && mousePressed) {slideY=mouseY;}
 
  
  if (slideY<=340) {slideY=340;}
  if (slideY>=500) {slideY=500;}
  
  
  thick = map (slideY, 340, 500, 1, 20);
  thickly = map (slideY, 340, 500, 20, 90);
  strokeWeight (2);
  stroke(pinkln);
  fill(pink);
  rect (15, 50, 60, 30);
  stroke (macln);
  fill (macaroni);
  rect (15, 100, 60, 30);
  stroke (flavln);
  fill (flavescent);
  rect (15, 150, 60, 30);
  fill (teal);
  stroke(tealn);
  rect (15, 200, 60, 30);
  fill (sky);
  stroke(skyln);
  rect (15, 250, 60, 30);
  fill(erase);
  text ("ERASE", 43, 265);
  //Indicator
   if (indicator==1) {fill (255);
  stroke(0);
 ellipse (45, 560, 40, 40);
 fill (drawcolour);
 stroke(drawcolour);
 ellipse (45, 560, tx, tx); }
 
 if (indicator==2) {fill (255);
  stroke(0);
 ellipse (45, 560, 40, 40);
 image (flower, 46, 560, 25, 25); }
 
 if (indicator==3) {fill (255);
  stroke(0);
 ellipse (45, 560, 40, 40);
 image (lemon, 46, 560, 25, 25); }
 tx = map (slideY, 340, 500, 0.5, 20);
 
 
 //colour change button
 stroke (0);
fill (cc);
 ellipse (30, 25, 20, 20);
 fill(cc2);
 ellipse (60, 25, 20, 20);
 fill (0);
 text ("1", 31, 23);
 text ("2", 61, 23);
 


 
   if (dist(mouseX, mouseY, 30, 25) <=20) {cc=#DBBCF2;}
  else {cc=255;}
  if (dist(mouseX,mouseY,60,25) <=20) {cc2=#DBBCF2;}
  else {cc2=255;}
  
  if (mouseX>15 && mouseX<75 && mouseY>50 && mouseY<80) {pinkln=#FF12FC;}
  else {pinkln=0;}
  if (mouseX>15 && mouseX<75 && mouseY>100 && mouseY<130) {macln=#FF12FC;}
  else {macln=0;}
  if (mouseX>15 && mouseX<75 && mouseY>150 && mouseY<180) {flavln=#FF12FC;}
  else {flavln=0;}
    if (mouseX>15 && mouseX<75 && mouseY>200 && mouseY<230) {tealn=#FF12FC;}
  else {tealn=0;}
    if (mouseX>15 && mouseX<75 && mouseY>250 && mouseY<280) {skyln=#FF12FC;}
  else {skyln=0;}

  
 
 
  //clear button glow
  if (mouseX>520 && mouseX<570 && mouseY>545 && mouseY<575) { clearcolA=233; clearcolB=202; clearcolC=250;}
  else {clearcolA=255; clearcolB=255; clearcolC=255;}
 
 if (mouseX>155 && mouseX<208 && mouseY>535 && mouseY<585) {sb=#970FFA;}
 else {sb=0;}
  
  if (mouseX>363.5 && mouseX<416.5 && mouseY>534 && mouseY<584) {sl=#970FFA;}
  else {sl=0;}
  
 fill (255);
  stroke(sb);
  rect (155, 535, 53, 50);
  stroke (sl);
  rect (363.5, 534, 53, 50);
  image (flower, 181.5, 560, 43, 40);
  image (lemon, 390, 560, 43, 43);
  
}
  
  void mouseReleased () {
    //clear button
    //if (dist(mouseX, mouseY, 555, mouseY) <= 25 && dist(mouseX, mouseY, mouseX, 560) <=15) { fill(255);
  if (mouseX>520 && mouseX<570 && mouseY>545 && mouseY<575) {fill(255); 
  stroke(0); strokeWeight(2); rect (90, 20, 490, 500); }
  if (mouseX>15 && mouseX<75 && mouseY>50 && mouseY<80) {drawcolour = pink; tool=1; indicator=1;}
  if (mouseX>15 && mouseX<75 && mouseY>100 && mouseY<130) {drawcolour = macaroni; tool=1; indicator=1;}
  if (mouseX>15 && mouseX<75 && mouseY>150 && mouseY<180) {drawcolour = flavescent; tool=1; indicator=1;}
  if (mouseX>15 && mouseX<75 && mouseY>200 && mouseY <230) {drawcolour =teal; tool=1; indicator=1;}
  if (mouseX>15 && mouseX<75 && mouseY>250 && mouseY < 280) {drawcolour = sky; tool=1; indicator=1;}

  
  //colour change
  if (dist(mouseX, mouseY, 30, 25)<=20) {pink=0; macaroni=100; flavescent=200; teal=230; sky=255; erase=0;}
  if (dist(mouseX, mouseY, 60, 25) <=20) {pink=#ed8cba; macaroni=#fbb48c;flavescent=#f8e491; erase=#9abfd6;
  teal=#8be7b9; sky=#9abfd6; }
  
  //sticker button
  if (mouseX>155 && mouseX<208 && mouseY>535 && mouseY<585) {tool=2; drawcolour=255; indicator=2;}
  if (mouseX>363.5 && mouseX<416.5 && mouseY>534 && mouseY<584) {tool=3; indicator=3;}
  
    }
    

    
    
