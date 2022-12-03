class Asteroids extends Floater{
  private double rotSpeed; //randomly + or -
  public Asteroids(){
    rotSpeed = (int)(Math.random()*2)-1;
    corners = 6;
    xCorners = new int[]{0,8,10,-2,-8,-5};
    yCorners = new int[]{8,5,-1,-7,-2,6};
    myColor = color(255);
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*2);
    myYspeed = (int)(Math.random()*2);
    myPointDirection = (int)(Math.random()*360);
  } 
    public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myXspeed = x;
  }
  public double getDirectionX() {
    return myXspeed;
  }
  public void setDirectionY(double y) {
    myYspeed = y;
  }
  public double getDirectionY() {
    return myYspeed;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public void move(){
    turn(rotSpeed); 
    super.move();
  } 
} 
