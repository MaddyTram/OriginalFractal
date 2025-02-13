public void setup() {
  size(500, 500);
  rectMode(CENTER);
}

public void draw() {
  background(0);
  myFractal(250, 250, 400);
}

public void myFractal(int x, int y, int size) {
  rect(x, y, size, size);
  if(size > 5) {
    stroke(#03F9FF);
    noFill();
    myFractal(x - 50, y, size/2);
    stroke(#FA00F6);
    myFractal(x + 50, y, size/2);
    stroke(#8400FA);
    myFractal(x, y - 50, size/2);
    myFractal(x, y + 50, size/2);
  }
}
