class Player {
    PVector loc = new PVector(SCREENHEIGHT/2, SCREENWIDTH/2);
    PVector vel = new PVector(0, 0);

    int speed;
    
    int height;
    int width; 

    boolean moveLeft;
    boolean moveRight;
    boolean moveUp;
    boolean moveDown;


    Player(int height, int width){
        this.height = height;
        this.width = width;
        this.speed = 2;
    }

    public void draw() {
        ellipse(loc.x, loc.y, width, height);
    }

    public void move() {
        if (moveLeft && loc.x > 0) {
            loc.x = loc.x - speed;
        } 

        if (moveRight && loc.x < SCREENWIDTH + width) {
            loc.x = loc.x + speed;
        }

        if (moveUp && loc.y > 0) {
            loc.y = loc.y - speed;
        }

        if (moveDown && loc.y < SCREENHEIGHT + height) {
            loc.y = loc.y + speed;
        }
    }

    public void ifKeyPressed() {
        if (keyCode == LEFT) {
            moveLeft = true;
        } else if (keyCode == RIGHT) {
            moveRight = true;
        } else if (keyCode == UP) {
            moveUp = true;
        } else if (keyCode == DOWN) {
            moveDown = true;
        }
    }

    public void ifKeyReleased() {
        if (keyCode == LEFT) {
            moveLeft = false;
        } else if (keyCode == RIGHT) {
            moveRight = false;
        } else if (keyCode == UP) {
            moveUp = false;
        } else if (keyCode == DOWN) {
            moveDown = false;
        }
    }

    public PVector getPos() {
        return this.loc;
    }


}