class Player {
    PVector loc = new PVector(SCREENHEIGHT/2, SCREENWIDTH/2);
    PVector vel = new PVector(0, 0);
    
    int height;
    int width; 

    boolean moveLeft;
    boolean moveRight;
    boolean moveUp;
    boolean moveDown;


    Player(int height, int width){
        this.height = height;
        this.width = width;
    }

    public void draw() {
        ellipse(loc.x, loc.y, width, height);
    }

    public void ifKeyPressed() {
        if (keyCode == LEFT) {
            moveLeft = true;
        } else if (keyCode == RIGHT) {
            moveRIght = true;
        }
    }


}