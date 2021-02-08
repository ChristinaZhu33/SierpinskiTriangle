  public void setup(){
    size(400, 400);
  }
  public void draw(){
    background (0);
    sierpinski(0,400,400);
  }
  public void mouseDragged(){ //optional

  }
  public void sierpinski(int x, int y, int len) {
    if (len <=20) {
    stroke(255);
    strokeWeight(2);
    triangle(x, y, x+len, y, x+len/2, y-len);
  }  else {
    fill(255, 92, 183);
    sierpinski(x, y, len/2);
    fill(183, 255, 92);
    sierpinski(x+(len/2), y, len/2);
    fill(92, 183, 255);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
  }
