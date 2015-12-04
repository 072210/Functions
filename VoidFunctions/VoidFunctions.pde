//one other function
//int fillColour;
float R, G, B;
PImage lockon;

void setup() {
  size(1000, 800);
  noStroke();
  smooth();
  frameRate(30);
  rectMode(CENTER);
  imageMode(CENTER);
  //fillColour = 0;
  R = 255;
  G = 255;
  B = 255;
  lockon = loadImage("221d55bdd1d524b70447e61818d0868582ed082f_medium.jpg");
}
void draw() {
  background(0);
  //colour();
  square();
  fill(R, G, B);
  circle(mouseX, mouseY);
  if (mousePressed) {
    clericBeast(width - mouseX, height - mouseY);
  }
}

void square() {
  fill(0, 0, 200);
  rect(width/2, height/2, 50, 50);
}

void circle(float x, float y) {
  ellipse(x, y, 30, 30);
}

void clericBeast(float x, float y) {
  image(lockon, x, y);
}

/**
 void colour() {
 if (fillColour == 0) {  //red
 R = 255;
 G = 0;
 B = 0;
 } else if (fillColour == 1) {  //orange
 R = 219;
 G = 128;
 B = 0;
 } else if (fillColour == 2) {  //yellow
 R = 255;
 G = 238;
 B = 0;
 } else if (fillColour == 3) {  //green
 R = 0;
 G = 200;
 B = 0;
 } else if (fillColour == 4) {  //blue
 R = 0;
 G = 0;
 B = 255;
 } else if (fillColour == 5) {  //purple
 R = 255;
 G = 0;
 B = 255;
 } else if (fillColour == 6) {  //white
 R = 255;
 G = 255;
 B = 255;
 }
 }
 
 void mousePressed() {
 fillColour = fillColour++;
 if (fillColour > 6) {
 fillColour = 0;
 }
 }
 **/