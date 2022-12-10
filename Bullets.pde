class Bullets extends Floater{
public Bullets(Spaceship ship){
  myCenterX = ship.getX();
  myCenterY = ship.getY();
  myPointDirection = ship.getPointDirection();
  accelerate(0.6);
  myColor = color(255,0,0);
  }
  public void show(){
    ellipse((int)myCenterX,(int)myCenterY,5,5);
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
}
