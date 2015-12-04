//one other function

void setup() {
  size(1000, 800);
  noStroke();
  smooth();
  frameRate(30);
  rectMode(CENTER);
}
void draw() {
  background(0);
  square();
  circle();
}

void square() {
  fill(0, 0, 200);
  rect(width/2, height/2, 50, 50);
}

void circle() {
  fill(100); //temp fill
  ellipse(mouseX, mouseY, 30, 30);
}