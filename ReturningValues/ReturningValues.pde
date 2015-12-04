boolean blargh;
float theta = 0;
float thetaStart = 0;
float circleSize = 21;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(1400, 800);
}

void draw() {
  theta = thetaStart;
  background(0);
  stroke(3);
  println(sin(theta));
  if (blargh) {
    for (int x = 0; x < width; x += circleSize - 20) {
      noStroke();
      fill(map(x, 0, width, 0, 360), 100, 100, 100);
      float y = map(tan(theta), PI/2*-1, PI/2, 0, height);
      ellipse(x, y, circleSize/4, circleSize/4);
      fill(map(x, 0, width, 200, 360), 100, 100, 10);
      float z = map(sin(theta), -1, 1, 0, height);
      ellipse(width - x, height - z, circleSize * 2, circleSize * 2);
      theta += .3;
    }  
    if (blargh == false) {
      //thing that will be math function
    }
  }
  thetaStart += .005;
}

void mathThing() {
  //math to be here
}

void mousePressed() {
  blargh = !blargh;
}