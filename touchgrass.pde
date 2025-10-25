int SCREENHEIGHT = 640;
int SCREENWIDTH = 360;

public void settings() {
  size(SCREENHEIGHT, SCREENWIDTH);
}

public void draw() {

  Player p = new Player(50, 30);
  background(0);
  stroke(255);
  strokeWeight(2);
  fill(127);
  p.draw();

}
