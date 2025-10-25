int SCREENHEIGHT = 640;
int SCREENWIDTH = 360;

Player p = new Player(30, 30);;

public void settings() {
  size(SCREENHEIGHT, SCREENWIDTH);
}

public void setup() {

}


public void draw() {

  background(0);
  stroke(255);
  strokeWeight(2);
  fill(127);
  p.move();
  p.draw();

}

void keyPressed() {
  p.ifKeyPressed();
} 

void keyReleased() {
  p.ifKeyReleased();
}
